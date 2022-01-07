; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_timer_create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_timer = type { void (i8*)*, i32, i32, i64, i32, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@DC_SEM_SHARED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NULLHANDLE = common dso_local global i32 0, align 4
@vlc_timer_do = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_timer_create(%struct.vlc_timer** %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_timer**, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vlc_timer*, align 8
  store %struct.vlc_timer** %0, %struct.vlc_timer*** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.vlc_timer* @malloc(i32 40)
  store %struct.vlc_timer* %9, %struct.vlc_timer** %8, align 8
  %10 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %11 = icmp eq %struct.vlc_timer* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load void (i8*)*, void (i8*)** %6, align 8
  %16 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %17 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %16, i32 0, i32 0
  store void (i8*)* %15, void (i8*)** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %20 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %22 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %21, i32 0, i32 5
  %23 = load i32, i32* @DC_SEM_SHARED, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @DosCreateEventSem(i32* null, i32* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @NULLHANDLE, align 4
  %27 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %28 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %30 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %32 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @vlc_timer_do, align 4
  %34 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %35 = call i32 @_beginthread(i32 %33, i32* null, i32 1048576, %struct.vlc_timer* %34)
  %36 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %37 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %39 = load %struct.vlc_timer**, %struct.vlc_timer*** %5, align 8
  store %struct.vlc_timer* %38, %struct.vlc_timer** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %14, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.vlc_timer* @malloc(i32) #1

declare dso_local i32 @DosCreateEventSem(i32*, i32*, i32, i32) #1

declare dso_local i32 @_beginthread(i32, i32*, i32, %struct.vlc_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
