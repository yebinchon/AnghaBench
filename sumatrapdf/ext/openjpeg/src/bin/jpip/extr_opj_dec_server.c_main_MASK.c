#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dec_server_record_t ;
typedef  int client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  initialisation_win32 ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 

int FUNC11(int argc, char *argv[])
{

    dec_server_record_t *server_record;
    client_t client;
    int port = 50000;
    int erreur;
    (void)erreur;

    if (argc > 1) {
        port = FUNC5(argv[1]);
    }

#ifdef _WIN32
    erreur = WSAStartup(MAKEWORD(2, 2), &initialisation_win32);
    if (erreur != 0) {
        fprintf(stderr, "Erreur initialisation Winsock error : %d %d\n", erreur,
                WSAGetLastError());
    } else {
        printf("Initialisation Winsock\n");
    }
#endif /*_WIN32*/

    server_record = FUNC8(port);

    while ((client = FUNC4(server_record)) != -1)
        if (!FUNC7(client, server_record)) {
            break;
        }

    FUNC10(&server_record);

#ifdef _WIN32
    if (WSACleanup() != 0) {
        printf("\nError in WSACleanup : %d %d", erreur, WSAGetLastError());
    } else {
        printf("\nWSACleanup OK\n");
    }
#endif

    return 0;
}