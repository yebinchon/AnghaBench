; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_ensure_doc_nsevent_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_ensure_doc_nsevent_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@event_info = common dso_local global %struct.TYPE_8__* null, align 8
@EVENT_DEFAULTLISTENER = common dso_local global i32 0, align 4
@EVENT_BIND_TO_BODY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ensure_doc_nsevent_handler(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @event_info, align 8
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @event_info, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EVENT_DEFAULTLISTENER, align 4
  %33 = load i32, i32* @EVENT_BIND_TO_BODY, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26, %18, %2
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @event_info, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EVENT_BIND_TO_BODY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @nsIDOMNode_AddRef(i32* %53)
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i64, i64* @TRUE, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @event_info, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @add_nsevent_listener(%struct.TYPE_7__* %62, i32* %63, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @nsIDOMNode_Release(i32* %73)
  br label %75

75:                                               ; preds = %72, %55
  %76 = load i32, i32* @S_OK, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %37
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @nsIDOMNode_AddRef(i32*) #1

declare dso_local i32 @add_nsevent_listener(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
