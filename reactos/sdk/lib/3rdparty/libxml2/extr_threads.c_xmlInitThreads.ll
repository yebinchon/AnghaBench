; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_threads.c_xmlInitThreads.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_threads.c_xmlInitThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_helpers_cs = common dso_local global i32 0, align 4
@libxml_is_threaded = common dso_local global i32 0, align 4
@pthread_cond_destroy = common dso_local global i32* null, align 8
@pthread_cond_init = common dso_local global i32* null, align 8
@pthread_cond_signal = common dso_local global i32* null, align 8
@pthread_cond_wait = common dso_local global i32* null, align 8
@pthread_equal = common dso_local global i32* null, align 8
@pthread_getspecific = common dso_local global i32* null, align 8
@pthread_key_create = common dso_local global i32* null, align 8
@pthread_key_delete = common dso_local global i32* null, align 8
@pthread_mutex_destroy = common dso_local global i32* null, align 8
@pthread_mutex_init = common dso_local global i32* null, align 8
@pthread_mutex_lock = common dso_local global i32* null, align 8
@pthread_mutex_unlock = common dso_local global i32* null, align 8
@pthread_once = common dso_local global i32* null, align 8
@pthread_self = common dso_local global i32* null, align 8
@pthread_setspecific = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitThreads() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
