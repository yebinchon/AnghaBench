; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_NetBIOSShutdown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_NetBIOSShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (...)* }

@gNBTable = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@gNumTransports = common dso_local global i64 0, align 8
@gTransports = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NetBIOSShutdown() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @EnterCriticalSection(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 2))
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %39, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 0), align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 1), align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %7
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 1), align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = icmp ne i32 (i32)* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 1), align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 1), align 8
  %32 = load i64, i64* %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %30(i32 %36)
  br label %38

38:                                               ; preds = %23, %14, %7
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %1, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %1, align 8
  br label %3

42:                                               ; preds = %3
  store i64 0, i64* %1, align 8
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @gNumTransports, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gTransports, align 8
  %49 = load i64, i64* %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = icmp ne i32 (...)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gTransports, align 8
  %57 = load i64, i64* %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32 (...)*, i32 (...)** %60, align 8
  %62 = call i32 (...) %61()
  br label %63

63:                                               ; preds = %55, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %1, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %1, align 8
  br label %43

67:                                               ; preds = %43
  %68 = call i32 @LeaveCriticalSection(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 2))
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 2, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  %73 = call i32 @DeleteCriticalSection(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 2))
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gNBTable, i32 0, i32 1), align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, %struct.TYPE_18__* %75)
  ret void
}

declare dso_local i32 @EnterCriticalSection(%struct.TYPE_17__*) #1

declare dso_local i32 @LeaveCriticalSection(%struct.TYPE_17__*) #1

declare dso_local i32 @DeleteCriticalSection(%struct.TYPE_17__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
