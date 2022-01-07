
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int * LPCSTR ;
typedef int FOURCC ;
typedef int CHAR ;


 int ERR (char*,int ) ;
 int MMIO_TOUPPER ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debugstr_a (int *) ;
 int lstrcpynA (int *,int,int) ;
 int min (int,int) ;
 int mmioStringToFOURCCA (int *,int ) ;
 int strchr (int,char) ;
 int strlen (int) ;
 int strrchr (int *,char) ;

__attribute__((used)) static FOURCC MMIO_ParseExtA(LPCSTR szFileName)
{



    FOURCC ret = 0;


    LPSTR extEnd;
    LPSTR extStart;

    TRACE("(%s)\n", debugstr_a(szFileName));

    if (!szFileName)
 return ret;


    extStart = strrchr(szFileName,'.');

    if (!extStart) {
         ERR("No . in szFileName: %s\n", debugstr_a(szFileName));
    } else {
        CHAR ext[5];


        extEnd = strchr(extStart,'+');
        if (extEnd) {

            if (extEnd - extStart - 1 > 4)
                WARN("Extension length > 4\n");
            lstrcpynA(ext, extStart + 1, min(extEnd-extStart,5));

        } else {

            if (strlen(extStart) > 4) {
                WARN("Extension length > 4\n");
            }
            lstrcpynA(ext, extStart + 1, 5);
        }
        TRACE("Got extension: %s\n", debugstr_a(ext));


        ret = mmioStringToFOURCCA(ext, MMIO_TOUPPER);
    }
    return ret;
}
