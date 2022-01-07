; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_tree_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_tree_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64* }
%struct.line = type { i64, %struct.tree_entry* }
%struct.tree_entry = type { i32, i32 }

@LINE_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Files in /%s\00", align 1
@LINE_DIRECTORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Open parent directory\00", align 1
@LINE_FILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @tree_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.tree_entry*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load %struct.line*, %struct.line** %4, align 8
  %7 = getelementptr inbounds %struct.line, %struct.line* %6, i32 0, i32 1
  %8 = load %struct.tree_entry*, %struct.tree_entry** %7, align 8
  store %struct.tree_entry* %8, %struct.tree_entry** %5, align 8
  %9 = load %struct.line*, %struct.line** %4, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LINE_HEADER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = ptrtoint i64* %17 to i32
  %19 = load %struct.view*, %struct.view** %3, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i32, ...) @string_format(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %85

25:                                               ; preds = %2
  %26 = load %struct.line*, %struct.line** %4, align 8
  %27 = getelementptr inbounds %struct.line, %struct.line* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LINE_DIRECTORY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %33 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @tree_path_is_parent(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.view*, %struct.view** %3, align 8
  %39 = getelementptr inbounds %struct.view, %struct.view* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @string_copy(i64* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.view*, %struct.view** %3, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  br label %85

48:                                               ; preds = %31, %25
  %49 = load %struct.line*, %struct.line** %4, align 8
  %50 = getelementptr inbounds %struct.line, %struct.line* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LINE_FILE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.view*, %struct.view** %3, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %61 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @string_copy_rev(i64* %59, i32 %62)
  %64 = load %struct.view*, %struct.view** %3, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.line*, %struct.line** %4, align 8
  %75 = call i32 @tree_path(%struct.line* %74)
  %76 = call i32 (i32, i8*, i32, ...) @string_format(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %54, %48
  %78 = load %struct.view*, %struct.view** %3, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %82 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @string_copy_rev(i64* %80, i32 %83)
  br label %85

85:                                               ; preds = %77, %37, %14
  ret void
}

declare dso_local i32 @string_format(i32, i8*, i32, ...) #1

declare dso_local i64 @tree_path_is_parent(i32) #1

declare dso_local i32 @string_copy(i64*, i8*) #1

declare dso_local i32 @string_copy_rev(i64*, i32) #1

declare dso_local i32 @tree_path(%struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
