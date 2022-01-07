; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_system_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_system_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4
@timebase_info = common dso_local global i32 0, align 4
@callout_mtx = common dso_local global i32 0, align 4
@callout_cnd = common dso_local global i32 0, align 4
@callout_queue = common dso_local global i32* null, align 8
@work = common dso_local global i32 0, align 4
@callout_thread = common dso_local global i32 0, align 4
@callout_thread_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callout_system_init() #0 {
  %1 = load i32, i32* @initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = call i32 @mach_timebase_info(i32* @timebase_info)
  %6 = call i64 @pthread_mutex_init(i32* @callout_mtx, i32* null)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %4
  %11 = call i64 @pthread_cond_init(i32* @callout_cnd, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %10
  store i32* null, i32** @callout_queue, align 8
  store i32 0, i32* @work, align 4
  %16 = call i64 @pthread_create(i32* @callout_thread, i32* null, i32* @callout_thread_func, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %15
  store i32 1, i32* @initialized, align 4
  br label %21

21:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @mach_timebase_info(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
