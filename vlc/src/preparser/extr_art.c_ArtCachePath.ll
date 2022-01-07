; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_ArtCachePath.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_ArtCachePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }

@vlc_meta_Artist = common dso_local global i32 0, align 4
@vlc_meta_Album = common dso_local global i32 0, align 4
@vlc_meta_ArtworkURL = common dso_local global i32 0, align 4
@vlc_meta_Title = common dso_local global i32 0, align 4
@vlc_meta_Date = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @ArtCachePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ArtCachePath(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* null, i8** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i32 @vlc_mutex_lock(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i64 (...) @vlc_meta_New()
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %77

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @vlc_meta_Artist, align 4
  %31 = call i8* @vlc_meta_Get(i64 %29, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @vlc_meta_Album, align 4
  %36 = call i8* @vlc_meta_Get(i64 %34, i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %41 = call i8* @vlc_meta_Get(i64 %39, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @vlc_meta_Title, align 4
  %46 = call i8* @vlc_meta_Get(i64 %44, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @vlc_meta_Date, align 4
  %51 = call i8* @vlc_meta_Get(i64 %49, i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %26
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %54, %26
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @EMPTY_STR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @EMPTY_STR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %77

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @ArtCacheGetDirPath(i8* %71, i8* %72, i8* %73, i8* %74, i8* %75)
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %70, %69, %25
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @vlc_mutex_unlock(i32* %79)
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_meta_New(...) #1

declare dso_local i8* @vlc_meta_Get(i64, i32) #1

declare dso_local i64 @EMPTY_STR(i8*) #1

declare dso_local i8* @ArtCacheGetDirPath(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
