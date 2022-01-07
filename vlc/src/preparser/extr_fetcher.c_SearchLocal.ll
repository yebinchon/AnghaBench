; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_SearchLocal.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_SearchLocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fetcher_request = type { i32, i32 }

@FETCHER_SCOPE_LOCAL = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"metadata-network-access\00", align 1
@META_REQUEST_OPTION_FETCH_NETWORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.fetcher_request*)* @SearchLocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SearchLocal(%struct.TYPE_4__* %0, %struct.fetcher_request* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.fetcher_request*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.fetcher_request* %1, %struct.fetcher_request** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %7 = load i32, i32* @FETCHER_SCOPE_LOCAL, align 4
  %8 = call i64 @SearchByScope(%struct.TYPE_4__* %5, %struct.fetcher_request* %6, i32 %7)
  %9 = load i64, i64* @VLC_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @var_InheritBool(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %20 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @META_REQUEST_OPTION_FETCH_NETWORK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18, %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %30 = call i64 @background_worker_Push(i32 %28, %struct.fetcher_request* %29, i32* null, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %34 = call i32 @NotifyArtFetchEnded(%struct.fetcher_request* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %25
  br label %43

36:                                               ; preds = %18
  %37 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %38 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_item_SetArtNotFound(i32 %39, i32 1)
  %41 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %42 = call i32 @NotifyArtFetchEnded(%struct.fetcher_request* %41, i32 0)
  br label %43

43:                                               ; preds = %11, %36, %35
  ret void
}

declare dso_local i64 @SearchByScope(%struct.TYPE_4__*, %struct.fetcher_request*, i32) #1

declare dso_local i64 @var_InheritBool(i32, i8*) #1

declare dso_local i64 @background_worker_Push(i32, %struct.fetcher_request*, i32*, i32) #1

declare dso_local i32 @NotifyArtFetchEnded(%struct.fetcher_request*, i32) #1

declare dso_local i32 @input_item_SetArtNotFound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
