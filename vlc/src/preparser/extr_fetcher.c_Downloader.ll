; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_Downloader.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_Downloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.fetcher_request = type { i32 }
%struct.vlc_memstream = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"attachment://\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"item-change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.fetcher_request*)* @Downloader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Downloader(%struct.TYPE_5__* %0, %struct.fetcher_request* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.fetcher_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_memstream, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.fetcher_request* %1, %struct.fetcher_request** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %12 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ReadAlbumCache(%struct.TYPE_5__* %10, i32 %13)
  %15 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %16 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @input_item_GetArtURL(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %114

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strncasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strncasecmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22
  br label %91

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32* @vlc_stream_NewURL(i32 %34, i8* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %114

40:                                               ; preds = %31
  %41 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %7)
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %45 = call i32 @vlc_stream_Read(i32* %43, i8* %44, i32 2048)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %58

49:                                               ; preds = %42
  %50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @vlc_memstream_write(%struct.vlc_memstream* %7, i8* %50, i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %58

57:                                               ; preds = %49
  br label %42

58:                                               ; preds = %56, %48
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @vlc_stream_Delete(i32* %59)
  %61 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %114

64:                                               ; preds = %58
  %65 = call i64 (...) @vlc_killed()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @free(i8* %69)
  br label %114

71:                                               ; preds = %64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %76 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @input_SaveArt(i32 %74, i32 %77, i8* %79, i32 %81, i32* null)
  %83 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %88 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @AddAlbumCache(%struct.TYPE_5__* %86, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %114, %71, %30
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %99 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @var_SetAddress(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %103 = getelementptr inbounds %struct.fetcher_request, %struct.fetcher_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @input_item_SetArtFetched(i32 %104, i32 1)
  br label %106

106:                                              ; preds = %94, %91
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load %struct.fetcher_request*, %struct.fetcher_request** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = icmp ne i8* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @NotifyArtFetchEnded(%struct.fetcher_request* %109, i32 %112)
  ret void

114:                                              ; preds = %67, %63, %39, %21
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @FREENULL(i8* %115)
  br label %91
}

declare dso_local i32 @ReadAlbumCache(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @input_item_GetArtURL(i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32* @vlc_stream_NewURL(i32, i8*) #1

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_stream_Read(i32*, i8*, i32) #1

declare dso_local i64 @vlc_memstream_write(%struct.vlc_memstream*, i8*, i32) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @input_SaveArt(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @AddAlbumCache(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @var_SetAddress(i32, i8*, i32) #1

declare dso_local i32 @input_item_SetArtFetched(i32, i32) #1

declare dso_local i32 @NotifyArtFetchEnded(%struct.fetcher_request*, i32) #1

declare dso_local i32 @FREENULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
