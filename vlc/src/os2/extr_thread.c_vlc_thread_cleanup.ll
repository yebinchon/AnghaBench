; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_thread_cleanup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_thread_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*)*, %struct.TYPE_5__* }
%struct.vlc_thread = type { i32, i32, i32, i64 }

@super_mutex = common dso_local global i32 0, align 4
@vlc_threadvar_last = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_thread*)* @vlc_thread_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_thread_cleanup(%struct.vlc_thread* %0) #0 {
  %2 = alloca %struct.vlc_thread*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  store %struct.vlc_thread* %0, %struct.vlc_thread** %2, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = call i32 @vlc_mutex_lock(i32* @super_mutex)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vlc_threadvar_last, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  br label %8

8:                                                ; preds = %31, %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i8* @vlc_threadvar_get(%struct.TYPE_5__* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i8*)*, i32 (i8*)** %18, align 8
  %20 = icmp ne i32 (i8*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = call i32 @vlc_mutex_unlock(i32* @super_mutex)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @vlc_threadvar_set(%struct.TYPE_5__* %23, i32* null)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i8*)*, i32 (i8*)** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 %27(i8* %28)
  br label %5

30:                                               ; preds = %16, %11
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %3, align 8
  br label %8

35:                                               ; preds = %8
  %36 = call i32 @vlc_mutex_unlock(i32* @super_mutex)
  %37 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  %38 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  %43 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @DosCloseEventSem(i32 %44)
  %46 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  %47 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DosCloseEventSem(i32 %48)
  %50 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  %51 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @soclose(i32 %52)
  %54 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  %55 = call i32 @free(%struct.vlc_thread* %54)
  br label %56

56:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i8* @vlc_threadvar_get(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_threadvar_set(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DosCloseEventSem(i32) #1

declare dso_local i32 @soclose(i32) #1

declare dso_local i32 @free(%struct.vlc_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
