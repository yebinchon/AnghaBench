; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xolehlp/extr_xolehlp.c_TransactionOptions_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xolehlp/extr_xolehlp.c_TransactionOptions_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }

@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TransactionOptions_Vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**)* @TransactionOptions_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactionOptions_Create(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %6 = icmp ne %struct.TYPE_6__** %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = call i32 (...) @GetProcessHeap()
  %11 = call %struct.TYPE_5__* @HeapAlloc(i32 %10, i32 0, i32 16)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32* @TransactionOptions_Vtbl, i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %24, align 8
  %25 = load i32, i32* @S_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %14, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
