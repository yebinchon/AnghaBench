; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_tree_draw.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_tree_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64, %struct.tree_entry* }
%struct.tree_entry = type { i32 }

@LINE_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Directory path /%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*, i32)* @tree_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_draw(%struct.view* %0, %struct.line* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_entry*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.line*, %struct.line** %6, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 1
  %11 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  store %struct.tree_entry* %11, %struct.tree_entry** %8, align 8
  %12 = load %struct.line*, %struct.line** %6, align 8
  %13 = getelementptr inbounds %struct.line, %struct.line* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LINE_HEADER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.view*, %struct.view** %5, align 8
  %19 = load %struct.line*, %struct.line** %6, align 8
  %20 = getelementptr inbounds %struct.line, %struct.line* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %23 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @draw_formatted(%struct.view* %18, i64 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 1, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.view*, %struct.view** %5, align 8
  %28 = load %struct.line*, %struct.line** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @view_column_draw(%struct.view* %27, %struct.line* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @draw_formatted(%struct.view*, i64, i8*, i32) #1

declare dso_local i32 @view_column_draw(%struct.view*, %struct.line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
