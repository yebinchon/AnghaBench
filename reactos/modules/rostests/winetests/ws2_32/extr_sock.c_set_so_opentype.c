
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optval ;
typedef int LPVOID ;
typedef int BOOL ;


 int INVALID_SOCKET ;
 int SOL_SOCKET ;
 int SO_OPENTYPE ;
 scalar_t__ getsockopt (int ,int ,int ,int ,int*) ;
 int ok (int,char*) ;
 scalar_t__ setsockopt (int ,int ,int ,int ,int) ;

__attribute__((used)) static void set_so_opentype ( BOOL overlapped )
{
    int optval = !overlapped, newval, len = sizeof (int);

    ok ( setsockopt ( INVALID_SOCKET, SOL_SOCKET, SO_OPENTYPE,
                      (LPVOID) &optval, sizeof (optval) ) == 0,
         "setting SO_OPENTYPE failed\n" );
    ok ( getsockopt ( INVALID_SOCKET, SOL_SOCKET, SO_OPENTYPE,
                      (LPVOID) &newval, &len ) == 0,
         "getting SO_OPENTYPE failed\n" );
    ok ( optval == newval, "failed to set SO_OPENTYPE\n" );
}
