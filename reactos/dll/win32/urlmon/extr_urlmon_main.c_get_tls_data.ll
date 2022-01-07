; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_urlmon_main.c_get_tls_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_urlmon_main.c_get_tls_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@urlmon_tls = common dso_local global i64 0, align 8
@TLS_OUT_OF_INDEXES = common dso_local global i64 0, align 8
@tls_cs = common dso_local global i32 0, align 4
@tls_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @get_tls_data() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @urlmon_tls, align 8
  %5 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = call i64 (...) @TlsAlloc()
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %45

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %16 = call i64 @InterlockedCompareExchange(i32* bitcast (i64* @urlmon_tls to i32*), i64 %14, i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @urlmon_tls, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @TlsFree(i64 %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i64, i64* @urlmon_tls, align 8
  %26 = call %struct.TYPE_6__* @TlsGetValue(i64 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %2, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = call %struct.TYPE_6__* @heap_alloc_zero(i32 4)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %2, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %45

34:                                               ; preds = %29
  %35 = call i32 @EnterCriticalSection(i32* @tls_cs)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* @tls_list, i32* %37)
  %39 = call i32 @LeaveCriticalSection(i32* @tls_cs)
  %40 = load i64, i64* @urlmon_tls, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = call i32 @TlsSetValue(i64 %40, %struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %34, %24
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %1, align 8
  br label %45

45:                                               ; preds = %43, %33, %12
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %46
}

declare dso_local i64 @TlsAlloc(...) #1

declare dso_local i64 @InterlockedCompareExchange(i32*, i64, i64) #1

declare dso_local i32 @TlsFree(i64) #1

declare dso_local %struct.TYPE_6__* @TlsGetValue(i64) #1

declare dso_local %struct.TYPE_6__* @heap_alloc_zero(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TlsSetValue(i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
