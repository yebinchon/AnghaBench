; ModuleID = '/home/carl/AnghaBench/tmux/extr_control-notify.c_control_notify_input.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_control-notify.c_control_notify_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.window_pane = type { i8, i32 }
%struct.evbuffer = type { i32 }

@CLIENT_CONTROL_NOOUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%%output %%%u \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @control_notify_input(%struct.client* %0, %struct.window_pane* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.evbuffer*, align 8
  %10 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %5, align 8
  store %struct.window_pane* %1, %struct.window_pane** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.client*, %struct.client** %5, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %88

16:                                               ; preds = %4
  %17 = load %struct.client*, %struct.client** %5, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CLIENT_CONTROL_NOOUTPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %88

24:                                               ; preds = %16
  %25 = load %struct.client*, %struct.client** %5, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @winlink_find_by_window(i32* %28, i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %24
  %35 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %35, %struct.evbuffer** %9, align 8
  %36 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %37 = icmp eq %struct.evbuffer* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %42 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %43 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = call i32 @evbuffer_add_printf(%struct.evbuffer* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8 signext %44)
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %79, %40
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %55, 32
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 92
  br i1 %63, label %64, label %71

64:                                               ; preds = %57, %50
  %65 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @evbuffer_add_printf(%struct.evbuffer* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 signext %69)
  br label %78

71:                                               ; preds = %57
  %72 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @evbuffer_add_printf(%struct.evbuffer* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 signext %76)
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %46

82:                                               ; preds = %46
  %83 = load %struct.client*, %struct.client** %5, align 8
  %84 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %85 = call i32 @control_write_buffer(%struct.client* %83, %struct.evbuffer* %84)
  %86 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %87 = call i32 @evbuffer_free(%struct.evbuffer* %86)
  br label %88

88:                                               ; preds = %15, %23, %82, %24
  ret void
}

declare dso_local i32* @winlink_find_by_window(i32*, i32) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i8 signext) #1

declare dso_local i32 @control_write_buffer(%struct.client*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
