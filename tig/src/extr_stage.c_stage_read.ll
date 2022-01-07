; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i32, %struct.stage_state* }
%struct.stage_state = type { i32 }
%struct.buffer = type { i32* }

@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_UNTRACKED = common dso_local global i64 0, align 8
@LINE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed run the diff-highlight program: %s\00", align 1
@opt_diff_highlight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, i32)* @stage_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stage_state*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.view*, %struct.view** %5, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 2
  %11 = load %struct.stage_state*, %struct.stage_state** %10, align 8
  store %struct.stage_state* %11, %struct.stage_state** %8, align 8
  %12 = load i64, i64* @stage_line_type, align 8
  %13 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.view*, %struct.view** %5, align 8
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = icmp ne %struct.buffer* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.buffer*, %struct.buffer** %6, align 8
  %21 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32* [ %22, %19 ], [ null, %23 ]
  %26 = load i32, i32* @LINE_DEFAULT, align 4
  %27 = call i32 @pager_common_read(%struct.view* %16, i32* %25, i32 %26, i32* null)
  store i32 %27, i32* %4, align 4
  br label %84

28:                                               ; preds = %3
  %29 = load %struct.buffer*, %struct.buffer** %6, align 8
  %30 = icmp ne %struct.buffer* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load %struct.stage_state*, %struct.stage_state** %8, align 8
  %33 = getelementptr inbounds %struct.stage_state, %struct.stage_state* %32, i32 0, i32 0
  %34 = call i32 @diff_done_highlight(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @opt_diff_highlight, align 4
  %38 = call i32 @report(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 1, i32* %4, align 4
  br label %84

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.buffer*, %struct.buffer** %6, align 8
  %42 = icmp ne %struct.buffer* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load %struct.view*, %struct.view** %5, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.view*, %struct.view** %5, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @maximize_view(i64 %56, i32 1)
  store i32 1, i32* %4, align 4
  br label %84

58:                                               ; preds = %48, %43, %40
  %59 = load %struct.buffer*, %struct.buffer** %6, align 8
  %60 = icmp ne %struct.buffer* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.view*, %struct.view** %5, align 8
  %63 = load %struct.stage_state*, %struct.stage_state** %8, align 8
  %64 = getelementptr inbounds %struct.stage_state, %struct.stage_state* %63, i32 0, i32 0
  %65 = call i32 @diff_restore_line(%struct.view* %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.buffer*, %struct.buffer** %6, align 8
  %68 = icmp ne %struct.buffer* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.view*, %struct.view** %5, align 8
  %71 = load %struct.buffer*, %struct.buffer** %6, align 8
  %72 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.stage_state*, %struct.stage_state** %8, align 8
  %75 = getelementptr inbounds %struct.stage_state, %struct.stage_state* %74, i32 0, i32 0
  %76 = call i64 @diff_common_read(%struct.view* %70, i32* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %84

79:                                               ; preds = %69, %66
  %80 = load %struct.view*, %struct.view** %5, align 8
  %81 = load %struct.buffer*, %struct.buffer** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @pager_read(%struct.view* %80, %struct.buffer* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %78, %53, %36, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @pager_common_read(%struct.view*, i32*, i32, i32*) #1

declare dso_local i32 @diff_done_highlight(i32*) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @maximize_view(i64, i32) #1

declare dso_local i32 @diff_restore_line(%struct.view*, i32*) #1

declare dso_local i64 @diff_common_read(%struct.view*, i32*, i32*) #1

declare dso_local i32 @pager_read(%struct.view*, %struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
