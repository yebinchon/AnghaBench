; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.line = type { i32, %struct.status* }
%struct.status = type { i8, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Merging only possible for files with unmerged status ('U').\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"File has been deleted.\00", align 1
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Nothing to blame here\00", align 1
@show_untracked_only = common dso_local global i64 0, align 8
@main_view = common dso_local global i32 0, align 4
@REQ_VIEW_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @status_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.status*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %9 = load %struct.line*, %struct.line** %7, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 1
  %11 = load %struct.status*, %struct.status** %10, align 8
  store %struct.status* %11, %struct.status** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %101 [
    i32 129, label %13
    i32 130, label %20
    i32 131, label %33
    i32 134, label %51
    i32 128, label %71
    i32 133, label %95
    i32 132, label %99
  ]

13:                                               ; preds = %3
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = call i32 @status_update(%struct.view* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @REQ_NONE, align 4
  store i32 %18, i32* %4, align 4
  br label %124

19:                                               ; preds = %13
  br label %103

20:                                               ; preds = %3
  %21 = load %struct.status*, %struct.status** %8, align 8
  %22 = load %struct.line*, %struct.line** %7, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = load %struct.line*, %struct.line** %7, align 8
  %27 = call i32 @status_has_none(%struct.view* %25, %struct.line* %26)
  %28 = call i32 @status_revert(%struct.status* %21, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @REQ_NONE, align 4
  store i32 %31, i32* %4, align 4
  br label %124

32:                                               ; preds = %20
  br label %103

33:                                               ; preds = %3
  %34 = load %struct.status*, %struct.status** %8, align 8
  %35 = icmp ne %struct.status* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.status*, %struct.status** %8, align 8
  %38 = getelementptr inbounds %struct.status, %struct.status* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 4
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 85
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %33
  %43 = call i32 @report(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @REQ_NONE, align 4
  store i32 %44, i32* %4, align 4
  br label %124

45:                                               ; preds = %36
  %46 = load %struct.status*, %struct.status** %8, align 8
  %47 = getelementptr inbounds %struct.status, %struct.status* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @open_mergetool(i32 %49)
  br label %103

51:                                               ; preds = %3
  %52 = load %struct.status*, %struct.status** %8, align 8
  %53 = icmp ne %struct.status* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %4, align 4
  br label %124

56:                                               ; preds = %51
  %57 = load %struct.status*, %struct.status** %8, align 8
  %58 = getelementptr inbounds %struct.status, %struct.status* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 68
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @REQ_NONE, align 4
  store i32 %64, i32* %4, align 4
  br label %124

65:                                               ; preds = %56
  %66 = load %struct.status*, %struct.status** %8, align 8
  %67 = getelementptr inbounds %struct.status, %struct.status* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @open_editor(i32 %69, i32 0)
  br label %103

71:                                               ; preds = %3
  %72 = load %struct.line*, %struct.line** %7, align 8
  %73 = getelementptr inbounds %struct.line, %struct.line* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load %struct.status*, %struct.status** %8, align 8
  %79 = icmp ne %struct.status* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77, %71
  %81 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @REQ_NONE, align 4
  store i32 %82, i32* %4, align 4
  br label %124

83:                                               ; preds = %77
  %84 = load %struct.status*, %struct.status** %8, align 8
  %85 = icmp ne %struct.status* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.view*, %struct.view** %5, align 8
  %88 = getelementptr inbounds %struct.view, %struct.view* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %4, align 4
  br label %124

95:                                               ; preds = %3
  %96 = load %struct.view*, %struct.view** %5, align 8
  %97 = load %struct.line*, %struct.line** %7, align 8
  %98 = call i32 @status_enter(%struct.view* %96, %struct.line* %97)
  store i32 %98, i32* %4, align 4
  br label %124

99:                                               ; preds = %3
  %100 = call i32 (...) @load_repo_head()
  br label %103

101:                                              ; preds = %3
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %4, align 4
  br label %124

103:                                              ; preds = %99, %65, %45, %32, %19
  %104 = load i64, i64* @show_untracked_only, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.view*, %struct.view** %5, align 8
  %108 = getelementptr inbounds %struct.view, %struct.view* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, @main_view
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.view*, %struct.view** %5, align 8
  %113 = getelementptr inbounds %struct.view, %struct.view* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %116 = call i32 @main_status_exists(i32* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @REQ_VIEW_CLOSE, align 4
  store i32 %119, i32* %4, align 4
  br label %124

120:                                              ; preds = %111, %106, %103
  %121 = load %struct.view*, %struct.view** %5, align 8
  %122 = call i32 @refresh_view(%struct.view* %121)
  %123 = load i32, i32* @REQ_NONE, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %118, %101, %95, %93, %80, %62, %54, %42, %30, %17
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @status_update(%struct.view*) #1

declare dso_local i32 @status_revert(%struct.status*, i32, i32) #1

declare dso_local i32 @status_has_none(%struct.view*, %struct.line*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @open_mergetool(i32) #1

declare dso_local i32 @open_editor(i32, i32) #1

declare dso_local i32 @status_enter(%struct.view*, %struct.line*) #1

declare dso_local i32 @load_repo_head(...) #1

declare dso_local i32 @main_status_exists(i32*, i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
