
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int LPVOID ;


 int INVALID_SOCKET ;
 int SOL_SOCKET ;
 int SO_OPENTYPE ;
 int getsockopt (int ,int ,int ,int ,int*) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void check_so_opentype (void)
{
    int tmp = 1, len;
    len = sizeof (tmp);
    getsockopt ( INVALID_SOCKET, SOL_SOCKET, SO_OPENTYPE, (LPVOID) &tmp, &len );
    ok ( tmp == 0, "check_so_opentype: wrong startup value of SO_OPENTYPE: %d\n", tmp );
}
