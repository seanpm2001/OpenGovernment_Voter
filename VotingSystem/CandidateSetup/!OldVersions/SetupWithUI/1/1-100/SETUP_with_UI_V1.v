// Start of script
/* GUI for setting up election candidates in an election
*/
ui.window(
    width: 2560
    height: 1440
    title: 'Candidate setup (sudo/administrator)'
    children: [
        ui.row(
            margin: ui.Margin{10, 10, 10, 10}
            children: [
                ui.column(
                    width: 1440
                    spacing: 13
                    children: [
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: 'First name'
                            text: &app.first_name
                       ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: 'Middle name'
                            text: &app.middle_name
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: 'Last name'
                            text: &app.last_name
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: 'Age'
                            integer: &app.int(10-18446744073709551615)
                            // For 128-bit machines (the 64 bit version is unnecessary long, why would you need the 128 bit version? Are you trying to elect the universe?
                            // integer: &app.int(10-340282366​920​938​463​463​374​607​431​768​211​455)
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: 'Political party (if applicable) if not applicable, leave blank and strike the enter key'
                            text: &app.stringPollPart(/Conf/Parties/Parties.xml)
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name is FOR: (supports)'
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="FOR")
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name is AGAINST: (doesn't support)'
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="AGAINST")
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name's campaign videos'
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="Videos"+"$CurrentCampaign")
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name campaign funding'
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="FUNDING.yaml")
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name is part of the' &or& '$Name is not part of any political parties' 
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="PARTISAN.toml")
                        ),
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name has not been convicted of any crimes' &or& `$Name has been convicted of crimes, such as` text: &app.stringPollPart[/Conf/Parties/Candidates/$NAME.xml&q="CRIMINAL_HISTORY.md") 
                            text: &app.stringPollPart(/Conf/Parties/Candidates/$NAME.xml&q="PARTISAN.toml")
                        ),                      
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name is part of current political controversies, such as: " + text: &app.stringPOllPart(/Conf/Parties/Candidates/$NAME.xml&q="Controversies.csv")
                        ),       
                        ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name was part of past political controversies, such as: " + text: &app.stringPOllPart(/Conf/Parties/Candidates/$NAME.xml&q="PastControversies.csv")
                        ),   
                       ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name once stood for: " + text: &app.stringPOllPart(/Conf/Parties/Candidates/$NAME.xml&q="PastSupport")
                        ),   
                       ui.textbox(
                            max_len: 500
                            width: 1440
                            placeholder: '$Name once stood against: " + text: &app.stringPOllPart(/Conf/Parties/Candidates/$NAME.xml&q="PastOpposition")
                        ),   
                        )]  
                    )]
                )]
            ])
        ])
    ])
)]
// Why the age of 10?
// This project needs to be futureproofed as much as possible. Maybe an average 2 year could be as intelligent as a College Graduate in some distant year.
/* File info
File type: V source file (*.v)
File version: 1 (2022, Thursday, July 14th at 1:10 am PST)
Line count (including blank lines and compiler line): 118
*/
// End of script
