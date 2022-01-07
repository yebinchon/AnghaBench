
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int escaped_tab ;
typedef int escaped_space ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,size_t) ;
 int memcmp (char const*,char const*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static const char* convert_input_data(const char *data, DWORD size, DWORD *new_size)
{
    static const char escaped_space[] = {'@','s','p','a','c','e','@'};
    static const char escaped_tab[] = {'@','t','a','b','@'};
    DWORD i, eol_count = 0;
    char *ptr, *new_data;

    for (i = 0; i < size; i++)
        if (data[i] == '\n') eol_count++;

    ptr = new_data = HeapAlloc(GetProcessHeap(), 0, size + eol_count + 1);

    for (i = 0; i < size; i++) {
        switch (data[i]) {
            case '\n':
                if (data[i-1] != '\r')
                    *ptr++ = '\r';
                *ptr++ = '\n';
                break;
            case '@':
                if (data + i + sizeof(escaped_space) - 1 < data + size
                        && !memcmp(data + i, escaped_space, sizeof(escaped_space))) {
                    *ptr++ = ' ';
                    i += sizeof(escaped_space) - 1;
                } else if (data + i + sizeof(escaped_tab) - 1 < data + size
                        && !memcmp(data + i, escaped_tab, sizeof(escaped_tab))) {
                    *ptr++ = '\t';
                    i += sizeof(escaped_tab) - 1;
                } else {
                    *ptr++ = data[i];
                }
                break;
            default:
                *ptr++ = data[i];
        }
    }
    *ptr = '\0';

    *new_size = strlen(new_data);
    return new_data;
}
