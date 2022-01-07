
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uvlong ;
typedef int ulong ;
typedef int DwarfBuf ;
 int TAddress ;
 int TConstant ;
 int TReference ;
 int dwarfget1 (int *) ;
 int dwarfget128 (int *) ;
 int dwarfget128s (int *) ;
 int dwarfget2 (int *) ;
 int dwarfget4 (int *) ;
 int dwarfget8 (int *) ;
 int dwarfgetaddr (int *) ;
 int werrstr (char*) ;

__attribute__((used)) static int
getulong(DwarfBuf *b, int form, ulong unit, ulong *u, int *type)
{
    static int nbad;
    uvlong uv;

    switch(form){
    default:
        return -1;


    case 140:
        *type = TAddress;
        *u = dwarfgetaddr(b);
        return 0;


    case 131:

        *type = TReference;
        *u = dwarfgetaddr(b);
        return 0;
    case 135:
        *u = dwarfget1(b);
        goto relativeref;
    case 134:
        *u = dwarfget2(b);
        goto relativeref;
    case 133:
        *u = dwarfget4(b);
        goto relativeref;
    case 132:
        *u = dwarfget8(b);
        goto relativeref;
    case 130:
        *u = dwarfget128(b);
    relativeref:
        *u += unit;
        *type = TReference;
        return 0;


    case 139:
        *u = dwarfget1(b);
        goto constant;
    case 138:
        *u = dwarfget2(b);
        goto constant;
    case 137:
        *u = dwarfget4(b);
        goto constant;
    case 136:
        uv = dwarfget8(b);
        *u = uv;
        if(uv != *u && ++nbad == 1)
            werrstr("dwarf: truncating 64-bit attribute constants");
        goto constant;
    case 129:
        *u = dwarfget128s(b);
        goto constant;
    case 128:
        *u = dwarfget128(b);
    constant:
        *type = TConstant;
        return 0;
    }
}
