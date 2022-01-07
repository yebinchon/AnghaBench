; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threadvar_create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threadvar_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_threadvar = type { i64, void (i8*)*, %struct.vlc_threadvar*, %struct.vlc_threadvar* }

@errno = common dso_local global i32 0, align 4
@TLS_OUT_OF_INDEXES = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@super_mutex = common dso_local global i32 0, align 4
@vlc_threadvar_last = common dso_local global %struct.vlc_threadvar* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_threadvar_create(%struct.vlc_threadvar** %0, void (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_threadvar**, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca %struct.vlc_threadvar*, align 8
  store %struct.vlc_threadvar** %0, %struct.vlc_threadvar*** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  %7 = call %struct.vlc_threadvar* @malloc(i32 32)
  store %struct.vlc_threadvar* %7, %struct.vlc_threadvar** %6, align 8
  %8 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %9 = icmp eq %struct.vlc_threadvar* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = call i64 (...) @TlsAlloc()
  %17 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %18 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %26 = call i32 @free(%struct.vlc_threadvar* %25)
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %15
  %29 = load void (i8*)*, void (i8*)** %5, align 8
  %30 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %31 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %30, i32 0, i32 1
  store void (i8*)* %29, void (i8*)** %31, align 8
  %32 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %33 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %32, i32 0, i32 2
  store %struct.vlc_threadvar* null, %struct.vlc_threadvar** %33, align 8
  %34 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %35 = load %struct.vlc_threadvar**, %struct.vlc_threadvar*** %4, align 8
  store %struct.vlc_threadvar* %34, %struct.vlc_threadvar** %35, align 8
  %36 = call i32 @EnterCriticalSection(i32* @super_mutex)
  %37 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** @vlc_threadvar_last, align 8
  %38 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %39 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %38, i32 0, i32 3
  store %struct.vlc_threadvar* %37, %struct.vlc_threadvar** %39, align 8
  %40 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %41 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %40, i32 0, i32 3
  %42 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %41, align 8
  %43 = icmp ne %struct.vlc_threadvar* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %46 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  %47 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %46, i32 0, i32 3
  %48 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %47, align 8
  %49 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %48, i32 0, i32 2
  store %struct.vlc_threadvar* %45, %struct.vlc_threadvar** %49, align 8
  br label %50

50:                                               ; preds = %44, %28
  %51 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %6, align 8
  store %struct.vlc_threadvar* %51, %struct.vlc_threadvar** @vlc_threadvar_last, align 8
  %52 = call i32 @LeaveCriticalSection(i32* @super_mutex)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %24, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.vlc_threadvar* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @TlsAlloc(...) #1

declare dso_local i32 @free(%struct.vlc_threadvar*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
