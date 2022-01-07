; ModuleID = '/home/carl/AnghaBench/streem/src/extr_core.c_task_exec.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_core.c_task_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.strm_task = type { i64 (%struct.TYPE_7__*, i32)*, i32 }

@strm_killed = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i64 0, align 8
@strm_option_verbose = common dso_local global i64 0, align 8
@strm_dying = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.strm_task*)* @task_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_exec(%struct.TYPE_7__* %0, %struct.strm_task* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.strm_task*, align 8
  %5 = alloca i64 (%struct.TYPE_7__*, i32)*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.strm_task* %1, %struct.strm_task** %4, align 8
  %7 = load %struct.strm_task*, %struct.strm_task** %4, align 8
  %8 = getelementptr inbounds %struct.strm_task, %struct.strm_task* %7, i32 0, i32 0
  %9 = load i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32)** %8, align 8
  store i64 (%struct.TYPE_7__*, i32)* %9, i64 (%struct.TYPE_7__*, i32)** %5, align 8
  %10 = load %struct.strm_task*, %struct.strm_task** %4, align 8
  %11 = getelementptr inbounds %struct.strm_task, %struct.strm_task* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.strm_task*, %struct.strm_task** %4, align 8
  %14 = call i32 @free(%struct.strm_task* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @strm_killed, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %44

21:                                               ; preds = %2
  %22 = load i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32)** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 %22(%struct.TYPE_7__* %23, i32 %24)
  %26 = load i64, i64* @STRM_NG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i64, i64* @strm_option_verbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @strm_eprint(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @strm_dying, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = call i32 @strm_stream_close(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %20, %41, %35
  ret void
}

declare dso_local i32 @free(%struct.strm_task*) #1

declare dso_local i32 @strm_eprint(%struct.TYPE_7__*) #1

declare dso_local i32 @strm_stream_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
