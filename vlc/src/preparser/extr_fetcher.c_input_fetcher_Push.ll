; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_input_fetcher_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_input_fetcher_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.background_worker*, %struct.background_worker* }
%struct.background_worker = type { i32 }
%struct.fetcher_request = type { i32, i32, i8*, i32*, i32* }

@META_REQUEST_OPTION_FETCH_ANY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@META_REQUEST_OPTION_FETCH_LOCAL = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_fetcher_Push(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.fetcher_request*, align 8
  %13 = alloca %struct.background_worker*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @META_REQUEST_OPTION_FETCH_ANY, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @assert(i32 %16)
  %18 = call %struct.fetcher_request* @malloc(i32 32)
  store %struct.fetcher_request* %18, %struct.fetcher_request** %12, align 8
  %19 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %20 = icmp ne %struct.fetcher_request* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %26, i32* %6, align 4
  br label %70

27:                                               ; preds = %5
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %30 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %33 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %36 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %39 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %41 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %40, i32 0, i32 1
  %42 = call i32 @vlc_atomic_rc_init(i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @input_item_Hold(i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @META_REQUEST_OPTION_FETCH_LOCAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.background_worker*, %struct.background_worker** %51, align 8
  br label %57

53:                                               ; preds = %27
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.background_worker*, %struct.background_worker** %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi %struct.background_worker* [ %52, %49 ], [ %56, %53 ]
  store %struct.background_worker* %58, %struct.background_worker** %13, align 8
  %59 = load %struct.background_worker*, %struct.background_worker** %13, align 8
  %60 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %61 = call i64 @background_worker_Push(%struct.background_worker* %59, %struct.fetcher_request* %60, i32* null, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %65 = call i32 @NotifyArtFetchEnded(%struct.fetcher_request* %64, i32 0)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.fetcher_request*, %struct.fetcher_request** %12, align 8
  %68 = call i32 @RequestRelease(%struct.fetcher_request* %67)
  %69 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %25
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.fetcher_request* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @input_item_Hold(i32*) #1

declare dso_local i64 @background_worker_Push(%struct.background_worker*, %struct.fetcher_request*, i32*, i32) #1

declare dso_local i32 @NotifyArtFetchEnded(%struct.fetcher_request*, i32) #1

declare dso_local i32 @RequestRelease(%struct.fetcher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
