; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_tree_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_tree_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64*, i32, i32 }
%struct.line = type { i32, %struct.tree_entry* }
%struct.tree_entry = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Blame only supported for files\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Edit only supported for files\00", align 1
@REQ_VIEW_CLOSE = common dso_local global i32 0, align 4
@tree_view_history = common dso_local global i32 0, align 4
@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @tree_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree_entry*, align 8
  %10 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %11 = load %struct.line*, %struct.line** %7, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 1
  %13 = load %struct.tree_entry*, %struct.tree_entry** %12, align 8
  store %struct.tree_entry* %13, %struct.tree_entry** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %83 [
    i32 128, label %15
    i32 131, label %34
    i32 129, label %65
    i32 132, label %65
    i32 130, label %82
  ]

15:                                               ; preds = %3
  %16 = load %struct.line*, %struct.line** %7, align 8
  %17 = getelementptr inbounds %struct.line, %struct.line* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 133
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @REQ_NONE, align 4
  store i32 %22, i32* %4, align 4
  br label %145

23:                                               ; preds = %15
  %24 = load %struct.view*, %struct.view** %5, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.view*, %struct.view** %5, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @string_copy(i32 %28, i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %4, align 4
  br label %145

34:                                               ; preds = %3
  %35 = load %struct.line*, %struct.line** %7, align 8
  %36 = getelementptr inbounds %struct.line, %struct.line* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 133
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @report(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

41:                                               ; preds = %34
  %42 = load %struct.view*, %struct.view** %5, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @is_head_commit(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %49 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %52 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @open_blob_editor(i32 %50, i32 %53, i32 0)
  br label %62

55:                                               ; preds = %41
  %56 = load %struct.view*, %struct.view** %5, align 8
  %57 = getelementptr inbounds %struct.view, %struct.view* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @open_editor(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %55, %47
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, i32* @REQ_NONE, align 4
  store i32 %64, i32* %4, align 4
  br label %145

65:                                               ; preds = %3, %3
  %66 = load %struct.view*, %struct.view** %5, align 8
  %67 = getelementptr inbounds %struct.view, %struct.view* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @REQ_VIEW_CLOSE, align 4
  store i32 %74, i32* %4, align 4
  br label %145

75:                                               ; preds = %65
  %76 = load %struct.view*, %struct.view** %5, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 0
  %78 = call i32 @pop_tree_stack_entry(i32* %77)
  %79 = load %struct.view*, %struct.view** %5, align 8
  %80 = call i32 @reload_view(%struct.view* %79)
  %81 = load i32, i32* @REQ_NONE, align 4
  store i32 %81, i32* %4, align 4
  br label %145

82:                                               ; preds = %3
  br label %85

83:                                               ; preds = %3
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %4, align 4
  br label %145

85:                                               ; preds = %82
  %86 = load %struct.view*, %struct.view** %5, align 8
  %87 = getelementptr inbounds %struct.view, %struct.view* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = call i32 @reset_view_history(i32* @tree_view_history)
  br label %95

95:                                               ; preds = %93, %85
  %96 = load %struct.line*, %struct.line** %7, align 8
  %97 = getelementptr inbounds %struct.line, %struct.line* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %141 [
    i32 134, label %99
    i32 133, label %128
  ]

99:                                               ; preds = %95
  %100 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %101 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tree_path_is_parent(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.view*, %struct.view** %5, align 8
  %107 = getelementptr inbounds %struct.view, %struct.view* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.view*, %struct.view** %5, align 8
  %115 = getelementptr inbounds %struct.view, %struct.view* %114, i32 0, i32 0
  %116 = call i32 @pop_tree_stack_entry(i32* %115)
  br label %125

117:                                              ; preds = %105, %99
  %118 = load %struct.line*, %struct.line** %7, align 8
  %119 = call i8* @tree_path(%struct.line* %118)
  store i8* %119, i8** %10, align 8
  %120 = load %struct.view*, %struct.view** %5, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.view*, %struct.view** %5, align 8
  %123 = getelementptr inbounds %struct.view, %struct.view* %122, i32 0, i32 0
  %124 = call i32 @push_tree_stack_entry(%struct.view* %120, i8* %121, i32* %123)
  br label %125

125:                                              ; preds = %117, %113
  %126 = load %struct.view*, %struct.view** %5, align 8
  %127 = call i32 @reload_view(%struct.view* %126)
  br label %143

128:                                              ; preds = %95
  %129 = load %struct.view*, %struct.view** %5, align 8
  %130 = call i32 @view_is_displayed(%struct.view* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @OPEN_SPLIT, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @OPEN_DEFAULT, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %8, align 4
  %138 = load %struct.view*, %struct.view** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @open_blob_view(%struct.view* %138, i32 %139)
  br label %143

141:                                              ; preds = %95
  %142 = load i32, i32* @REQ_NONE, align 4
  store i32 %142, i32* %4, align 4
  br label %145

143:                                              ; preds = %136, %125
  %144 = load i32, i32* @REQ_NONE, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %141, %83, %75, %73, %63, %23, %20
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @string_copy(i32, i32) #1

declare dso_local i32 @is_head_commit(i32) #1

declare dso_local i32 @open_blob_editor(i32, i32, i32) #1

declare dso_local i32 @open_editor(i32, i32) #1

declare dso_local i32 @pop_tree_stack_entry(i32*) #1

declare dso_local i32 @reload_view(%struct.view*) #1

declare dso_local i32 @reset_view_history(i32*) #1

declare dso_local i32 @tree_path_is_parent(i32) #1

declare dso_local i8* @tree_path(%struct.line*) #1

declare dso_local i32 @push_tree_stack_entry(%struct.view*, i8*, i32*) #1

declare dso_local i32 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @open_blob_view(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
