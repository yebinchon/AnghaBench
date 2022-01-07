
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;
typedef int FILE ;


 int EOF ;
 int assert (int) ;
 TYPE_1__* block_File (int ,int) ;
 int block_Release (TYPE_1__*) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fputs (int ,int *) ;
 int memcmp (int ,int ,scalar_t__) ;
 int memset (int ,char,scalar_t__) ;
 int remove (char*) ;
 scalar_t__ strlen (int ) ;
 int text ;

__attribute__((used)) static void test_block_File(bool write)
{
    FILE *stream;
    int res;

    stream = fopen ("testfile.txt", "wb+e");
    assert (stream != ((void*)0));

    res = fputs (text, stream);
    assert (res != EOF);
    res = fflush (stream);
    assert (res != EOF);

    block_t *block = block_File(fileno(stream), write);
    fclose (stream);

    assert (block != ((void*)0));
    assert (block->i_buffer == strlen (text));
    assert (!memcmp (block->p_buffer, text, block->i_buffer));
    if (write)
        memset(block->p_buffer, 'A', block->i_buffer);
    block_Release (block);

    remove ("testfile.txt");
}
