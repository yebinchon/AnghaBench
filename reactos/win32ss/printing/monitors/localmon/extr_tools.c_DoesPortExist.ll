; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_tools.c_DoesPortExist.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_tools.c_DoesPortExist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"EnumPortsW failed with error %lu!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"DllAllocSplMem failed with error %lu!\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DoesPortExist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @EnumPortsW(i32* null, i32 1, i32* null, i64 0, i64* %4, i64* %6)
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i64 (...) @GetLastError()
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %61

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.TYPE_4__* @DllAllocSplMem(i64 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %25, i64* %5, align 8
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %61

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = bitcast %struct.TYPE_4__* %29 to i32*
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @EnumPortsW(i32* null, i32 1, i32* %30, i64 %31, i64* %4, i64* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = call i64 (...) @GetLastError()
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %61

38:                                               ; preds = %28
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %57, %38
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i64 @wcsicmp(i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 1
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %8, align 8
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %41

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %52, %34, %24, %15
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = call i32 @DllFreeSplMem(%struct.TYPE_4__* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @SetLastError(i64 %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @EnumPortsW(i32*, i32, i32*, i64, i64*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local %struct.TYPE_4__* @DllAllocSplMem(i64) #1

declare dso_local i64 @wcsicmp(i32, i32) #1

declare dso_local i32 @DllFreeSplMem(%struct.TYPE_4__*) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
