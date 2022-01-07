
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman_code {int table; int tree; } ;


 int free (int ) ;
 int memset (struct huffman_code*,int ,int) ;

void rar_free_code(struct huffman_code *code)
{
    free(code->tree);
    free(code->table);
    memset(code, 0, sizeof(*code));
}
