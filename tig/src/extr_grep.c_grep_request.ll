; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_3__*, i32, %struct.view*, %struct.view*, %struct.grep_state* }
%struct.TYPE_3__ = type { i32, i32*, i32* }
%struct.grep_state = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.line = type { i32 }
%struct.grep_line = type { i8*, i32, i32* }

@blob_view = common dso_local global %struct.view zeroinitializer, align 8
@REQ_NONE = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @grep_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.grep_state*, align 8
  %9 = alloca %struct.grep_line*, align 8
  %10 = alloca %struct.view*, align 8
  %11 = alloca [3 x i8*], align 16
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %12 = load %struct.view*, %struct.view** %5, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 4
  %14 = load %struct.grep_state*, %struct.grep_state** %13, align 8
  store %struct.grep_state* %14, %struct.grep_state** %8, align 8
  %15 = load %struct.line*, %struct.line** %7, align 8
  %16 = call %struct.grep_line* @grep_get_line(%struct.line* %15)
  store %struct.grep_line* %16, %struct.grep_line** %9, align 8
  store %struct.view* @blob_view, %struct.view** %10, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %141 [
    i32 129, label %18
    i32 130, label %22
    i32 131, label %108
    i32 128, label %126
  ]

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %5, align 8
  %20 = call i32 @refresh_view(%struct.view* %19)
  %21 = load i32, i32* @REQ_NONE, align 4
  store i32 %21, i32* %4, align 4
  br label %143

22:                                               ; preds = %3
  %23 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %24 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @REQ_NONE, align 4
  store i32 %29, i32* %4, align 4
  br label %143

30:                                               ; preds = %22
  %31 = load %struct.view*, %struct.view** %10, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 3
  %33 = load %struct.view*, %struct.view** %32, align 8
  %34 = load %struct.view*, %struct.view** %5, align 8
  %35 = icmp eq %struct.view* %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.view*, %struct.view** %10, align 8
  %38 = getelementptr inbounds %struct.view, %struct.view* %37, i32 0, i32 2
  %39 = load %struct.view*, %struct.view** %38, align 8
  %40 = load %struct.view*, %struct.view** %5, align 8
  %41 = icmp eq %struct.view* %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %44 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %47 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = load %struct.view*, %struct.view** %10, align 8
  %52 = call i32 @view_is_displayed(%struct.view* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %56 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.view*, %struct.view** %10, align 8
  %62 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %63 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @select_view_line(%struct.view* %61, i32 %64)
  %66 = load %struct.view*, %struct.view** %10, align 8
  %67 = call i32 @update_view_title(%struct.view* %66)
  br label %68

68:                                               ; preds = %60, %54
  br label %101

69:                                               ; preds = %50, %42, %36, %30
  %70 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 8
  store i8* %71, i8** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 1
  %73 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %74 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %72, align 8
  %76 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* null, i8** %76, align 8
  %77 = load %struct.view*, %struct.view** %10, align 8
  %78 = getelementptr inbounds %struct.view, %struct.view* %77, i32 0, i32 1
  %79 = call i32 @clear_position(i32* %78)
  %80 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %81 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load %struct.view*, %struct.view** %5, align 8
  %88 = getelementptr inbounds %struct.view, %struct.view* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 0, i32* %92, align 4
  %93 = load %struct.view*, %struct.view** %5, align 8
  %94 = load %struct.view*, %struct.view** %10, align 8
  %95 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 8
  %97 = load i32, i32* @OPEN_SPLIT, align 4
  %98 = load i32, i32* @OPEN_RELOAD, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @open_argv(%struct.view* %93, %struct.view* %94, i8** %95, i8* %96, i32 %99)
  br label %101

101:                                              ; preds = %69, %68
  %102 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %103 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %106 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @REQ_NONE, align 4
  store i32 %107, i32* %4, align 4
  br label %143

108:                                              ; preds = %3
  %109 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %110 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %4, align 4
  br label %143

116:                                              ; preds = %108
  %117 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %118 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %121 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  %124 = call i32 @open_editor(i8* %119, i32 %123)
  %125 = load i32, i32* @REQ_NONE, align 4
  store i32 %125, i32* %4, align 4
  br label %143

126:                                              ; preds = %3
  %127 = load %struct.view*, %struct.view** %5, align 8
  %128 = getelementptr inbounds %struct.view, %struct.view* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 0, i32* %132, align 4
  %133 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %134 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.view*, %struct.view** %5, align 8
  %137 = getelementptr inbounds %struct.view, %struct.view* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %4, align 4
  br label %143

141:                                              ; preds = %3
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %126, %116, %114, %101, %28, %18
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.grep_line* @grep_get_line(%struct.line*) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @select_view_line(%struct.view*, i32) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

declare dso_local i32 @clear_position(i32*) #1

declare dso_local i32 @open_argv(%struct.view*, %struct.view*, i8**, i8*, i32) #1

declare dso_local i32 @open_editor(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
