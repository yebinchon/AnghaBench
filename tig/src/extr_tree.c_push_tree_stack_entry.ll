; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_push_tree_stack_entry.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_push_tree_stack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.position = type { i32 }
%struct.view_state = type { i32 }

@tree_view_history = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, i8*, %struct.position*)* @push_tree_stack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_tree_stack_entry(%struct.view* %0, i8* %1, %struct.position* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.position*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.view_state*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.position* %2, %struct.position** %6, align 8
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = getelementptr inbounds %struct.view, %struct.view* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load %struct.position*, %struct.position** %6, align 8
  %24 = call %struct.view_state* @push_view_history_state(i32* @tree_view_history, %struct.position* %23, i8** %8)
  store %struct.view_state* %24, %struct.view_state** %9, align 8
  %25 = load %struct.view_state*, %struct.view_state** %9, align 8
  %26 = icmp ne %struct.view_state* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.view*, %struct.view** %4, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @string_format_from(i8* %33, i64* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = call i32 @pop_tree_stack_entry(i32* null)
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.position*, %struct.position** %6, align 8
  %41 = call i32 @clear_position(%struct.position* %40)
  br label %42

42:                                               ; preds = %39, %37, %27
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.view_state* @push_view_history_state(i32*, %struct.position*, i8**) #1

declare dso_local i32 @string_format_from(i8*, i64*, i8*, i8*) #1

declare dso_local i32 @pop_tree_stack_entry(i32*) #1

declare dso_local i32 @clear_position(%struct.position*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
