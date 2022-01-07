; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_threadvar_create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_threadvar_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_threadvar = type { void (i8*)*, %struct.vlc_threadvar*, %struct.vlc_threadvar*, i32 }

@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@super_mutex = common dso_local global i32 0, align 4
@vlc_threadvar_last = common dso_local global %struct.vlc_threadvar* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_threadvar_create(%struct.vlc_threadvar** %0, void (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_threadvar**, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_threadvar*, align 8
  store %struct.vlc_threadvar** %0, %struct.vlc_threadvar*** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  %8 = call %struct.vlc_threadvar* @malloc(i32 32)
  store %struct.vlc_threadvar* %8, %struct.vlc_threadvar** %7, align 8
  %9 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %10 = icmp eq %struct.vlc_threadvar* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %18 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %17, i32 0, i32 3
  %19 = call i64 @DosAllocThreadLocalMemory(i32 1, i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %24 = call i32 @free(%struct.vlc_threadvar* %23)
  %25 = load i32, i32* @EAGAIN, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %16
  %27 = load void (i8*)*, void (i8*)** %5, align 8
  %28 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %29 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %28, i32 0, i32 0
  store void (i8*)* %27, void (i8*)** %29, align 8
  %30 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %31 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %30, i32 0, i32 1
  store %struct.vlc_threadvar* null, %struct.vlc_threadvar** %31, align 8
  %32 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %33 = load %struct.vlc_threadvar**, %struct.vlc_threadvar*** %4, align 8
  store %struct.vlc_threadvar* %32, %struct.vlc_threadvar** %33, align 8
  %34 = call i32 @vlc_mutex_lock(i32* @super_mutex)
  %35 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** @vlc_threadvar_last, align 8
  %36 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %37 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %36, i32 0, i32 2
  store %struct.vlc_threadvar* %35, %struct.vlc_threadvar** %37, align 8
  %38 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %39 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %38, i32 0, i32 2
  %40 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %39, align 8
  %41 = icmp ne %struct.vlc_threadvar* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %44 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  %45 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %44, i32 0, i32 2
  %46 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %45, align 8
  %47 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %46, i32 0, i32 1
  store %struct.vlc_threadvar* %43, %struct.vlc_threadvar** %47, align 8
  br label %48

48:                                               ; preds = %42, %26
  %49 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %7, align 8
  store %struct.vlc_threadvar* %49, %struct.vlc_threadvar** @vlc_threadvar_last, align 8
  %50 = call i32 @vlc_mutex_unlock(i32* @super_mutex)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %22, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.vlc_threadvar* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DosAllocThreadLocalMemory(i32, i32*) #1

declare dso_local i32 @free(%struct.vlc_threadvar*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
