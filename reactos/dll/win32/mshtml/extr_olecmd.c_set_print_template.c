
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstemplate ;
typedef int nsIPrintSettings ;
typedef int WCHAR ;
typedef int SYSTEMTIME ;
typedef scalar_t__ PRUnichar ;
typedef char* LPCWSTR ;
typedef int BOOL ;


 int GetDateFormatW (int ,int ,int *,int *,scalar_t__*,int) ;
 int GetLocalTime (int *) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int set_head_text (int *,scalar_t__*,int ,int) ;
 int strlenW (scalar_t__*) ;

__attribute__((used)) static void set_print_template(nsIPrintSettings *settings, LPCWSTR template, BOOL head)
{
    PRUnichar nstemplate[200];
    PRUnichar *p = nstemplate;
    LPCWSTR ptr=template;
    int pos=0;

    while(*ptr) {
        if(*ptr != '&') {
            *p++ = *ptr++;
            continue;
        }

        switch(*++ptr) {
        case '&':
            *p++ = '&';
            *p++ = '&';
            ptr++;
            break;
        case 'b':
            ptr++;
            *p = 0;
            set_head_text(settings, nstemplate, head, pos);
            p = nstemplate;
            pos++;
            break;
        case 'd': {
            SYSTEMTIME systime;
            GetLocalTime(&systime);
            GetDateFormatW(LOCALE_SYSTEM_DEFAULT, 0, &systime, ((void*)0), p,
                    sizeof(nstemplate)-(p-nstemplate)*sizeof(WCHAR));
            p += strlenW(p);
            ptr++;
            break;
        }
        case 'p':
            *p++ = '&';
            *p++ = 'P';
            ptr++;
            break;
        case 'P':
            *p++ = '?';
            ptr++;
            break;
        case 'u':
            *p++ = '&';
            *p++ = 'U';
            ptr++;
            break;
        case 'w':

            ptr++;
            break;
        default:
            *p++ = '&';
            *p++ = *ptr++;
        }
    }

    *p = 0;
    set_head_text(settings, nstemplate, head, pos);

    while(++pos < 3)
        set_head_text(settings, p, head, pos);
}
