; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlPopInputCallbacks.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlPopInputCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@xmlInputCallbackInitialized = common dso_local global i32 0, align 4
@xmlInputCallbackNr = common dso_local global i64 0, align 8
@xmlInputCallbackTable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlPopInputCallbacks() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @xmlInputCallbackInitialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %30

5:                                                ; preds = %0
  %6 = load i64, i64* @xmlInputCallbackNr, align 8
  %7 = icmp ule i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %30

9:                                                ; preds = %5
  %10 = load i64, i64* @xmlInputCallbackNr, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* @xmlInputCallbackNr, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %13 = load i64, i64* @xmlInputCallbackNr, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %17 = load i64, i64* @xmlInputCallbackNr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %21 = load i64, i64* @xmlInputCallbackNr, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %25 = load i64, i64* @xmlInputCallbackNr, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @xmlInputCallbackNr, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %9, %8, %4
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
