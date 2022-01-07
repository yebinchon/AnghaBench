
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menu_item {scalar_t__ hotkey; scalar_t__ text; } ;
struct TYPE_2__ {scalar_t__* bytes; } ;
struct key {TYPE_1__ data; } ;
typedef enum input_status { ____Placeholder_input_status } input_status ;


 scalar_t__ COLS ;
 int INPUT_CANCEL ;
 int INPUT_OK ;
 int INPUT_STOP ;







 int assert (int) ;
 int curs_set (int) ;
 int get_input (scalar_t__,struct key*) ;
 char key_to_control (struct key*) ;
 int report_clear () ;
 int string_format (char*,char*,int,int) ;
 int update_status_with_context (char*,char*,char const*,scalar_t__,char const*) ;

bool
prompt_menu(const char *prompt, const struct menu_item *items, int *selected)
{
 enum input_status status = INPUT_OK;
 char buf[128];
 struct key key;
 int size = 0;

 while (items[size].text)
  size++;

 assert(size > 0);

 curs_set(1);
 while (status == INPUT_OK) {
  const struct menu_item *item = &items[*selected];
  const char hotkey[] = { ' ', '[', (char) item->hotkey, ']', 0 };
  int i;

  if (!string_format(buf, "(%d of %d)", *selected + 1, size))
   buf[0] = 0;

  update_status_with_context(buf, "%s %s%s", prompt, item->text,
         item->hotkey ? hotkey : "");

  switch (get_input(COLS - 1, &key)) {
  case 130:
  case 133:
  case '\n':
   status = INPUT_STOP;
   break;

  case 131:
  case 128:
   *selected = *selected - 1;
   if (*selected < 0)
    *selected = size - 1;
   break;

  case 129:
  case 134:
   *selected = (*selected + 1) % size;
   break;

  case 132:
   status = INPUT_CANCEL;
   break;

  default:
   if (key_to_control(&key) == 'C') {
    status = INPUT_CANCEL;
    break;
   }

   for (i = 0; items[i].text; i++)
    if (items[i].hotkey == key.data.bytes[0]) {
     *selected = i;
     status = INPUT_STOP;
     break;
    }
  }
 }
 curs_set(0);

 report_clear();

 return status != INPUT_CANCEL;
}
