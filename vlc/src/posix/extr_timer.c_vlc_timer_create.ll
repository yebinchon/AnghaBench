; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_timer.c_vlc_timer_create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_timer.c_vlc_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_timer = type { void (i8*)*, i32, i32, i32, i32, i64, i64, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@vlc_timer_thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4

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
  %9 = call %struct.vlc_timer* @malloc(i32 48)
  store %struct.vlc_timer* %9, %struct.vlc_timer** %8, align 8
  %10 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %11 = icmp eq %struct.vlc_timer* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %19 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %18, i32 0, i32 1
  %20 = call i32 @vlc_mutex_init(i32* %19)
  %21 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %22 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %21, i32 0, i32 2
  %23 = call i32 @vlc_cond_init(i32* %22)
  %24 = load void (i8*)*, void (i8*)** %6, align 8
  %25 = call i32 @assert(void (i8*)* %24)
  %26 = load void (i8*)*, void (i8*)** %6, align 8
  %27 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %28 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %27, i32 0, i32 0
  store void (i8*)* %26, void (i8*)** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %31 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %33 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %35 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %37 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %36, i32 0, i32 4
  %38 = call i32 @atomic_init(i32* %37, i32 0)
  %39 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %40 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %39, i32 0, i32 3
  %41 = load i32, i32* @vlc_timer_thread, align 4
  %42 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %43 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %44 = call i64 @vlc_clone(i32* %40, i32 %41, %struct.vlc_timer* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %17
  %47 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %48 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %47, i32 0, i32 2
  %49 = call i32 @vlc_cond_destroy(i32* %48)
  %50 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %51 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %50, i32 0, i32 1
  %52 = call i32 @vlc_mutex_destroy(i32* %51)
  %53 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %54 = call i32 @free(%struct.vlc_timer* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %17
  %57 = load %struct.vlc_timer*, %struct.vlc_timer** %8, align 8
  %58 = load %struct.vlc_timer**, %struct.vlc_timer*** %5, align 8
  store %struct.vlc_timer* %57, %struct.vlc_timer** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %46, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.vlc_timer* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @assert(void (i8*)*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.vlc_timer*, i32) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.vlc_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
