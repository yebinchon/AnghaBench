; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_type_to_access_method.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_type_to_access_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_JOB_TYPE_MAX = common dso_local global i64 0, align 8
@JOB_START = common dso_local global i32 0, align 4
@JOB_RESTART = common dso_local global i32 0, align 4
@JOB_TRY_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@JOB_STOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"reload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @job_type_to_access_method(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @_JOB_TYPE_MAX, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @JOB_START, align 4
  %15 = load i32, i32* @JOB_RESTART, align 4
  %16 = load i32, i32* @JOB_TRY_RESTART, align 4
  %17 = call i64 @IN_SET(i64 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @JOB_STOP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %24, %19
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IN_SET(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
