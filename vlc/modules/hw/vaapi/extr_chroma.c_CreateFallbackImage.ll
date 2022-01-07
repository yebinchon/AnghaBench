; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_CreateFallbackImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_CreateFallbackImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VA_FOURCC_NV12 = common dso_local global i64 0, align 8
@VA_FOURCC_P010 = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32, i32*)* @CreateFallbackImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateFallbackImage(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @vaMaxNumImageFormats(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.TYPE_11__* @vlc_alloc(i32 %16, i32 8)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %24, i32* %5, align 4
  br label %107

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = call i64 @vaQueryImageFormats(i32 %26, %struct.TYPE_11__* %27, i32* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = call i32 @free(%struct.TYPE_11__* %31)
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %5, align 4
  br label %107

34:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VA_FOURCC_NV12, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VA_FOURCC_P010, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %39
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %35

62:                                               ; preds = %57, %35
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VA_FOURCC_NV12, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VA_FOURCC_P010, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %71, %62
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @VLC_OBJECT(i32* %81)
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @vlc_vaapi_CreateImage(i32 %82, i32 %83, %struct.TYPE_11__* %87, i32 %91, i32 %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %80
  %100 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %100, i32* %13, align 4
  br label %103

101:                                              ; preds = %80, %71
  %102 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = call i32 @free(%struct.TYPE_11__* %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %30, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @vaMaxNumImageFormats(i32) #1

declare dso_local %struct.TYPE_11__* @vlc_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vaQueryImageFormats(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_vaapi_CreateImage(i32, i32, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
