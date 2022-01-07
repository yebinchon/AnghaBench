
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; } ;
typedef TYPE_1__ WNDCLASSW ;
typedef scalar_t__ ATOM ;


 char** ControlsList ;
 scalar_t__ GetClassInfoW (int *,char*,TYPE_1__*) ;
 scalar_t__ lstrcmpW (char*,char*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int trace (char*,scalar_t__) ;

void Test_ClassAtoms()
{
    ATOM atom;
    int i;
    WNDCLASSW cls;


    atom = GetClassInfoW(((void*)0), ControlsList[0], &cls);
    if (!atom)
    {
       skip( "No reference Atom\n" );
       return;
    }

    trace("First Control Class Atom 0x%x\n",atom);

    for (i = 0; i < 17; atom++ ,i++)
    {
        if (lstrcmpW(ControlsList[i],L"\0"))
        {
           ATOM test_atom = GetClassInfoW(((void*)0), ControlsList[i], &cls);

           if (test_atom)
           {
              ok(test_atom == atom, "%S class atom did not match %x:%x\n",ControlsList[i],test_atom,atom);
              ok(!lstrcmpW(cls.lpszClassName,ControlsList[i]),"GetClassName returned incorrect name\n");
           }
        }
    }
}
