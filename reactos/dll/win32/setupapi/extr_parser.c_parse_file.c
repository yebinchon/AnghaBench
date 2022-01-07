
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_bom ;
struct line {scalar_t__ nb_fields; int first_field; } ;
struct inf_file {int strings_section; struct field* fields; void* strings; void* string_pos; } ;
struct field {int text; } ;
typedef int WCHAR ;
typedef int UINT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int CP_ACP ;
 int CP_UTF8 ;
 int Chicago ;
 int CreateFileMappingW (int ,int *,int ,int ,int,int *) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_WRONG_INF_STYLE ;
 int FILE_MAP_READ ;
 int GetFileSize (int ,int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int INF_STYLE_WIN4 ;
 void* MapViewOfFile (int ,int ,int ,int ,int) ;
 int MultiByteToWideChar (int,int ,char*,int,int*,int) ;
 int NtClose (int ) ;
 int PAGE_READONLY ;
 int RtlIsTextUnicode (void*,int,int *) ;
 int SetLastError (int) ;
 int Signature ;
 int UnmapViewOfFile (void*) ;
 int Version ;
 int Windows95 ;
 int WindowsNT ;
 struct line* find_line (struct inf_file*,int,int ) ;
 int find_section (struct inf_file*,int ) ;
 int free_inf_file (struct inf_file*) ;
 int memcmp (void*,int const*,int) ;
 int parse_buffer (struct inf_file*,int*,int*,int*) ;
 int strcmpiW (int ,int ) ;

__attribute__((used)) static struct inf_file *parse_file( HANDLE handle, UINT *error_line, DWORD style )
{
    void *buffer;
    DWORD err = 0;
    struct inf_file *file;

    DWORD size = GetFileSize( handle, ((void*)0) );
    HANDLE mapping = CreateFileMappingW( handle, ((void*)0), PAGE_READONLY, 0, size, ((void*)0) );
    if (!mapping) return ((void*)0);
    buffer = MapViewOfFile( mapping, FILE_MAP_READ, 0, 0, size );
    NtClose( mapping );
    if (!buffer) return ((void*)0);

    if (!(file = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*file) )))
    {
        err = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }




    if (!(file->strings = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) )))
    {
        err = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }
    file->string_pos = file->strings;
    file->strings_section = -1;

    if (!RtlIsTextUnicode( buffer, size, ((void*)0) ))
    {
        static const BYTE utf8_bom[3] = { 0xef, 0xbb, 0xbf };
        WCHAR *new_buff;
        UINT codepage = CP_ACP;
        UINT offset = 0;

        if (size > sizeof(utf8_bom) && !memcmp( buffer, utf8_bom, sizeof(utf8_bom) ))
        {
            codepage = CP_UTF8;
            offset = sizeof(utf8_bom);
        }

        if ((new_buff = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) )))
        {
            DWORD len = MultiByteToWideChar( codepage, 0, (char *)buffer + offset,
                                             size - offset, new_buff, size );
            err = parse_buffer( file, new_buff, new_buff + len, error_line );
            HeapFree( GetProcessHeap(), 0, new_buff );
        }
    }
    else
    {
        WCHAR *new_buff = buffer;

        if (*new_buff == 0xfeff)
            new_buff++;
        err = parse_buffer( file, new_buff, (WCHAR *)((char *)buffer + size), error_line );
    }

    if (!err)
    {
        int version_index = find_section( file, Version );
        if (version_index != -1)
        {
            struct line *line = find_line( file, version_index, Signature );
            if (line && line->nb_fields > 0)
            {
                struct field *field = file->fields + line->first_field;
                if (!strcmpiW( field->text, Chicago )) goto done;
                if (!strcmpiW( field->text, WindowsNT )) goto done;
                if (!strcmpiW( field->text, Windows95 )) goto done;
            }
        }
        if (error_line) *error_line = 0;
        if (style & INF_STYLE_WIN4) err = ERROR_WRONG_INF_STYLE;
    }

 done:
    UnmapViewOfFile( buffer );
    if (err)
    {
        if (file) free_inf_file( file );
        SetLastError( err );
        file = ((void*)0);
    }
    return file;
}
