
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAG_UNKNOWN ;
 char* file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 int get_tag_id (scalar_t__*) ;
 int is_end_of_tag (char) ;
 int strncpy (scalar_t__*,char*,int) ;
 scalar_t__* tagname ;

__attribute__((used)) static int
skip_to_next_tag()
{
  unsigned int start;
  int end_of_tag;
  int found_tag = 0;
  int tag_id;
  int len;

  tagname[0] = 0;
  while ((file_pointer < file_size) && (!found_tag))
    {
      if (file_buffer[file_pointer] == '@')
        {
          file_pointer++;
          start = file_pointer;
          end_of_tag = 0;
          while ((file_pointer < file_size) && (!end_of_tag))
            {
              end_of_tag = is_end_of_tag(file_buffer[file_pointer]);
              file_pointer++;
            }
          len = file_pointer > start ? file_pointer - start - 1 : 0;
          strncpy(tagname, &file_buffer[start], len);
          tagname[len] = 0;

          tag_id = get_tag_id(tagname);
          if (tag_id != TAG_UNKNOWN)
            {
              return tag_id;
            }
        }
      file_pointer++;
    }

  return TAG_UNKNOWN;
}
