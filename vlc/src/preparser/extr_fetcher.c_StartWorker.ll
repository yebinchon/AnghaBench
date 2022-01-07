; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_StartWorker.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_StartWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_worker = type { i32 }
%struct.fetcher_request = type { i32 }
%struct.fetcher_thread = type { void (i32*, %struct.fetcher_request.0*)*, i32, i32, i32, i32*, %struct.background_worker*, %struct.fetcher_request* }
%struct.fetcher_request.0 = type opaque

@VLC_ENOMEM = common dso_local global i32 0, align 4
@FetcherThread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, void (i32*, %struct.fetcher_request*)*, %struct.background_worker*, %struct.fetcher_request*, i8**)* @StartWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartWorker(i32* %0, void (i32*, %struct.fetcher_request*)* %1, %struct.background_worker* %2, %struct.fetcher_request* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca void (i32*, %struct.fetcher_request*)*, align 8
  %9 = alloca %struct.background_worker*, align 8
  %10 = alloca %struct.fetcher_request*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.fetcher_thread*, align 8
  store i32* %0, i32** %7, align 8
  store void (i32*, %struct.fetcher_request*)* %1, void (i32*, %struct.fetcher_request*)** %8, align 8
  store %struct.background_worker* %2, %struct.background_worker** %9, align 8
  store %struct.fetcher_request* %3, %struct.fetcher_request** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = call %struct.fetcher_thread* @malloc(i32 48)
  store %struct.fetcher_thread* %13, %struct.fetcher_thread** %12, align 8
  %14 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %15 = icmp ne %struct.fetcher_thread* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %21, i32* %6, align 4
  br label %61

22:                                               ; preds = %5
  %23 = load %struct.fetcher_request*, %struct.fetcher_request** %10, align 8
  %24 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %25 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %24, i32 0, i32 6
  store %struct.fetcher_request* %23, %struct.fetcher_request** %25, align 8
  %26 = load %struct.background_worker*, %struct.background_worker** %9, align 8
  %27 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %28 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %27, i32 0, i32 5
  store %struct.background_worker* %26, %struct.background_worker** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %31 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load void (i32*, %struct.fetcher_request*)*, void (i32*, %struct.fetcher_request*)** %8, align 8
  %33 = bitcast void (i32*, %struct.fetcher_request*)* %32 to void (i32*, %struct.fetcher_request.0*)*
  %34 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %35 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %34, i32 0, i32 0
  store void (i32*, %struct.fetcher_request.0*)* %33, void (i32*, %struct.fetcher_request.0*)** %35, align 8
  %36 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %37 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %36, i32 0, i32 1
  %38 = call i32 @vlc_interrupt_init(i32* %37)
  %39 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %40 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %39, i32 0, i32 3
  %41 = call i32 @atomic_init(i32* %40, i32 1)
  %42 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %43 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %42, i32 0, i32 2
  %44 = load i32, i32* @FetcherThread, align 4
  %45 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %46 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %47 = call i32 @vlc_clone(i32* %43, i32 %44, %struct.fetcher_thread* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %22
  %50 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %51 = bitcast %struct.fetcher_thread* %50 to i8*
  %52 = load i8**, i8*** %11, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %22
  %55 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %56 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %55, i32 0, i32 1
  %57 = call i32 @vlc_interrupt_deinit(i32* %56)
  %58 = load %struct.fetcher_thread*, %struct.fetcher_thread** %12, align 8
  %59 = call i32 @free(%struct.fetcher_thread* %58)
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %49, %20
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.fetcher_thread* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_interrupt_init(i32*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @vlc_clone(i32*, i32, %struct.fetcher_thread*, i32) #1

declare dso_local i32 @vlc_interrupt_deinit(i32*) #1

declare dso_local i32 @free(%struct.fetcher_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
