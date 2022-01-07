
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t parse_offset; void* state; int status_code; int version; int raw_buffer; } ;
typedef TYPE_1__ HttpResponseState ;



 void* HTTP_STATE_ERROR ;
 void* HTTP_STATE_INTERM ;

 int http_parse_version (TYPE_1__*) ;
 int memcpy (char*,int ,size_t) ;
 int memset (int ,char,int) ;
 char* palloc (size_t) ;
 int pfree (char*) ;
 int sscanf (char*,char*,int ,int *) ;

__attribute__((used)) static void
http_parse_status(HttpResponseState *state, const char next)
{
 char *raw_buf = palloc(state->parse_offset + 1);

 switch (next)
 {
  case 129:







   memcpy(raw_buf, state->raw_buffer, state->parse_offset);
   raw_buf[state->parse_offset] = '\0';
   state->state = HTTP_STATE_ERROR;
   memset(state->version, '\0', sizeof(state->version));

   if (sscanf(raw_buf, "%127s%*[ ]%d%*[ ]%*s", state->version, &state->status_code) == 2)
   {
    if (http_parse_version(state))
     state->state = HTTP_STATE_INTERM;
    else
     state->state = HTTP_STATE_ERROR;
   }
   break;
  case 128:
   state->state = HTTP_STATE_ERROR;
   break;
  default:

   break;
 }

 pfree(raw_buf);
}
