
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ command; int ctrl_id; int unum_size; void** unum; void** num; void** txt; scalar_t__ line_nr; } ;
typedef TYPE_1__ loc_cmd ;
typedef void* int32_t ;
struct TYPE_7__ {char c; scalar_t__ cmd; int* arg_type; } ;


 size_t ARRAYSIZE (TYPE_2__*) ;
 scalar_t__ LC_TEXT ;
 scalar_t__ calloc (int,int) ;
 int free_loc_cmd (TYPE_1__*) ;
 scalar_t__ loc_line_nr ;
 int luprint (char*) ;
 int luprintf (char*,char) ;
 scalar_t__ malloc (int) ;
 TYPE_2__* parse_cmd ;
 void* safe_strdup (char*) ;
 char* space ;
 int strcpy (char*,char*) ;
 scalar_t__ strspn (char*,char*) ;
 char* strtok (char*,char*) ;
 int strtol (char*,char**,int ) ;
 int uprintf (char*,int) ;

__attribute__((used)) static loc_cmd* get_loc_cmd(char c, char* line) {
 size_t i, j, k, l, r, ti = 0, ii = 0;
 char *endptr, *expected_endptr, *token;
 loc_cmd* lcmd = ((void*)0);

 for (j=0; j<ARRAYSIZE(parse_cmd); j++) {
  if (c == parse_cmd[j].c)
   break;
 }
 if (j >= ARRAYSIZE(parse_cmd)) {
  luprint("unknown command");
  return ((void*)0);
 }

 lcmd = (loc_cmd*)calloc(sizeof(loc_cmd), 1);
 if (lcmd == ((void*)0)) {
  luprint("could not allocate command");
  return ((void*)0);
 }
 lcmd->command = parse_cmd[j].cmd;
 lcmd->ctrl_id = (lcmd->command <= LC_TEXT)?-1:0;
 lcmd->line_nr = (uint16_t)loc_line_nr;

 i = 0;
 for (k = 0; parse_cmd[j].arg_type[k] != 0; k++) {

  i += strspn(&line[i], space);
  r = i;
  if (line[i] == 0) {
   luprintf("missing parameter for command '%c'", parse_cmd[j].c);
   goto err;
  }
  switch(parse_cmd[j].arg_type[k]) {
  case 's':

   if (line[i++] != '"') {
    luprint("no start quote");
    goto err;
   }
   r = i;

   while ((line[i] != 0) && ((line[i] != '"') || ((line[i] == '"') && (line[i-1] == '\\')))) {
    if ((line[i] == '"') && (line[i-1] == '\\')) {
     strcpy(&line[i-1], &line[i]);
    } else {
     i++;
    }
   }
   if (line[i] == 0) {
    luprint("no end quote");
    goto err;
   }
   line[i++] = 0;
   lcmd->txt[ti++] = safe_strdup(&line[r]);
   break;
  case 'c':
   while ((line[i] != 0) && (line[i] != space[0]) && (line[i] != space[1]))
    i++;
   if (line[i] != 0)
    line[i++] = 0;
   lcmd->txt[ti++] = safe_strdup(&line[r]);
   break;
  case 'i':

   if ((line[i] == ',') || (line[i] == '.')) {
    i += strspn(&line[i+1], space);
    r = i;
   }
   while ((line[i] != 0) && (line[i] != space[0]) && (line[i] != space[1])
    && (line[i] != ',') && (line[i] != '.'))
    i++;
   expected_endptr = &line[i];
   if (line[i] != 0)
    line[i++] = 0;
   lcmd->num[ii++] = (int32_t)strtol(&line[r], &endptr, 0);
   if (endptr != expected_endptr) {
    luprint("invalid integer");
    goto err;
   }
   break;
  case 'u':

   lcmd->unum_size = 1;
   for (l=i; line[l] != 0; l++) {
    if ((line[l] == '.') || (line[l] == ','))
     lcmd->unum_size++;
   }
   lcmd->unum = (uint32_t*)malloc(lcmd->unum_size * sizeof(uint32_t));
   if (lcmd->unum == ((void*)0)) {
    luprint("could not allocate memory");
    goto err;
   }
   token = strtok(&line[i], ".,");
   for (l=0; (l<lcmd->unum_size) && (token != ((void*)0)); l++) {
    lcmd->unum[l] = (int32_t)strtol(token, &endptr, 0);
    token = strtok(((void*)0), ".,");
   }
   if ((token != ((void*)0)) || (l != lcmd->unum_size)) {
    luprint("internal error (unexpected number of numeric values)");
    goto err;
   }
   break;
  default:
   uprintf("localization: unhandled arg_type '%c'\n", parse_cmd[j].arg_type[k]);
   goto err;
  }
 }

 return lcmd;

err:
 free_loc_cmd(lcmd);
 return ((void*)0);
}
