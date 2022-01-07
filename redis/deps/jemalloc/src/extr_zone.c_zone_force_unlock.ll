; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_zone.c_zone_force_unlock.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_zone.c_zone_force_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isthreaded = common dso_local global i64 0, align 8
@zone_force_lock_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zone_force_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_force_unlock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @isthreaded, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* @zone_force_lock_pid, align 4
  %7 = icmp ne i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @getpid()
  %11 = load i32, i32* @zone_force_lock_pid, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 (...) @jemalloc_postfork_parent()
  br label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @jemalloc_postfork_child()
  br label %17

17:                                               ; preds = %15, %13
  store i32 -1, i32* @zone_force_lock_pid, align 4
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @jemalloc_postfork_parent(...) #1

declare dso_local i32 @jemalloc_postfork_child(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
