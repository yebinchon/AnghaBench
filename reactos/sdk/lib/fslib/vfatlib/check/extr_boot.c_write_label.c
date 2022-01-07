
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOS_FS ;


 int strlen (char*) ;
 int write_boot_label (int *,char*) ;
 int write_volume_label (int *,char*) ;

void write_label(DOS_FS * fs, char *label)
{
    int l = strlen(label);

    while (l < 11)
 label[l++] = ' ';

    write_boot_label(fs, label);
    write_volume_label(fs, label);
}
