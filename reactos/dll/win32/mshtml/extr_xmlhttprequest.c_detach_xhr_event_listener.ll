; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_detach_xhr_event_listener.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_xmlhttprequest.c_detach_xhr_event_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@detach_xhr_event_listener.readystatechangeW = internal constant [19 x i8] c"onreadystatechange\00", align 16
@IID_nsIDOMEventTarget = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @detach_xhr_event_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_xhr_event_listener(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = bitcast i32** %3 to i8**
  %12 = call i64 @nsIXMLHttpRequest_QueryInterface(i32 %10, i32* @IID_nsIDOMEventTarget, i8** %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NS_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 @nsAString_InitDepend(i32* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @detach_xhr_event_listener.readystatechangeW, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @nsIDOMEventTarget_RemoveEventListener(i32* %19, i32* %4, i32* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = call i32 @nsAString_Finish(i32* %4)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @nsIDOMEventTarget_Release(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @nsIDOMEventListener_Release(i32* %34)
  ret void
}

declare dso_local i64 @nsIXMLHttpRequest_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #1

declare dso_local i64 @nsIDOMEventTarget_RemoveEventListener(i32*, i32*, i32*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMEventTarget_Release(i32*) #1

declare dso_local i32 @nsIDOMEventListener_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
