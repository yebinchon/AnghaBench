; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_urlmon_main.c_detach_thread.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_urlmon_main.c_detach_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@urlmon_tls = common dso_local global i64 0, align 8
@TLS_OUT_OF_INDEXES = common dso_local global i64 0, align 8
@tls_cs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"notif_hwnd not destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detach_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_thread() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i64, i64* @urlmon_tls, align 8
  %3 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  %7 = load i64, i64* @urlmon_tls, align 8
  %8 = call %struct.TYPE_4__* @TlsGetValue(i64 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %1, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %31

12:                                               ; preds = %6
  %13 = call i32 @EnterCriticalSection(i32* @tls_cs)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @list_remove(i32* %15)
  %17 = call i32 @LeaveCriticalSection(i32* @tls_cs)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @DestroyWindow(i64 %26)
  br label %28

28:                                               ; preds = %22, %12
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = call i32 @heap_free(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %28, %11, %5
  ret void
}

declare dso_local %struct.TYPE_4__* @TlsGetValue(i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
