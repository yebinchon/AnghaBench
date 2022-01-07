; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32 }

@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@display = common dso_local global %struct.view** null, align 8
@REQ_MOVE_DOWN = common dso_local global i32 0, align 4
@REQ_MOVE_UP = common dso_local global i32 0, align 4
@LINE_STAT_UNSTAGED = common dso_local global i32 0, align 4
@LINE_STAT_STAGED = common dso_local global i32 0, align 4
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%(commit)^\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %9 = load %struct.view*, %struct.view** %5, align 8
  %10 = call i64 @view_is_displayed(%struct.view* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @OPEN_SPLIT, align 4
  br label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @OPEN_DEFAULT, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %102 [
    i32 132, label %22
    i32 130, label %22
    i32 128, label %43
    i32 135, label %43
    i32 129, label %91
    i32 131, label %95
    i32 134, label %98
    i32 133, label %98
  ]

22:                                               ; preds = %19, %19
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = call i64 @view_is_displayed(%struct.view* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.view**, %struct.view*** @display, align 8
  %28 = getelementptr inbounds %struct.view*, %struct.view** %27, i64 0
  %29 = load %struct.view*, %struct.view** %28, align 8
  %30 = load %struct.view*, %struct.view** %5, align 8
  %31 = icmp ne %struct.view* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %4, align 4
  br label %106

34:                                               ; preds = %26, %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 132
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @REQ_MOVE_DOWN, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @REQ_MOVE_UP, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  br label %106

43:                                               ; preds = %19, %19
  %44 = load %struct.view*, %struct.view** %5, align 8
  %45 = call i64 @view_is_displayed(%struct.view* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.view**, %struct.view*** @display, align 8
  %49 = getelementptr inbounds %struct.view*, %struct.view** %48, i64 0
  %50 = load %struct.view*, %struct.view** %49, align 8
  %51 = load %struct.view*, %struct.view** %5, align 8
  %52 = icmp ne %struct.view* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = call i32 @maximize_view(%struct.view* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %47, %43
  %57 = load %struct.line*, %struct.line** %7, align 8
  %58 = getelementptr inbounds %struct.line, %struct.line* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.line*, %struct.line** %7, align 8
  %64 = getelementptr inbounds %struct.line, %struct.line* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LINE_STAT_STAGED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62, %56
  %69 = load %struct.view*, %struct.view** %5, align 8
  %70 = load %struct.line*, %struct.line** %7, align 8
  %71 = getelementptr inbounds %struct.line, %struct.line* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @open_stage_view(%struct.view* %69, i32* null, i32 %72, i32 %73)
  br label %90

75:                                               ; preds = %62
  %76 = load %struct.line*, %struct.line** %7, align 8
  %77 = getelementptr inbounds %struct.line, %struct.line* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.view*, %struct.view** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @open_status_view(%struct.view* %82, i32 1, i32 %83)
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.view*, %struct.view** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @open_diff_view(%struct.view* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %68
  br label %104

91:                                               ; preds = %19
  %92 = call i32 @load_refs(i32 1)
  %93 = load %struct.view*, %struct.view** %5, align 8
  %94 = call i32 @refresh_view(%struct.view* %93)
  br label %104

95:                                               ; preds = %19
  %96 = load %struct.view*, %struct.view** %5, align 8
  %97 = call i32 @goto_id(%struct.view* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  br label %104

98:                                               ; preds = %19, %19
  %99 = load %struct.view*, %struct.view** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @find_merge(%struct.view* %99, i32 %100)
  br label %104

102:                                              ; preds = %19
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %98, %95, %91, %90
  %105 = load i32, i32* @REQ_NONE, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %102, %41, %32
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @maximize_view(%struct.view*, i32) #1

declare dso_local i32 @open_stage_view(%struct.view*, i32*, i32, i32) #1

declare dso_local i32 @open_status_view(%struct.view*, i32, i32) #1

declare dso_local i32 @open_diff_view(%struct.view*, i32) #1

declare dso_local i32 @load_refs(i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @goto_id(%struct.view*, i8*, i32, i32) #1

declare dso_local i32 @find_merge(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
