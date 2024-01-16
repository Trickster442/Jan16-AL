page 50801 controlStatementTable_Page
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = 50800;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Salary; Rec.Salary)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    tax: Decimal;
                begin
                    if Rec.Salary < 10000 then begin
                        tax := (5 * rec.Salary) / 100;
                        Message('Your tax is 5% and your tax amount is %1', tax);
                    end
                    else
                        if rec.Salary > 10000 then begin
                            if rec.Salary < 50000 then begin
                                tax := (10 * rec.Salary) / 100;
                                Message('Your tax is 10% your tax amount is %1', tax);
                            end
                            else
                                tax := (15 * rec.Salary) / 100;
                            Message('Your tax is 15% your tax amount is %1', tax);
                        end
                end;
            }
        }
    }

    var
        myInt: Integer;
}