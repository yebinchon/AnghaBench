
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tgl_message {TYPE_1__* reply_markup; } ;
struct TYPE_2__ {size_t rows; int* row_start; int * buttons; } ;


 int assert (char*) ;
 char* strdup (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

int complete_spec_message_answer (struct tgl_message *M, int index, const char *text, int len, char **R) {
  if (!M || !M->reply_markup || !M->reply_markup->rows) {
    *R = ((void*)0);
    return -1;
  }
  index ++;

  int total = M->reply_markup->row_start[M->reply_markup->rows];
  while (index < total && strncmp (M->reply_markup->buttons[index], text, len)) {
    index ++;
  }

  if (index < total) {
    *R = strdup (M->reply_markup->buttons[index]);
    assert (*R);
    return index;
  } else {
    *R = ((void*)0);
    return -1;
  }
}
