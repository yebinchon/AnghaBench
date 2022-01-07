; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_SearchByScope.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_SearchByScope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.fetcher_request = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"meta fetcher\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.fetcher_request*, i32)* @SearchByScope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SearchByScope(%struct.TYPE_7__* %0, %struct.fetcher_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.fetcher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.fetcher_request* %1, %struct.fetcher_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fetcher_request*, %struct.fetcher_request** %6, align 8
  %10 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i64 @CheckMeta(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load %struct.fetcher_request*, %struct.fetcher_request** %6, align 8
  %18 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @InvokeModule(%struct.TYPE_7__* %16, i32* %19, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %15, %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @CheckArt(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @ReadAlbumCache(%struct.TYPE_7__* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @input_FindArtInCacheUsingItemUID(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @input_FindArtInCache(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SearchArt(%struct.TYPE_7__* %43, i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %42, %38, %34, %29, %25
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load %struct.fetcher_request*, %struct.fetcher_request** %6, align 8
  %51 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @AddAlbumCache(%struct.TYPE_7__* %49, i32* %52, i32 0)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fetcher_request*, %struct.fetcher_request** %6, align 8
  %58 = call i32 @background_worker_Push(i32 %56, %struct.fetcher_request* %57, i32* null, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %60, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @CheckMeta(i32*) #1

declare dso_local i64 @InvokeModule(%struct.TYPE_7__*, i32*, i32, i8*) #1

declare dso_local i32 @CheckArt(i32*) #1

declare dso_local i32 @ReadAlbumCache(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @input_FindArtInCacheUsingItemUID(i32*) #1

declare dso_local i32 @input_FindArtInCache(i32*) #1

declare dso_local i32 @SearchArt(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @AddAlbumCache(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @background_worker_Push(i32, %struct.fetcher_request*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
