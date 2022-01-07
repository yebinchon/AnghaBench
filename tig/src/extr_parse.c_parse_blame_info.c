
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_commit {void* filename; void* parent_filename; int parent_id; int title; int time; int author; } ;


 scalar_t__ SIZEOF_REV ;
 int SIZEOF_STR ;
 int get_author (char*,char*) ;
 void* get_path (char*) ;
 scalar_t__ match_blame_header (char*,char**) ;
 int parse_timesec (int *,char*) ;
 int parse_timezone (int *,char*) ;
 char* strchr (char*,char) ;
 int string_copy_rev (int ,char*) ;
 int string_ncopy (int ,char*,scalar_t__) ;
 int string_ncopy_do (char*,int ,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

bool
parse_blame_info(struct blame_commit *commit, char author[SIZEOF_STR], char *line)
{
 if (match_blame_header("author ", &line)) {
  string_ncopy_do(author, SIZEOF_STR, line, strlen(line));

 } else if (match_blame_header("author-mail ", &line)) {
  char *end = strchr(line, '>');

  if (end)
   *end = 0;
  if (*line == '<')
   line++;
  commit->author = get_author(author, line);
  author[0] = 0;

 } else if (match_blame_header("author-time ", &line)) {
  parse_timesec(&commit->time, line);

 } else if (match_blame_header("author-tz ", &line)) {
  parse_timezone(&commit->time, line);

 } else if (match_blame_header("summary ", &line)) {
  string_ncopy(commit->title, line, strlen(line));

 } else if (match_blame_header("previous ", &line)) {
  if (strlen(line) <= SIZEOF_REV)
   return 0;
  string_copy_rev(commit->parent_id, line);
  line += SIZEOF_REV;
  commit->parent_filename = get_path(line);
  if (!commit->parent_filename)
   return 1;

 } else if (match_blame_header("filename ", &line)) {
  commit->filename = get_path(line);
  return 1;
 }

 return 0;
}
