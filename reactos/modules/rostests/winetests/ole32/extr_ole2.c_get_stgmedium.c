
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STGMEDIUM ;
typedef int CLIPFORMAT ;





 int create_dib (int *) ;
 int create_emf (int *) ;
 int create_mfpict (int *) ;
 int ok (int ,char*,int) ;

__attribute__((used)) static void get_stgmedium(CLIPFORMAT cfFormat, STGMEDIUM *stgmedium)
{
    switch (cfFormat)
    {
    case 130:
        create_dib(stgmedium);
        break;
    case 128:
        create_mfpict(stgmedium);
        break;
    case 129:
        create_emf(stgmedium);
        break;
    default:
        ok(0, "cf %x not implemented\n", cfFormat);
    }
}
