; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_single.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32* }
%struct.client = type { i32 }
%struct.session = type { i32 }
%struct.winlink = type { i32 }
%struct.window_pane = type { i32 }
%struct.format_tree = type { i32 }

@FORMAT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_single(%struct.cmdq_item* %0, i8* %1, %struct.client* %2, %struct.session* %3, %struct.winlink* %4, %struct.window_pane* %5) #0 {
  %7 = alloca %struct.cmdq_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.winlink*, align 8
  %12 = alloca %struct.window_pane*, align 8
  %13 = alloca %struct.format_tree*, align 8
  %14 = alloca i8*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.client* %2, %struct.client** %9, align 8
  store %struct.session* %3, %struct.session** %10, align 8
  store %struct.winlink* %4, %struct.winlink** %11, align 8
  store %struct.window_pane* %5, %struct.window_pane** %12, align 8
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %16 = icmp ne %struct.cmdq_item* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %22 = load i32, i32* @FORMAT_NONE, align 4
  %23 = call %struct.format_tree* @format_create(i32* %20, %struct.cmdq_item* %21, i32 %22, i32 0)
  store %struct.format_tree* %23, %struct.format_tree** %13, align 8
  br label %28

24:                                               ; preds = %6
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %26 = load i32, i32* @FORMAT_NONE, align 4
  %27 = call %struct.format_tree* @format_create(i32* null, %struct.cmdq_item* %25, i32 %26, i32 0)
  store %struct.format_tree* %27, %struct.format_tree** %13, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.format_tree*, %struct.format_tree** %13, align 8
  %30 = load %struct.client*, %struct.client** %9, align 8
  %31 = load %struct.session*, %struct.session** %10, align 8
  %32 = load %struct.winlink*, %struct.winlink** %11, align 8
  %33 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %34 = call i32 @format_defaults(%struct.format_tree* %29, %struct.client* %30, %struct.session* %31, %struct.winlink* %32, %struct.window_pane* %33)
  %35 = load %struct.format_tree*, %struct.format_tree** %13, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @format_expand(%struct.format_tree* %35, i8* %36)
  store i8* %37, i8** %14, align 8
  %38 = load %struct.format_tree*, %struct.format_tree** %13, align 8
  %39 = call i32 @format_free(%struct.format_tree* %38)
  %40 = load i8*, i8** %14, align 8
  ret i8* %40
}

declare dso_local %struct.format_tree* @format_create(i32*, %struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
