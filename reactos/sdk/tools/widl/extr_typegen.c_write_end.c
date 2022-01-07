
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FC_END ;
 int FC_PAD ;
 int print_file (int *,int,char*,int ) ;

__attribute__((used)) static void write_end(FILE *file, unsigned int *tfsoff)
{
    if (*tfsoff % 2 == 0)
    {
        print_file(file, 2, "0x%x,\t/* FC_PAD */\n", FC_PAD);
        *tfsoff += 1;
    }
    print_file(file, 2, "0x%x,\t/* FC_END */\n", FC_END);
    *tfsoff += 1;
}
