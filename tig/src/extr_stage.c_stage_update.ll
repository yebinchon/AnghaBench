; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.view = type { i32 }
%struct.line = type { i32 }

@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_UNTRACKED = common dso_local global i64 0, align 8
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to apply chunk\00", align 1
@stage_status = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to update files\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to update file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*, i32)* @stage_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_update(%struct.view* %0, %struct.line* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.line* null, %struct.line** %8, align 8
  %9 = call i32 (...) @is_initial_commit()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @stage_line_type, align 8
  %13 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.view*, %struct.view** %5, align 8
  %17 = load %struct.line*, %struct.line** %6, align 8
  %18 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %19 = call %struct.line* @find_prev_line_by_type(%struct.view* %16, %struct.line* %17, i32 %18)
  store %struct.line* %19, %struct.line** %8, align 8
  br label %20

20:                                               ; preds = %15, %11, %3
  %21 = load %struct.line*, %struct.line** %8, align 8
  %22 = icmp ne %struct.line* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.view*, %struct.view** %5, align 8
  %25 = load %struct.line*, %struct.line** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.line*, %struct.line** %6, align 8
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi %struct.line* [ %29, %28 ], [ null, %30 ]
  %33 = call i32 @stage_apply_chunk(%struct.view* %24, %struct.line* %25, %struct.line* %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

37:                                               ; preds = %31
  br label %57

38:                                               ; preds = %20
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stage_status, i32 0, i32 0), align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.view*, %struct.view** %5, align 8
  %43 = load i64, i64* @stage_line_type, align 8
  %44 = call i32 @stage_update_files(%struct.view* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

48:                                               ; preds = %41
  br label %56

49:                                               ; preds = %38
  %50 = load i64, i64* @stage_line_type, align 8
  %51 = call i32 @status_update_file(%struct.TYPE_3__* @stage_status, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %37
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %53, %46, %35
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @is_initial_commit(...) #1

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i32 @stage_apply_chunk(%struct.view*, %struct.line*, %struct.line*, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @stage_update_files(%struct.view*, i64) #1

declare dso_local i32 @status_update_file(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
