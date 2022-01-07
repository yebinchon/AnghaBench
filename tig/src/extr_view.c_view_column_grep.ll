; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_column_grep.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_column_grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.view_column*, %struct.TYPE_6__* }
%struct.view_column = type { i64, %struct.TYPE_5__, %struct.view_column* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.view*, %struct.line*, %struct.view_column_data*)* }
%struct.view_column_data = type { i32, i32 }
%struct.line = type { i32 }

@VIEW_COLUMN_COMMIT_TITLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_column_grep(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.view_column_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.view_column*, align 8
  %9 = alloca [2 x i8*], align 16
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %10 = bitcast %struct.view_column_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.view*, %struct.view** %4, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32 (%struct.view*, %struct.line*, %struct.view_column_data*)*, i32 (%struct.view*, %struct.line*, %struct.view_column_data*)** %14, align 8
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = load %struct.line*, %struct.line** %5, align 8
  %18 = call i32 %15(%struct.view* %16, %struct.line* %17, %struct.view_column_data* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  %23 = load %struct.view*, %struct.view** %4, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load %struct.view_column*, %struct.view_column** %24, align 8
  store %struct.view_column* %25, %struct.view_column** %8, align 8
  br label %26

26:                                               ; preds = %62, %22
  %27 = load %struct.view_column*, %struct.view_column** %8, align 8
  %28 = icmp ne %struct.view_column* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %31 = load %struct.view*, %struct.view** %4, align 8
  %32 = load %struct.view_column*, %struct.view_column** %8, align 8
  %33 = call i8* @view_column_text(%struct.view* %31, %struct.view_column_data* %6, %struct.view_column* %32)
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* null, i8** %34, align 8
  %35 = load %struct.view*, %struct.view** %4, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %37 = call i64 @grep_text(%struct.view* %35, i8** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %67

40:                                               ; preds = %29
  %41 = load %struct.view_column*, %struct.view_column** %8, align 8
  %42 = getelementptr inbounds %struct.view_column, %struct.view_column* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VIEW_COLUMN_COMMIT_TITLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.view_column*, %struct.view_column** %8, align 8
  %48 = getelementptr inbounds %struct.view_column, %struct.view_column* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.view*, %struct.view** %4, align 8
  %55 = load %struct.view_column*, %struct.view_column** %8, align 8
  %56 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @grep_refs(%struct.view* %54, %struct.view_column* %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %67

61:                                               ; preds = %53, %46, %40
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.view_column*, %struct.view_column** %8, align 8
  %64 = getelementptr inbounds %struct.view_column, %struct.view_column* %63, i32 0, i32 2
  %65 = load %struct.view_column*, %struct.view_column** %64, align 8
  store %struct.view_column* %65, %struct.view_column** %8, align 8
  br label %26

66:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %39, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @view_column_text(%struct.view*, %struct.view_column_data*, %struct.view_column*) #2

declare dso_local i64 @grep_text(%struct.view*, i8**) #2

declare dso_local i64 @grep_refs(%struct.view*, %struct.view_column*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
