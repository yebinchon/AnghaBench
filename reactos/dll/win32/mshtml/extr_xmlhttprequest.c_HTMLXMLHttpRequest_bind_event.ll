; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_HTMLXMLHttpRequest_bind_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_HTMLXMLHttpRequest_bind_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }

@HTMLXMLHttpRequest_bind_event.readystatechangeW = internal constant [17 x i8] c"readystatechange\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@EVENTID_READYSTATECHANGE = common dso_local global i32 0, align 4
@XMLHttpReqEventListenerVtbl = common dso_local global i32 0, align 4
@IID_nsIDOMEventTarget = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"AddEventListener failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @HTMLXMLHttpRequest_bind_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HTMLXMLHttpRequest_bind_event(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_6__* @impl_from_DispatchEx(i32* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EVENTID_READYSTATECHANGE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %75

23:                                               ; preds = %2
  %24 = call %struct.TYPE_8__* @heap_alloc(i32 24)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %75

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32* @XMLHttpReqEventListenerVtbl, i32** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = bitcast i32** %6 to i8**
  %51 = call i64 @nsIXMLHttpRequest_QueryInterface(i32 %49, i32* @IID_nsIDOMEventTarget, i8** %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @NS_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = call i32 @nsAString_InitDepend(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @HTMLXMLHttpRequest_bind_event.readystatechangeW, i64 0, i64 0))
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i64 @nsIDOMEventTarget_AddEventListener(i32* %58, i32* %7, %struct.TYPE_7__* %62, i32 %63, i32 %64, i32 2)
  store i64 %65, i64* %8, align 8
  %66 = call i32 @nsAString_Finish(i32* %7)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @nsIDOMEventTarget_Release(i32* %67)
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @NS_FAILED(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %32
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %22, %31, %72, %32
  ret void
}

declare dso_local %struct.TYPE_6__* @impl_from_DispatchEx(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @heap_alloc(i32) #1

declare dso_local i64 @nsIXMLHttpRequest_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #1

declare dso_local i64 @nsIDOMEventTarget_AddEventListener(i32*, i32*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMEventTarget_Release(i32*) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
