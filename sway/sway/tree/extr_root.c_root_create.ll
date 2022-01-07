; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_root = type { %struct.TYPE_8__, %struct.TYPE_7__*, i8*, i8*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to allocate sway_root\00", align 1
@N_ROOT = common dso_local global i32 0, align 4
@output_layout_handle_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_root* @root_create() #0 {
  %1 = alloca %struct.sway_root*, align 8
  %2 = alloca %struct.sway_root*, align 8
  %3 = call %struct.sway_root* @calloc(i32 1, i32 56)
  store %struct.sway_root* %3, %struct.sway_root** %2, align 8
  %4 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %5 = icmp ne %struct.sway_root* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @SWAY_ERROR, align 4
  %8 = call i32 @sway_log(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.sway_root* null, %struct.sway_root** %1, align 8
  br label %47

9:                                                ; preds = %0
  %10 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %11 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %10, i32 0, i32 8
  %12 = load i32, i32* @N_ROOT, align 4
  %13 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %14 = call i32 @node_init(i32* %11, i32 %12, %struct.sway_root* %13)
  %15 = call %struct.TYPE_7__* (...) @wlr_output_layout_create()
  %16 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %17 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %16, i32 0, i32 1
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  %18 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %19 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %18, i32 0, i32 7
  %20 = call i32 @wl_list_init(i32* %19)
  %21 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %22 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %21, i32 0, i32 5
  %23 = call i32 @wl_list_init(i32* %22)
  %24 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %25 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @wl_signal_init(i32* %26)
  %28 = call i8* (...) @create_list()
  %29 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %30 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = call i8* (...) @create_list()
  %32 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %33 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @output_layout_handle_change, align 4
  %35 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %36 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %39 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  %44 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %43, i32 0, i32 0
  %45 = call i32 @wl_signal_add(i32* %42, %struct.TYPE_8__* %44)
  %46 = load %struct.sway_root*, %struct.sway_root** %2, align 8
  store %struct.sway_root* %46, %struct.sway_root** %1, align 8
  br label %47

47:                                               ; preds = %9, %6
  %48 = load %struct.sway_root*, %struct.sway_root** %1, align 8
  ret %struct.sway_root* %48
}

declare dso_local %struct.sway_root* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @node_init(i32*, i32, %struct.sway_root*) #1

declare dso_local %struct.TYPE_7__* @wlr_output_layout_create(...) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wl_signal_init(i32*) #1

declare dso_local i8* @create_list(...) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
