; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_check_event_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_check_event_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EVENTID_LAST = common dso_local global i32 0, align 4
@event_info = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%p.%s = %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_event_attr(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @EVENTID_LAST, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @event_info, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @get_elem_attr_value(i32* %17, i32* %23, i32* %6, i32** %5)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @NS_SUCCEEDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %16
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %74

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @event_info, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @debugstr_w(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @debugstr_w(i32* %42)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %34, i32 %41, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @script_parse_event(i32 %47, i32* %48)
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %33
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @get_node(%struct.TYPE_8__* %53, i32* %54, i32 %55, %struct.TYPE_9__** %8)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @SUCCEEDED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @set_event_handler_disp(i32* %62, i32 %63, i32* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = call i32 @node_release(%struct.TYPE_9__* %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @IDispatch_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %33
  %72 = call i32 @nsAString_Finish(i32* %6)
  br label %73

73:                                               ; preds = %71, %16
  br label %74

74:                                               ; preds = %73, %32
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %12

77:                                               ; preds = %12
  ret void
}

declare dso_local i32 @get_elem_attr_value(i32*, i32*, i32*, i32**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32* @script_parse_event(i32, i32*) #1

declare dso_local i32 @get_node(%struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @set_event_handler_disp(i32*, i32, i32*) #1

declare dso_local i32 @node_release(%struct.TYPE_9__*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
