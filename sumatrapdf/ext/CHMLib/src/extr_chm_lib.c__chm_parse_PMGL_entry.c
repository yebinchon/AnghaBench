
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {int space; scalar_t__ length; scalar_t__ start; int path; } ;
typedef scalar_t__ UInt64 ;
typedef int UChar ;


 scalar_t__ CHM_MAX_PATHLEN ;
 int _chm_parse_UTF8 (int **,scalar_t__,int ) ;
 scalar_t__ _chm_parse_cword (int **) ;

__attribute__((used)) static int _chm_parse_PMGL_entry(UChar **pEntry, struct chmUnitInfo *ui)
{
    UInt64 strLen;


    strLen = _chm_parse_cword(pEntry);
    if (strLen > CHM_MAX_PATHLEN)
        return 0;


    if (! _chm_parse_UTF8(pEntry, strLen, ui->path))
        return 0;


    ui->space = (int)_chm_parse_cword(pEntry);
    ui->start = _chm_parse_cword(pEntry);
    ui->length = _chm_parse_cword(pEntry);
    return 1;
}
