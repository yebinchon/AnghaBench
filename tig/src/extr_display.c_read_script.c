
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct buffer {char* data; } ;
typedef int input_buffer ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int die (char*,int ) ;
 int get_key_value (char const**,struct key*) ;
 int get_status_message (int) ;
 int io_done (int *) ;
 int io_get (int *,struct buffer*,char,int) ;
 int memset (struct buffer*,int ,int) ;
 int script_io ;
 size_t strspn (char*,char*) ;

__attribute__((used)) static bool
read_script(struct key *key)
{
 static struct buffer input_buffer;
 static const char *line = "";
 enum status_code code;

 while (!line || !*line) {
  if (input_buffer.data && *input_buffer.data == ':') {
   line = "<Enter>";
   memset(&input_buffer, 0, sizeof(input_buffer));

  } else if (!io_get(&script_io, &input_buffer, '\n', 1)) {
   io_done(&script_io);
   return 0;
  } else if (input_buffer.data[strspn(input_buffer.data, " \t")] == '#') {
   continue;
  } else {
   line = input_buffer.data;
  }
 }

 code = get_key_value(&line, key);
 if (code != SUCCESS)
  die("Error reading script: %s", get_status_message(code));
 return 1;
}
