
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int * synctex_node_t ;
struct TYPE_4__ {int number_of_lists; int ** lists_of_friends; } ;


 int INT_MAX ;
 char* SYNCTEX_CUR ;
 char* SYNCTEX_END ;
 int * SYNCTEX_FRIEND (int *) ;
 int SYNCTEX_LINE (int *) ;
 int * SYNCTEX_PARENT (int *) ;
 char* SYNCTEX_START ;
 int SYNCTEX_TAG (int *) ;
 int free (char*) ;
 int printf (char*,char const*) ;
 char* realloc (char*,size_t) ;
 scalar_t__ synctex_node_type (int *) ;
 scalar_t__ synctex_node_type_boundary ;
 scalar_t__ synctex_node_type_kern ;
 int synctex_scanner_get_tag (TYPE_1__*,char const*) ;

int synctex_display_query(synctex_scanner_t scanner,const char * name,int line,int column) {



 int tag = synctex_scanner_get_tag(scanner,name);
 size_t size = 0;
 int friend_index = 0;
 int max_line = 0;
 synctex_node_t node = ((void*)0);
 if (tag == 0) {
  printf("SyncTeX Warning: No tag for %s\n",name);
  return -1;
 }
 free(SYNCTEX_START);
 SYNCTEX_CUR = SYNCTEX_END = SYNCTEX_START = ((void*)0);
 max_line = line < INT_MAX-scanner->number_of_lists ? line+scanner->number_of_lists:INT_MAX;
 while(line<max_line) {

  friend_index = (tag+line)%(scanner->number_of_lists);
  if ((node = (scanner->lists_of_friends)[friend_index])) {
   do {
    if ((synctex_node_type(node)>=synctex_node_type_boundary)
     && (tag == SYNCTEX_TAG(node))
      && (line == SYNCTEX_LINE(node))) {
     if (SYNCTEX_CUR == SYNCTEX_END) {
      size += 16;
      SYNCTEX_END = realloc(SYNCTEX_START,size*sizeof(synctex_node_t *));
      SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
      SYNCTEX_START = SYNCTEX_END;
      SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
     }
     *(synctex_node_t *)SYNCTEX_CUR = node;
     SYNCTEX_CUR += sizeof(synctex_node_t);
    }
   } while((node = SYNCTEX_FRIEND(node)));
   if (SYNCTEX_START == ((void*)0)) {

    node = (scanner->lists_of_friends)[friend_index];
    do {
     if ((synctex_node_type(node)>=synctex_node_type_kern)
      && (tag == SYNCTEX_TAG(node))
       && (line == SYNCTEX_LINE(node))) {
      if (SYNCTEX_CUR == SYNCTEX_END) {
       size += 16;
       SYNCTEX_END = realloc(SYNCTEX_START,size*sizeof(synctex_node_t *));
       SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
       SYNCTEX_START = SYNCTEX_END;
       SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
      }
      *(synctex_node_t *)SYNCTEX_CUR = node;
      SYNCTEX_CUR += sizeof(synctex_node_t);
     }
    } while((node = SYNCTEX_FRIEND(node)));
    if (SYNCTEX_START == ((void*)0)) {

     node = (scanner->lists_of_friends)[friend_index];
     do {
      if ((tag == SYNCTEX_TAG(node))
        && (line == SYNCTEX_LINE(node))) {
       if (SYNCTEX_CUR == SYNCTEX_END) {
        size += 16;
        SYNCTEX_END = realloc(SYNCTEX_START,size*sizeof(synctex_node_t *));
        SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
        SYNCTEX_START = SYNCTEX_END;
        SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
       }
       *(synctex_node_t *)SYNCTEX_CUR = node;
       SYNCTEX_CUR += sizeof(synctex_node_t);
      }
     } while((node = SYNCTEX_FRIEND(node)));
    }
   }
   SYNCTEX_END = SYNCTEX_CUR;

   if ((SYNCTEX_START) && (SYNCTEX_END))
   {
    synctex_node_t * start_ref = (synctex_node_t *)SYNCTEX_START;
    synctex_node_t * end_ref = (synctex_node_t *)SYNCTEX_END;
    end_ref -= 1;
    while(start_ref < end_ref) {
     node = *start_ref;
     *start_ref = *end_ref;
     *end_ref = node;
     start_ref += 1;
     end_ref -= 1;
    }



    start_ref = (synctex_node_t *)SYNCTEX_START;
    end_ref = (synctex_node_t *)SYNCTEX_START;
  next_end:
    end_ref += 1;
    if (end_ref < (synctex_node_t *)SYNCTEX_END) {
     node = *end_ref;
     while((node = SYNCTEX_PARENT(node))) {
      if (SYNCTEX_PARENT(*start_ref) == node) {
       goto next_end;
      }
     }
     start_ref += 1;
     *start_ref = *end_ref;
     goto next_end;
    }
    start_ref += 1;
                SYNCTEX_END = (char *)start_ref;
                SYNCTEX_CUR = ((void*)0);
    return (SYNCTEX_END-SYNCTEX_START)/sizeof(synctex_node_t);
            }
   SYNCTEX_CUR = ((void*)0);

  }



  ++line;

 }
 return 0;
}
