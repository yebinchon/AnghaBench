; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_revert.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.view = type { i32 }
%struct.line = type { i32 }

@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_UNSTAGED = common dso_local global i64 0, align 8
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Are you sure you want to revert changes?\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to revert chunk\00", align 1
@stage_status = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*)* @stage_revert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_revert(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  store %struct.line* null, %struct.line** %6, align 8
  %7 = call i32 (...) @is_initial_commit()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @stage_line_type, align 8
  %11 = load i64, i64* @LINE_STAT_UNSTAGED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = load %struct.line*, %struct.line** %5, align 8
  %16 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %17 = call %struct.line* @find_prev_line_by_type(%struct.view* %14, %struct.line* %15, i32 %16)
  store %struct.line* %17, %struct.line** %6, align 8
  br label %18

18:                                               ; preds = %13, %9, %2
  %19 = load %struct.line*, %struct.line** %6, align 8
  %20 = icmp ne %struct.line* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = call i32 @prompt_yesno(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %40

25:                                               ; preds = %21
  %26 = load %struct.view*, %struct.view** %4, align 8
  %27 = load %struct.line*, %struct.line** %6, align 8
  %28 = call i32 @stage_apply_chunk(%struct.view* %26, %struct.line* %27, i32* null, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

32:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %40

33:                                               ; preds = %18
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stage_status, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, %struct.TYPE_3__* @stage_status, %struct.TYPE_3__* null
  %38 = load i64, i64* @stage_line_type, align 8
  %39 = call i32 @status_revert(%struct.TYPE_3__* %37, i64 %38, i32 0)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %32, %30, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @is_initial_commit(...) #1

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i32 @prompt_yesno(i8*) #1

declare dso_local i32 @stage_apply_chunk(%struct.view*, %struct.line*, i32*, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @status_revert(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
