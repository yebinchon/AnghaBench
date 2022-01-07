; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_cb_pane_tabs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_cb_pane_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.format_entry = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.format_entry*)* @format_cb_pane_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_cb_pane_tabs(%struct.format_tree* %0, %struct.format_entry* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.format_entry*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.format_entry* %1, %struct.format_entry** %4, align 8
  %9 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %10 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %9, i32 0, i32 0
  %11 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %11, %struct.window_pane** %5, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %13 = icmp eq %struct.window_pane* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %68

15:                                               ; preds = %2
  %16 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %16, %struct.evbuffer** %6, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %18 = icmp eq %struct.evbuffer* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %25 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %22
  %32 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %33 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @bit_test(i32 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %42 = call i32 @EVBUFFER_LENGTH(%struct.evbuffer* %41)
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %46 = call i32 @evbuffer_add(%struct.evbuffer* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @evbuffer_add_printf(%struct.evbuffer* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %56 = call i32 @EVBUFFER_LENGTH(%struct.evbuffer* %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %60 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %63 = call i32 @EVBUFFER_DATA(%struct.evbuffer* %62)
  %64 = call i32 @xasprintf(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %58, %54
  %66 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %67 = call i32 @evbuffer_free(%struct.evbuffer* %66)
  br label %68

68:                                               ; preds = %65, %14
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @bit_test(i32, i64) #1

declare dso_local i32 @EVBUFFER_LENGTH(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i64) #1

declare dso_local i32 @xasprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @EVBUFFER_DATA(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
