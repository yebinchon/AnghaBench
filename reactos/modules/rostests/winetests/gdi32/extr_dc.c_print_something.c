
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp_path ;
typedef int psadobe ;
typedef int di ;
typedef int buf ;
typedef int WORD ;
struct TYPE_3__ {int cbSize; char* lpszDocName; char* lpszOutput; scalar_t__ fwType; int * lpszDatatype; } ;
typedef int HDC ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DOCINFOA ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int ) ;
 int DOWNLOADHEADER ;
 int DeleteFileA (char*) ;
 int EndDoc (int ) ;
 int Escape (int ,int ,int ,char*,int *) ;
 int ExtEscape (int ,int ,int ,int *,int,char*) ;
 int GENERIC_READ ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int POSTSCRIPT_PASSTHROUGH ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 int StartDocA (int ,TYPE_1__*) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void print_something(HDC hdc)
{
    static const char psadobe[10] = "%!PS-Adobe";
    char buf[1024], *p;
    char temp_path[MAX_PATH], file_name[MAX_PATH];
    DOCINFOA di;
    DWORD ret;
    HANDLE hfile;

    GetTempPathA(sizeof(temp_path), temp_path);
    GetTempFileNameA(temp_path, "ps", 0, file_name);

    di.cbSize = sizeof(di);
    di.lpszDocName = "Let's dance";
    di.lpszOutput = file_name;
    di.lpszDatatype = ((void*)0);
    di.fwType = 0;
    ret = StartDocA(hdc, &di);
    ok(ret > 0, "StartDoc failed: %d\n", ret);

    strcpy(buf + 2, "\n% ===> before DOWNLOADHEADER <===\n");
    *(WORD *)buf = strlen(buf + 2);
    ret = Escape(hdc, POSTSCRIPT_PASSTHROUGH, 0, buf, ((void*)0));
    ok(ret == *(WORD *)buf, "POSTSCRIPT_PASSTHROUGH failed: %d\n", ret);

    strcpy(buf, "deadbeef");
    ret = ExtEscape(hdc, DOWNLOADHEADER, 0, ((void*)0), sizeof(buf), buf );
    ok(ret == 1, "DOWNLOADHEADER failed\n");
    ok(strcmp(buf, "deadbeef") != 0, "DOWNLOADHEADER failed\n");

    strcpy(buf + 2, "\n% ===> after DOWNLOADHEADER <===\n");
    *(WORD *)buf = strlen(buf + 2);
    ret = Escape(hdc, POSTSCRIPT_PASSTHROUGH, 0, buf, ((void*)0));
    ok(ret == *(WORD *)buf, "POSTSCRIPT_PASSTHROUGH failed: %d\n", ret);

    ret = EndDoc(hdc);
    ok(ret == 1, "EndDoc failed\n");

    hfile = CreateFileA(file_name, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, 0);
    ok(hfile != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    memset(buf, 0, sizeof(buf));
    ret = ReadFile(hfile, buf, sizeof(buf), &ret, ((void*)0));
    ok(ret, "ReadFile failed\n");
    CloseHandle(hfile);


    buf[sizeof(buf) - 1] = 0;
    p = buf;
    while (*p)
    {
        if (!(p[0] == 0x1b && p[1] == '%') && memcmp(p, "@PJL", 4) != 0)
            break;

        p = strchr(p, '\n');
        if (!p) break;

        while (*p == '\r' || *p == '\n') p++;
    }
    ok(p && !memcmp(p, psadobe, sizeof(psadobe)), "wrong signature: %.14s\n", p ? p : buf);

    DeleteFileA(file_name);
}
