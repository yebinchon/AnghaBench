
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DCBlength; int BaudRate; int ByteSize; int StopBits; int Parity; } ;
typedef char TCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 char* APP_VERSION_STR ;
 int BUFSIZE ;
 int CLRDTR ;
 int CLRRTS ;
 scalar_t__ ClearCommError (scalar_t__,int*,int *) ;
 scalar_t__ CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int,int ,int *,int ,int ,int *) ;
 scalar_t__ EscapeCommFunction (scalar_t__,int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 int GetLastError () ;
 int MAX_PORTNAME_LEN ;
 int NOPARITY ;
 int ONESTOPBIT ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,int*,int,int *,int *) ;
 int SETDTR ;
 int SETRTS ;
 scalar_t__ SetCommState (scalar_t__,TYPE_1__*) ;
 scalar_t__ WriteFile (scalar_t__,int*,int,int*,int *) ;
 char* _T (char*) ;
 int dwNumRead ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,int*) ;

int main(int argc, char *argv[])
{
    CHAR txBuffer[BUFSIZE];
    CHAR rxBuffer[BUFSIZE];
    DWORD dwBaud = 9600;
    DWORD dwNumWritten;
    DWORD dwErrors;
    DCB dcb;
    BOOL bResult;
    HANDLE hPort;
    int i;
    int j;
    int k;
 int nPortNum = 1;

 TCHAR szPortName[MAX_PORTNAME_LEN];

    if (argc > 1) {

        sscanf(argv[1], "%d", &nPortNum);
    }
 sprintf(szPortName, _T("COM%d"), nPortNum);

    printf("Serial Port Test Application Version %s\n", APP_VERSION_STR);
    printf("Attempting to open serial port %d - %s\n", nPortNum, szPortName);
    hPort = CreateFile(szPortName,
                       GENERIC_READ|GENERIC_WRITE,
                       0,
                       ((void*)0),
                       OPEN_EXISTING,
                       0,
                       ((void*)0));

    if (hPort == (HANDLE)-1) {
        printf("ERROR: CreateFile() failed with result: %lx\n", (DWORD)hPort);
        return 1;
    }
    printf("CreateFile() returned: %lx\n", (DWORD)hPort);

    printf("Fiddling with DTR and RTS control lines...\n");
 for (i = 0; i < 100; i++) {
 bResult = EscapeCommFunction(hPort, SETDTR);
    if (!bResult) {
        printf("WARNING: EscapeCommFunction(SETDTR) failed: %lx\n", (DWORD)bResult);
    }
 bResult = EscapeCommFunction(hPort, SETRTS);
    if (!bResult) {
        printf("WARNING: EscapeCommFunction(SETRTS) failed: %lx\n", (DWORD)bResult);
    }
 for (j = 0; j < 1000; j++) {
  k *= j;
 }
 bResult = EscapeCommFunction(hPort, CLRDTR);
    if (!bResult) {
        printf("WARNING: EscapeCommFunction(CLRDTR) failed: %lx\n", (DWORD)bResult);
    }
 bResult = EscapeCommFunction(hPort, CLRRTS);
    if (!bResult) {
        printf("WARNING: EscapeCommFunction(CLRRTS) failed: %lx\n", (DWORD)bResult);
    }
 }
    printf("Getting the default line characteristics...\n");
 dcb.DCBlength = sizeof(DCB);
 if (!GetCommState(hPort, &dcb)) {
        printf("ERROR: failed to get the dcb: %ld\n", GetLastError());
        return 2;
    }
    printf("Setting the line characteristics to 9600,8,N,1\n");
    dcb.BaudRate = dwBaud;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.StopBits = ONESTOPBIT;

    bResult = SetCommState(hPort, &dcb);
    if (!bResult) {
        printf("ERROR: failed to set the comm state: %lx\n", (DWORD)bResult);
        return 3;
    }
 for (i = 0; i < BUFSIZE; i++) {
        txBuffer[i] = (CHAR)i;

        rxBuffer[i] = 0xFF;
    }
    printf("\n");
    printf("Writting transmit buffer to the serial port\n");
    bResult = WriteFile(hPort, txBuffer, BUFSIZE, &dwNumWritten, ((void*)0));
    if (!bResult) {
        printf("ERROR: failed to write to the serial port: %lx\n", (DWORD)bResult);
        return 4;
    }
    printf("WriteFile() returned: %lx, byteswritten: %lx\n", (DWORD)bResult, dwNumWritten);
    printf("Attempting to close the serial port\n");
    bResult = ClearCommError(hPort, &dwErrors, ((void*)0));
    printf("ClearCommError returned: %lx, dwErrors: %lx\n", (DWORD)bResult, dwErrors);
    bResult = CloseHandle(hPort);
    if (!bResult) {
        printf("ERROR: failed to close the serial port: %lx\n", (DWORD)bResult);
        return 6;
    }
    printf("Finished\n");
    return 0;
}
