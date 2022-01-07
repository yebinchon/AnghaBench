
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WPARAM ;


 int IDC_ST0 ;
 int PBM_SETPOS ;
 int SendDlgItemMessage (int ,int const,int ,int ,int ) ;
 int SetDlgItemText (int ,int const,char*) ;
 int dialog ;
 int free (char*) ;
 int progressCurr ;
 int progressGroup ;
 int progressScale ;
 char* vstrmake (int *,int ) ;

__attribute__((used)) static int
guiStep (va_list ap)
{
    const int pgID = IDC_ST0 + progressGroup * 2;
    char *str = vstrmake (((void*)0), ap);

    progressCurr++;
    SetDlgItemText (dialog, pgID, str);
    SendDlgItemMessage (dialog, pgID+1, PBM_SETPOS,
                        (WPARAM)(progressScale * progressCurr), 0);
    free (str);
    return 0;
}
