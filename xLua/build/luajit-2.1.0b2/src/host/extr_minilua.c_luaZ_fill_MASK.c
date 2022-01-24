#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* (* reader ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ;size_t n; char const* p; int /*<<< orphan*/  data; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ ZIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC2(ZIO*z){
size_t size;
lua_State*L=z->L;
const char*buff;
buff=z->reader(L,z->data,&size);
if(buff==NULL||size==0)return(-1);
z->n=size-1;
z->p=buff;
return FUNC0(*(z->p++));
}