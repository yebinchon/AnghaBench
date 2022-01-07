; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_job-mgr.c_seaf_job_manager_schedule_job.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_job-mgr.c_seaf_job_manager_schedule_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, %struct.TYPE_7__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_job_manager_schedule_job(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = call %struct.TYPE_8__* (...) @seaf_job_new()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = sext i32 %14 to i64
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = call i64 @job_thread_create(%struct.TYPE_8__* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = call i32 @seaf_job_free(%struct.TYPE_8__* %35)
  store i32 -1, i32* %5, align 4
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_8__* @seaf_job_new(...) #1

declare dso_local i64 @job_thread_create(%struct.TYPE_8__*) #1

declare dso_local i32 @seaf_job_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
