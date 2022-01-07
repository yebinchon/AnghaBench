; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-resolve/extr_sd-resolve.c_start_threads.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-resolve/extr_sd-resolve.c_start_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@SIG_BLOCK = common dso_local global i32 0, align 4
@WORKERS_MIN = common dso_local global i32 0, align 4
@WORKERS_MAX = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @start_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_threads(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i64 @sigfillset(i32* %6)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32, i32* @SIG_BLOCK, align 4
  %16 = call i32 @pthread_sigmask(i32 %15, i32* %6, i32* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @WORKERS_MIN, align 4
  %30 = load i32, i32* @WORKERS_MAX, align 4
  %31 = call i32 @CLAMP(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %55, %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* @thread_worker, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = call i32 @pthread_create(i32* %46, i32* null, i32 %47, %struct.TYPE_4__* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %32

60:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* @SIG_SETMASK, align 4
  %63 = call i32 @pthread_sigmask(i32 %62, i32* %7, i32* null)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %66, %61
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigfillset(i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
