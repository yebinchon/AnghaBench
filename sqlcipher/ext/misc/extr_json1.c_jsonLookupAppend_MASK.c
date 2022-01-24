#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nNode; scalar_t__ oom; int /*<<< orphan*/ * aNode; } ;
typedef  TYPE_1__ JsonParse ;
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_ARRAY ; 
 int /*<<< orphan*/  JSON_NULL ; 
 int /*<<< orphan*/  JSON_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int,char const*,int*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static JsonNode *FUNC3(
  JsonParse *pParse,     /* Append content to the JSON parse */
  const char *zPath,     /* Description of content to append */
  int *pApnd,            /* Set this flag to 1 */
  const char **pzErr     /* Make this point to any syntax error */
){
  *pApnd = 1;
  if( zPath[0]==0 ){
    FUNC1(pParse, JSON_NULL, 0, 0);
    return pParse->oom ? 0 : &pParse->aNode[pParse->nNode-1];
  }
  if( zPath[0]=='.' ){
    FUNC1(pParse, JSON_OBJECT, 0, 0);
  }else if( FUNC2(zPath,"[0]",3)==0 ){
    FUNC1(pParse, JSON_ARRAY, 0, 0);
  }else{
    return 0;
  }
  if( pParse->oom ) return 0;
  return FUNC0(pParse, pParse->nNode-1, zPath, pApnd, pzErr);
}