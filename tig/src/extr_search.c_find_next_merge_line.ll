; ModuleID = '/home/carl/AnghaBench/tig/src/extr_search.c_find_next_merge_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_search.c_find_next_merge_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.TYPE_5__*, %struct.line*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.view*, %struct.line*, %struct.view_column_data*)* }
%struct.view_column_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.graph_canvas*)* }
%struct.graph_canvas = type { i32 }
%struct.line = type { %struct.commit* }
%struct.commit = type { %struct.graph_canvas }
%struct.TYPE_4__ = type { i64 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No merge commit found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, i32)* @find_next_merge_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_merge_line(%struct.view* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.graph_canvas*, align 8
  %14 = alloca %struct.view_column_data, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.view*, %struct.view** %5, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  br label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.view*, %struct.view** %5, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %27, %31
  br label %38

33:                                               ; preds = %21
  %34 = load %struct.view*, %struct.view** %5, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i64 [ %32, %24 ], [ %37, %33 ]
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %17
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %115, %40
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @abs(i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %119

47:                                               ; preds = %42
  %48 = load %struct.view*, %struct.view** %5, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.view*, %struct.view** %5, align 8
  %59 = getelementptr inbounds %struct.view, %struct.view* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %76

63:                                               ; preds = %47
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.view*, %struct.view** %5, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.view*, %struct.view** %5, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.view*, %struct.view** %5, align 8
  %78 = getelementptr inbounds %struct.view, %struct.view* %77, i32 0, i32 2
  %79 = load %struct.line*, %struct.line** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.line, %struct.line* %79, i64 %80
  store %struct.line* %81, %struct.line** %11, align 8
  %82 = load %struct.line*, %struct.line** %11, align 8
  %83 = getelementptr inbounds %struct.line, %struct.line* %82, i32 0, i32 0
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  store %struct.commit* %84, %struct.commit** %12, align 8
  %85 = load %struct.commit*, %struct.commit** %12, align 8
  %86 = getelementptr inbounds %struct.commit, %struct.commit* %85, i32 0, i32 0
  store %struct.graph_canvas* %86, %struct.graph_canvas** %13, align 8
  %87 = load %struct.view*, %struct.view** %5, align 8
  %88 = getelementptr inbounds %struct.view, %struct.view* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32 (%struct.view*, %struct.line*, %struct.view_column_data*)*, i32 (%struct.view*, %struct.line*, %struct.view_column_data*)** %90, align 8
  %92 = load %struct.view*, %struct.view** %5, align 8
  %93 = load %struct.line*, %struct.line** %11, align 8
  %94 = call i32 %91(%struct.view* %92, %struct.line* %93, %struct.view_column_data* %14)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %76
  br label %115

97:                                               ; preds = %76
  %98 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %14, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %14, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32 (%struct.graph_canvas*)*, i32 (%struct.graph_canvas*)** %104, align 8
  %106 = load %struct.graph_canvas*, %struct.graph_canvas** %13, align 8
  %107 = call i32 %105(%struct.graph_canvas* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %115

110:                                              ; preds = %101, %97
  %111 = load %struct.view*, %struct.view** %5, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @select_view_line(%struct.view* %111, i64 %112)
  %114 = load i32, i32* @SUCCESS, align 4
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %109, %96
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %42

119:                                              ; preds = %42
  %120 = call i32 @success(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %110
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @select_view_line(%struct.view*, i64) #1

declare dso_local i32 @success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
