; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_sort_view_compare.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_sort_view_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.sort_state }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.line*, %struct.view_column_data*)* }
%struct.line = type { i32 }
%struct.view_column_data = type { i32 }
%struct.sort_state = type { i64 }

@sorting_view = common dso_local global %struct.TYPE_7__* null, align 8
@view_column_order = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_view_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_view_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.view_column_data, align 4
  %9 = alloca %struct.view_column_data, align 4
  %10 = alloca %struct.sort_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.line*
  store %struct.line* %15, %struct.line** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.line*
  store %struct.line* %17, %struct.line** %7, align 8
  %18 = bitcast %struct.view_column_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = bitcast %struct.view_column_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.sort_state* %21, %struct.sort_state** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %23 = call i32 @get_sort_field(%struct.TYPE_7__* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, %struct.line*, %struct.view_column_data*)*, i32 (%struct.TYPE_7__*, %struct.line*, %struct.view_column_data*)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %30 = load %struct.line*, %struct.line** %6, align 8
  %31 = call i32 %28(%struct.TYPE_7__* %29, %struct.line* %30, %struct.view_column_data* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %94

34:                                               ; preds = %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_7__*, %struct.line*, %struct.view_column_data*)*, i32 (%struct.TYPE_7__*, %struct.line*, %struct.view_column_data*)** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sorting_view, align 8
  %41 = load %struct.line*, %struct.line** %7, align 8
  %42 = call i32 %39(%struct.TYPE_7__* %40, %struct.line* %41, %struct.view_column_data* %9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %94

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.line*, %struct.line** %6, align 8
  %49 = load %struct.line*, %struct.line** %7, align 8
  %50 = call i32 @compare_view_column(i32 %47, i32 1, %struct.line* %48, %struct.view_column_data* %8, %struct.line* %49, %struct.view_column_data* %9)
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %79, %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** @view_column_order, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = icmp slt i32 %55, %57
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  br i1 %60, label %61, label %82

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** @view_column_order, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32*, i32** @view_column_order, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.line*, %struct.line** %6, align 8
  %76 = load %struct.line*, %struct.line** %7, align 8
  %77 = call i32 @compare_view_column(i32 %74, i32 0, %struct.line* %75, %struct.view_column_data* %8, %struct.line* %76, %struct.view_column_data* %9)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %69, %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %51

82:                                               ; preds = %59
  %83 = load %struct.sort_state*, %struct.sort_state** %10, align 8
  %84 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 0, %88
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ %89, %87 ], [ %91, %90 ]
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %44, %33
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_sort_field(%struct.TYPE_7__*) #2

declare dso_local i32 @compare_view_column(i32, i32, %struct.line*, %struct.view_column_data*, %struct.line*, %struct.view_column_data*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
