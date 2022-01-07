; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_testcancel.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_testcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_thread = type { i32*, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32)*, %struct.TYPE_2__* }

@NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_testcancel() #0 {
  %1 = alloca %struct.vlc_thread*, align 8
  %2 = alloca %struct.TYPE_2__*, align 8
  %3 = call %struct.vlc_thread* (...) @vlc_thread_self()
  store %struct.vlc_thread* %3, %struct.vlc_thread** %1, align 8
  %4 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %5 = icmp eq %struct.vlc_thread* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %56

7:                                                ; preds = %0
  %8 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %9 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @DosWaitEventSem(i32 %10, i32 0)
  %12 = load i64, i64* @NO_ERROR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %16 = call i32 @vlc_cancel_self(%struct.vlc_thread* %15)
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %19 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %24 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %29 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %2, align 8
  br label %31

31:                                               ; preds = %42, %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %37(i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %2, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %48 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DosPostEventSem(i32 %49)
  %51 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %52 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.vlc_thread*, %struct.vlc_thread** %1, align 8
  %54 = call i32 @vlc_thread_cleanup(%struct.vlc_thread* %53)
  %55 = call i32 (...) @_endthread()
  br label %56

56:                                               ; preds = %6, %46, %22, %17
  ret void
}

declare dso_local %struct.vlc_thread* @vlc_thread_self(...) #1

declare dso_local i64 @DosWaitEventSem(i32, i32) #1

declare dso_local i32 @vlc_cancel_self(%struct.vlc_thread*) #1

declare dso_local i32 @DosPostEventSem(i32) #1

declare dso_local i32 @vlc_thread_cleanup(%struct.vlc_thread*) #1

declare dso_local i32 @_endthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
