; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_set_event_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_set_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@event_info = common dso_local global %struct.TYPE_10__* null, align 8
@event_types = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Could not create event: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*)* @set_event_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_event_info(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @event_info, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %14
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @nsIDOMEvent_AddRef(i32* %24)
  br label %66

26:                                               ; preds = %4
  %27 = load i64*, i64** @event_types, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @event_info, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %27, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %26
  %38 = load i64*, i64** @event_types, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @event_info, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %38, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nsAString_InitDepend(i32* %10, i64 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @nsIDOMHTMLDocument_CreateEvent(i32 %52, i32* %10, i32** %54)
  store i32 %55, i32* %11, align 4
  %56 = call i32 @nsAString_Finish(i32* %10)
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @NS_FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %37
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @E_FAIL, align 4
  store i32 %63, i32* %5, align 4
  br label %78

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65, %23
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = call i32 @IHTMLDOMNode_AddRef(i32* %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* @S_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %60
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @nsIDOMEvent_AddRef(i32*) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i64) #1

declare dso_local i32 @nsIDOMHTMLDocument_CreateEvent(i32, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @IHTMLDOMNode_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
