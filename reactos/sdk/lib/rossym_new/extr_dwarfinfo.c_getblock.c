
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int data; int len; } ;
typedef int DwarfBuf ;
typedef TYPE_1__ DwarfBlock ;






 int dwarfget1 (int *) ;
 int dwarfget128 (int *) ;
 int dwarfget2 (int *) ;
 int dwarfget4 (int *) ;
 int dwarfgetnref (int *,int ) ;
 int nil ;

__attribute__((used)) static int
getblock(DwarfBuf *b, int form, DwarfBlock *bl)
{
    ulong n;

    switch(form){
    default:
        return -1;
    case 131:
        n = dwarfget128(b);
        goto copyn;
    case 130:
        n = dwarfget1(b);
        goto copyn;
    case 129:
        n = dwarfget2(b);
        goto copyn;
    case 128:
        n = dwarfget4(b);
    copyn:
        bl->data = dwarfgetnref(b, n);
        bl->len = n;
        if(bl->data == nil)
            return -1;
        return 0;
    }
}
