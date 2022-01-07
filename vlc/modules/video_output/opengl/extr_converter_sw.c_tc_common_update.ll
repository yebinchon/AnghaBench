; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_tc_common_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_tc_common_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i64)*, i32 (i64)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i32*, i32*, %struct.TYPE_10__*, i64*)* @tc_common_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_common_update(%struct.TYPE_11__* %0, i64* %1, i32* %2, i32* %3, %struct.TYPE_10__* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %121, %6
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %124

29:                                               ; preds = %27
  %30 = load i64*, i64** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32 (i64)*, i32 (i64)** %41, align 8
  %43 = load i64, i64* @GL_TEXTURE0, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 %42(i64 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (i32, i64)*, i32 (i32, i64)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 %52(i32 %55, i64 %60)
  %62 = load i64*, i64** %12, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %29
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  br label %88

79:                                               ; preds = %29
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  br label %88

88:                                               ; preds = %79, %64
  %89 = phi i32* [ %78, %64 ], [ %87, %79 ]
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %15, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 @upload_plane(%struct.TYPE_11__* %91, i32 %92, i32 %97, i32 %102, i32 %110, i32 %118, i8* %119)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %88
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %17

124:                                              ; preds = %27
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @upload_plane(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
