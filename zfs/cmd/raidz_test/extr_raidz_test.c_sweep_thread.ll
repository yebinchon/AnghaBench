; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_sweep_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_sweep_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@rto_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RAND_MAX = common dso_local global i32 0, align 4
@sem_mtx = common dso_local global i32 0, align 4
@failed_opts = common dso_local global i32 0, align 4
@SWEEP_ERROR = common dso_local global i32 0, align 4
@sweep_state = common dso_local global i32 0, align 4
@free_slots = common dso_local global i32 0, align 4
@sem_cv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sweep_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sweep_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @run_test(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rto_opts, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = call i32 (...) @rand()
  %17 = load i32, i32* @RAND_MAX, align 4
  %18 = sdiv i32 %17, 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %15
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 0, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 @mutex_enter(i32* @sem_mtx)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @memcpy(i32* @failed_opts, i32* %27, i32 4)
  %29 = load i32, i32* @SWEEP_ERROR, align 4
  store i32 %29, i32* @sweep_state, align 4
  %30 = call i32 @mutex_exit(i32* @sem_mtx)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @umem_free(i32* %32, i32 4)
  %34 = call i32 @mutex_enter(i32* @sem_mtx)
  %35 = load i32, i32* @free_slots, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @free_slots, align 4
  %37 = call i32 @cv_signal(i32* @sem_cv)
  %38 = call i32 @mutex_exit(i32* @sem_mtx)
  %39 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @run_test(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @umem_free(i32*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
