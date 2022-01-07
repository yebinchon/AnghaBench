; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_tls.c_msvcrt_get_thread_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_tls.c_msvcrt_get_thread_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@msvcrt_tls_index = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@_RT_THREAD = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@MSVCRT_locale = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @msvcrt_get_thread_data() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @GetLastError()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @msvcrt_tls_index, align 4
  %5 = call %struct.TYPE_7__* @TlsGetValue(i32 %4)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %10 = call %struct.TYPE_7__* @HeapAlloc(i32 %8, i32 %9, i32 20)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @_RT_THREAD, align 4
  %14 = call i32 @_amsg_exit(i32 %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i32, i32* @msvcrt_tls_index, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = call i32 @TlsSetValue(i32 %16, %struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @_RT_THREAD, align 4
  %22 = call i32 @_amsg_exit(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = call i32 (...) @GetCurrentThreadId()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSVCRT_locale, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSVCRT_locale, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %23, %0
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @SetLastError(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %45
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_7__* @TlsGetValue(i32) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @_amsg_exit(i32) #1

declare dso_local i32 @TlsSetValue(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
