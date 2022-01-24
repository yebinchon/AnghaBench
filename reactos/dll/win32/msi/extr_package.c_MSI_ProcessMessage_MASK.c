#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {char* LastAction; char* LastActionTemplate; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int INSTALLMESSAGE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
#define  INSTALLMESSAGE_ACTIONDATA 136 
#define  INSTALLMESSAGE_ACTIONSTART 135 
#define  INSTALLMESSAGE_COMMONDATA 134 
#define  INSTALLMESSAGE_ERROR 133 
#define  INSTALLMESSAGE_FATALEXIT 132 
#define  INSTALLMESSAGE_INFO 131 
#define  INSTALLMESSAGE_OUTOFDISKSPACE 130 
#define  INSTALLMESSAGE_USER 129 
#define  INSTALLMESSAGE_WARNING 128 
 int MSIERR_ACTIONSTART ; 
 int MSIERR_COMMONDATA ; 
 int MSIERR_INSTALLERROR ; 
 int MSI_NULL_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int const,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  szEmpty ; 

INT FUNC14( MSIPACKAGE *package, INSTALLMESSAGE eMessageType, MSIRECORD *record )
{
    switch (eMessageType & 0xff000000)
    {
    case INSTALLMESSAGE_FATALEXIT:
    case INSTALLMESSAGE_ERROR:
    case INSTALLMESSAGE_WARNING:
    case INSTALLMESSAGE_USER:
    case INSTALLMESSAGE_INFO:
    case INSTALLMESSAGE_OUTOFDISKSPACE:
        if (FUNC1(record, 1) != MSI_NULL_INTEGER)
        {
            /* error message */

            LPWSTR template;
            LPWSTR template_rec = NULL, template_prefix = NULL;
            int error = FUNC1(record, 1);

            if (FUNC2(record, 0))
            {
                if (error >= 32)
                {
                    template_rec = FUNC8(package->db, error);

                    if (!template_rec && error >= 2000)
                    {
                        /* internal error, not localized */
                        if ((template_rec = (LPWSTR) FUNC4(error)))
                        {
                            FUNC3(record, 0, template_rec);
                            FUNC0(package, INSTALLMESSAGE_INFO, record);
                        }
                        template_rec = FUNC8(package->db, MSIERR_INSTALLERROR);
                        FUNC3(record, 0, template_rec);
                        FUNC0(package, eMessageType, record);
                        FUNC7(template_rec);
                        return 0;
                    }
                }
            }
            else
                template_rec = FUNC6(record, 0);

            template_prefix = FUNC8(package->db, eMessageType >> 24);
            if (!template_prefix) template_prefix = FUNC12(szEmpty);

            if (!template_rec)
            {
                /* always returns 0 */
                FUNC3(record, 0, template_prefix);
                FUNC0(package, eMessageType, record);
                FUNC7(template_prefix);
                return 0;
            }

            template = FUNC5((FUNC13(template_rec) + FUNC13(template_prefix) + 1) * sizeof(WCHAR));
            if (!template) return ERROR_OUTOFMEMORY;

            FUNC11(template, template_prefix);
            FUNC10(template, template_rec);
            FUNC3(record, 0, template);

            FUNC7(template_prefix);
            FUNC7(template_rec);
            FUNC7(template);
        }
        break;
    case INSTALLMESSAGE_ACTIONSTART:
    {
        WCHAR *template = FUNC8(package->db, MSIERR_ACTIONSTART);
        FUNC3(record, 0, template);
        FUNC7(template);

        FUNC7(package->LastAction);
        FUNC7(package->LastActionTemplate);
        package->LastAction = FUNC6(record, 1);
        if (!package->LastAction) package->LastAction = FUNC12(szEmpty);
        package->LastActionTemplate = FUNC6(record, 3);
        break;
    }
    case INSTALLMESSAGE_ACTIONDATA:
        if (package->LastAction && package->LastActionTemplate)
        {
            static const WCHAR template_s[] =
                {'{','{','%','s',':',' ','}','}','%','s',0};
            WCHAR *template;

            template = FUNC5((FUNC13(package->LastAction) + FUNC13(package->LastActionTemplate) + 7) * sizeof(WCHAR));
            if (!template) return ERROR_OUTOFMEMORY;
            FUNC9(template, template_s, package->LastAction, package->LastActionTemplate);
            FUNC3(record, 0, template);
            FUNC7(template);
        }
        break;
    case INSTALLMESSAGE_COMMONDATA:
    {
        WCHAR *template = FUNC8(package->db, MSIERR_COMMONDATA);
        FUNC3(record, 0, template);
        FUNC7(template);
    }
    break;
    }

    return FUNC0(package, eMessageType, record);
}