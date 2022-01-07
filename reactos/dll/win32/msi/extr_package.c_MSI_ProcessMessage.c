
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {char* LastAction; char* LastActionTemplate; int db; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef char* LPWSTR ;
typedef int INT ;
typedef int INSTALLMESSAGE ;


 int ERROR_OUTOFMEMORY ;
 int MSIERR_ACTIONSTART ;
 int MSIERR_COMMONDATA ;
 int MSIERR_INSTALLERROR ;
 int MSI_NULL_INTEGER ;
 int MSI_ProcessMessageVerbatim (TYPE_1__*,int const,int *) ;
 int MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordIsNull (int *,int ) ;
 int MSI_RecordSetStringW (int *,int ,char*) ;
 int get_internal_error_message (int) ;
 char* msi_alloc (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msi_free (char*) ;
 char* msi_get_error_message (int ,int) ;
 int sprintfW (char*,char const*,char*,char*) ;
 int strcatW (char*,char*) ;
 int strcpyW (char*,char*) ;
 void* strdupW (int ) ;
 scalar_t__ strlenW (char*) ;
 int szEmpty ;

INT MSI_ProcessMessage( MSIPACKAGE *package, INSTALLMESSAGE eMessageType, MSIRECORD *record )
{
    switch (eMessageType & 0xff000000)
    {
    case 132:
    case 133:
    case 128:
    case 129:
    case 131:
    case 130:
        if (MSI_RecordGetInteger(record, 1) != MSI_NULL_INTEGER)
        {


            LPWSTR template;
            LPWSTR template_rec = ((void*)0), template_prefix = ((void*)0);
            int error = MSI_RecordGetInteger(record, 1);

            if (MSI_RecordIsNull(record, 0))
            {
                if (error >= 32)
                {
                    template_rec = msi_get_error_message(package->db, error);

                    if (!template_rec && error >= 2000)
                    {

                        if ((template_rec = (LPWSTR) get_internal_error_message(error)))
                        {
                            MSI_RecordSetStringW(record, 0, template_rec);
                            MSI_ProcessMessageVerbatim(package, 131, record);
                        }
                        template_rec = msi_get_error_message(package->db, MSIERR_INSTALLERROR);
                        MSI_RecordSetStringW(record, 0, template_rec);
                        MSI_ProcessMessageVerbatim(package, eMessageType, record);
                        msi_free(template_rec);
                        return 0;
                    }
                }
            }
            else
                template_rec = msi_dup_record_field(record, 0);

            template_prefix = msi_get_error_message(package->db, eMessageType >> 24);
            if (!template_prefix) template_prefix = strdupW(szEmpty);

            if (!template_rec)
            {

                MSI_RecordSetStringW(record, 0, template_prefix);
                MSI_ProcessMessageVerbatim(package, eMessageType, record);
                msi_free(template_prefix);
                return 0;
            }

            template = msi_alloc((strlenW(template_rec) + strlenW(template_prefix) + 1) * sizeof(WCHAR));
            if (!template) return ERROR_OUTOFMEMORY;

            strcpyW(template, template_prefix);
            strcatW(template, template_rec);
            MSI_RecordSetStringW(record, 0, template);

            msi_free(template_prefix);
            msi_free(template_rec);
            msi_free(template);
        }
        break;
    case 135:
    {
        WCHAR *template = msi_get_error_message(package->db, MSIERR_ACTIONSTART);
        MSI_RecordSetStringW(record, 0, template);
        msi_free(template);

        msi_free(package->LastAction);
        msi_free(package->LastActionTemplate);
        package->LastAction = msi_dup_record_field(record, 1);
        if (!package->LastAction) package->LastAction = strdupW(szEmpty);
        package->LastActionTemplate = msi_dup_record_field(record, 3);
        break;
    }
    case 136:
        if (package->LastAction && package->LastActionTemplate)
        {
            static const WCHAR template_s[] =
                {'{','{','%','s',':',' ','}','}','%','s',0};
            WCHAR *template;

            template = msi_alloc((strlenW(package->LastAction) + strlenW(package->LastActionTemplate) + 7) * sizeof(WCHAR));
            if (!template) return ERROR_OUTOFMEMORY;
            sprintfW(template, template_s, package->LastAction, package->LastActionTemplate);
            MSI_RecordSetStringW(record, 0, template);
            msi_free(template);
        }
        break;
    case 134:
    {
        WCHAR *template = msi_get_error_message(package->db, MSIERR_COMMONDATA);
        MSI_RecordSetStringW(record, 0, template);
        msi_free(template);
    }
    break;
    }

    return MSI_ProcessMessageVerbatim(package, eMessageType, record);
}
