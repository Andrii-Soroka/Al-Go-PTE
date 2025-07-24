// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!
// Test

pageextension 50000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        customer: Record Customer;
        lblHelloWorld: Label 'Hello World';

    begin
        Message(lblHelloWorld);
        if customer.FindFirst() then
            repeat
                Message('Customer No: %1, Name: %2', customer."No.", customer.Name);
            until customer.Next() = 0;

    end;
}

