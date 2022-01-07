
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsBool ;
typedef int FILE ;


 int FALSE ;
 int FatalError (char*,char const*,...) ;
 int TRUE ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (int const*,int,int ,int *) ;

cmsBool SaveMemoryBlock(const cmsUInt8Number* Buffer, cmsUInt32Number dwLen, const char* Filename)
{
    FILE* out = fopen(Filename, "wb");
    if (out == ((void*)0)) {
        FatalError("Cannot create '%s'", Filename);
        return FALSE;
    }

    if (fwrite(Buffer, 1, dwLen, out) != dwLen) {
        FatalError("Cannot write %ld bytes to %s", dwLen, Filename);
        return FALSE;
    }

    if (fclose(out) != 0) {
        FatalError("Error flushing file '%s'", Filename);
        return FALSE;
    }

    return TRUE;
}
