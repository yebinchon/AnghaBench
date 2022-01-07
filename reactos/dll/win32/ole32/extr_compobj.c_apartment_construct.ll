; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"creating new apartment, model=%d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"apartment\00", align 1
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Created apartment on OXID %s\0A\00", align 1
@apts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32)* @apartment_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @apartment_construct(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 (...) @GetProcessHeap()
  %7 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %8 = call %struct.TYPE_4__* @HeapAlloc(i32 %6, i32 %7, i32 56)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = call i32 (...) @GetCurrentThreadId()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 11
  %14 = call i32 @list_init(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 10
  %17 = call i32 @list_init(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  %20 = call i32 @list_init(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  %32 = call i32 @InitializeCriticalSection(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = call i32 @DEBUG_SET_CRITSEC_NAME(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = call i64 (...) @GetCurrentProcessId()
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 32
  %52 = or i32 %51, 51966
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  br label %63

55:                                               ; preds = %1
  %56 = call i64 (...) @GetCurrentProcessId()
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 32
  %59 = call i32 (...) @GetCurrentThreadId()
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wine_dbgstr_longlong(i32 %66)
  %68 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = call i32 @list_add_head(i32* @apts, i32* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %72
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32 @DEBUG_SET_CRITSEC_NAME(i32*, i8*) #1

declare dso_local i64 @GetCurrentProcessId(...) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
