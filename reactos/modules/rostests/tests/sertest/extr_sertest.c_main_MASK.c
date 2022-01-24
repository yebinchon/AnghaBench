#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int DCBlength; int BaudRate; int ByteSize; int /*<<< orphan*/  StopBits; int /*<<< orphan*/  Parity; } ;
typedef  char TCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;
typedef  int CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char* APP_VERSION_STR ; 
 int BUFSIZE ; 
 int /*<<< orphan*/  CLRDTR ; 
 int /*<<< orphan*/  CLRRTS ; 
 scalar_t__ FUNC0 (scalar_t__,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MAX_PORTNAME_LEN ; 
 int /*<<< orphan*/  NOPARITY ; 
 int /*<<< orphan*/  ONESTOPBIT ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC6 (scalar_t__,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SETDTR ; 
 int /*<<< orphan*/  SETRTS ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC8 (scalar_t__,int*,int,int*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  dwNumRead ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int*) ; 

int FUNC13(int argc, char *argv[])
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
        //sscanf(argv[1], "%d", &dwBaud);
        FUNC12(argv[1], "%d", &nPortNum);
    }
	FUNC11(szPortName, FUNC9("COM%d"), nPortNum);

    FUNC10("Serial Port Test Application Version %s\n", APP_VERSION_STR);
    FUNC10("Attempting to open serial port %d - %s\n", nPortNum, szPortName);
    hPort = FUNC2(szPortName,
                       GENERIC_READ|GENERIC_WRITE,
                       0,     // exclusive
                       NULL,  // sec attr
                       OPEN_EXISTING,
                       0,     // no attributes
                       NULL); // no template

    if (hPort == (HANDLE)-1) {
        FUNC10("ERROR: CreateFile() failed with result: %lx\n", (DWORD)hPort);
        return 1;
    }
    FUNC10("CreateFile() returned: %lx\n", (DWORD)hPort);

    FUNC10("Fiddling with DTR and RTS control lines...\n");
	for (i = 0; i < 100; i++) {
	bResult = FUNC3(hPort, SETDTR);
    if (!bResult) {
        FUNC10("WARNING: EscapeCommFunction(SETDTR) failed: %lx\n", (DWORD)bResult);
    }
	bResult = FUNC3(hPort, SETRTS);
    if (!bResult) {
        FUNC10("WARNING: EscapeCommFunction(SETRTS) failed: %lx\n", (DWORD)bResult);
    }
	for (j = 0; j < 1000; j++) {
		k *= j;
	}
/*
#define CLRDTR	(6)
#define CLRRTS	(4)
#define SETDTR	(5)
#define SETRTS	(3)
#define SETXOFF	(1)
#define SETXON	(2)
#define SETBREAK	(8)
#define CLRBREAK	(9)
 */
	bResult = FUNC3(hPort, CLRDTR);
    if (!bResult) {
        FUNC10("WARNING: EscapeCommFunction(CLRDTR) failed: %lx\n", (DWORD)bResult);
    }
	bResult = FUNC3(hPort, CLRRTS);
    if (!bResult) {
        FUNC10("WARNING: EscapeCommFunction(CLRRTS) failed: %lx\n", (DWORD)bResult);
    }
	}
    FUNC10("Getting the default line characteristics...\n");
	dcb.DCBlength = sizeof(DCB);
	if (!FUNC4(hPort, &dcb)) {
        FUNC10("ERROR: failed to get the dcb: %ld\n", FUNC5());
        return 2;
    }
    FUNC10("Setting the line characteristics to 9600,8,N,1\n");
    dcb.BaudRate = dwBaud;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.StopBits = ONESTOPBIT;

    bResult = FUNC7(hPort, &dcb);
    if (!bResult) {
        FUNC10("ERROR: failed to set the comm state: %lx\n", (DWORD)bResult);
        return 3;
    }
	for (i = 0; i < BUFSIZE; i++) {
        txBuffer[i] = (CHAR)i;
        //printf(" %d ", txBuffer[i]);
        rxBuffer[i] = 0xFF;
    }
    FUNC10("\n");
    FUNC10("Writting transmit buffer to the serial port\n");
    bResult = FUNC8(hPort, txBuffer, BUFSIZE, &dwNumWritten, NULL);
    if (!bResult) {
        FUNC10("ERROR: failed to write to the serial port: %lx\n", (DWORD)bResult);
        return 4;
    }
    FUNC10("WriteFile() returned: %lx, byteswritten: %lx\n", (DWORD)bResult, dwNumWritten);
#if 0
	printf("Attempting to read %d bytes from the serial port\n", BUFSIZE);
    bResult = ReadFile(hPort, rxBuffer, BUFSIZE, &dwNumRead, NULL);
	if (!bResult) {
        printf("ERROR: failed to read from the serial port: %lx\n", (DWORD)bResult);
        return 5;
    }
    printf("ReadFile() returned: %lx, bytesread: %lx\n", (DWORD)bResult, dwNumRead);
    for (i = 0; i < BUFSIZE; i++) {
        printf(" %d ",rxBuffer[i]);
    }
#endif
    FUNC10("Attempting to close the serial port\n");
    bResult = FUNC0(hPort, &dwErrors, NULL);
    FUNC10("ClearCommError returned: %lx, dwErrors: %lx\n", (DWORD)bResult, dwErrors);
    bResult = FUNC1(hPort);
    if (!bResult) {
        FUNC10("ERROR: failed to close the serial port: %lx\n", (DWORD)bResult);
        return 6;
    }
    FUNC10("Finished\n");
    return 0;
}