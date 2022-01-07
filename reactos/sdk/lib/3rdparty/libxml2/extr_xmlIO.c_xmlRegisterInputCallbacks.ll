; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlRegisterInputCallbacks.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlRegisterInputCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@xmlInputCallbackNr = common dso_local global i64 0, align 8
@MAX_INPUT_CALLBACK = common dso_local global i64 0, align 8
@xmlInputCallbackTable = common dso_local global %struct.TYPE_2__* null, align 8
@xmlInputCallbackInitialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlRegisterInputCallbacks(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* @xmlInputCallbackNr, align 8
  %11 = load i64, i64* @MAX_INPUT_CALLBACK, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %38

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %17 = load i64, i64* @xmlInputCallbackNr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %22 = load i64, i64* @xmlInputCallbackNr, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %27 = load i64, i64* @xmlInputCallbackNr, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xmlInputCallbackTable, align 8
  %32 = load i64, i64* @xmlInputCallbackNr, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  store i32 1, i32* @xmlInputCallbackInitialized, align 4
  %35 = load i64, i64* @xmlInputCallbackNr, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @xmlInputCallbackNr, align 8
  %37 = trunc i64 %35 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %14, %13
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
