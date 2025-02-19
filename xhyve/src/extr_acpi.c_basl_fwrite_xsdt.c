
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EFFLUSH (int *) ;
 int EFPRINTF (int *,char*,...) ;
 scalar_t__ FADT_OFFSET ;
 scalar_t__ HPET_OFFSET ;
 scalar_t__ MADT_OFFSET ;
 scalar_t__ MCFG_OFFSET ;
 scalar_t__ basl_acpi_base ;
 int errno ;

__attribute__((used)) static int
basl_fwrite_xsdt(FILE *fp)
{
 int err;

 err = 0;

 EFPRINTF(fp, "/*\n");
 EFPRINTF(fp, " * bhyve XSDT template\n");
 EFPRINTF(fp, " */\n");
 EFPRINTF(fp, "[0004]\t\tSignature : \"XSDT\"\n");
 EFPRINTF(fp, "[0004]\t\tTable Length : 00000000\n");
 EFPRINTF(fp, "[0001]\t\tRevision : 01\n");
 EFPRINTF(fp, "[0001]\t\tChecksum : 00\n");
 EFPRINTF(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
 EFPRINTF(fp, "[0008]\t\tOem Table ID : \"BVXSDT  \"\n");
 EFPRINTF(fp, "[0004]\t\tOem Revision : 00000001\n");

 EFPRINTF(fp, "[0004]\t\tAsl Compiler ID : \"xxxx\"\n");
 EFPRINTF(fp, "[0004]\t\tAsl Compiler Revision : 00000000\n");
 EFPRINTF(fp, "\n");


 EFPRINTF(fp, "[0004]\t\tACPI Table Address 0 : 00000000%08X\n",
     basl_acpi_base + MADT_OFFSET);
 EFPRINTF(fp, "[0004]\t\tACPI Table Address 1 : 00000000%08X\n",
     basl_acpi_base + FADT_OFFSET);
 EFPRINTF(fp, "[0004]\t\tACPI Table Address 2 : 00000000%08X\n",
     basl_acpi_base + HPET_OFFSET);
 EFPRINTF(fp, "[0004]\t\tACPI Table Address 3 : 00000000%08X\n",
     basl_acpi_base + MCFG_OFFSET);

 EFFLUSH(fp);

 return (0);

err_exit:
 return (errno);
}
