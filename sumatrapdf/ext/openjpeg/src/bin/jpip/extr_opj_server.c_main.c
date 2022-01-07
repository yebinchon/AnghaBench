
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int server_record_t ;
typedef int QR_t ;
typedef scalar_t__ OPJ_BOOL ;


 scalar_t__ FCGI_Accept () ;
 int FCGI_stderr ;
 int FCGI_stdout ;
 int MAKEWORD (int,int) ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int QUIT_SIGNAL ;
 scalar_t__ WSACleanup () ;
 int WSAGetLastError () ;
 int WSAStartup (int ,int *) ;
 int end_QRprocess (int *,int **) ;
 scalar_t__ fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 int * init_JPIPserver (int,int ) ;
 int initialisation_win32 ;
 int local_log (int ,int ,scalar_t__,int ,int *,int *) ;
 int * parse_querystring (char*) ;
 scalar_t__ process_JPIPrequest (int *,int *) ;
 int send_responsedata (int *,int *) ;
 int stderr ;
 int stdin ;
 scalar_t__ strcmp (char*,int ) ;
 int terminate_JPIPserver (int **) ;

int main(void)
{
    server_record_t *server_record;
    server_record = init_JPIPserver(60000, 0);





    char query_string[128];
    while (fgets(query_string, 128, stdin) && query_string[0] != '\n')

    {
        QR_t *qr;
        OPJ_BOOL parse_status;





        if (strcmp(query_string, QUIT_SIGNAL) == 0) {
            break;
        }

        qr = parse_querystring(query_string);

        parse_status = process_JPIPrequest(server_record, qr);


        local_log(OPJ_TRUE, OPJ_TRUE, parse_status, OPJ_FALSE, qr, server_record);


        if (parse_status) {
            send_responsedata(server_record, qr);
        } else {
            fprintf(FCGI_stderr, "Error: JPIP request failed\n");
            fprintf(FCGI_stdout, "\r\n");
        }

        end_QRprocess(server_record, &qr);
    }

    fprintf(FCGI_stderr, "JPIP server terminated by a client request\n");

    terminate_JPIPserver(&server_record);
    return 0;
}
