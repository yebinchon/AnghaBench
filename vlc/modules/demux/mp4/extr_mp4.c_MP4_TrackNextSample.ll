; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackNextSample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackNextSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, %struct.TYPE_23__* (i32)*, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i64, i64* }
%struct.TYPE_19__ = type { i64, i64 }

@UINT32_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"track[0x%x] will be disabled (cannot restart decoder)\00", align 1
@p_elst = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, i64)* @MP4_TrackNextSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_TrackNextSample(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @UINT32_MAX, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i64, i64* @UINT32_MAX, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %4, align 4
  br label %150

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %4, align 4
  br label %150

38:                                               ; preds = %23
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %50, %59
  %61 = icmp sge i64 %41, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %38
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @TrackGotoChunkSample(%struct.TYPE_21__* %63, %struct.TYPE_20__* %64, i32 %69, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %62
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @msg_Warn(%struct.TYPE_21__* %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %83 = call i32 @MP4_TrackSelect(%struct.TYPE_21__* %81, %struct.TYPE_20__* %82, i32 0)
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %4, align 4
  br label %150

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %38
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_23__* (i32)*, %struct.TYPE_23__* (i32)** %93, align 8
  %95 = load i32, i32* @p_elst, align 4
  %96 = call %struct.TYPE_23__* %94(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %148

100:                                              ; preds = %91
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %8, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_23__* (i32)*, %struct.TYPE_23__* (i32)** %105, align 8
  %107 = load i32, i32* @p_elst, align 4
  %108 = call %struct.TYPE_23__* %106(i32 %107)
  store %struct.TYPE_23__* %108, %struct.TYPE_23__** %9, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = call i32 @MP4_TrackGetDTS(%struct.TYPE_21__* %109, %struct.TYPE_20__* %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @MP4_rescale_qtime(i32 %111, i32 %114)
  store i64 %115, i64* %10, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = zext i32 %119 to i64
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %100
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %129, %137
  %139 = icmp sge i64 %126, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %125
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = call i32 @MP4_TrackGetDTS(%struct.TYPE_21__* %143, %struct.TYPE_20__* %144)
  %146 = call i32 @MP4_TrackSetELST(%struct.TYPE_21__* %141, %struct.TYPE_20__* %142, i32 %145)
  br label %147

147:                                              ; preds = %140, %125, %100
  br label %148

148:                                              ; preds = %147, %91, %86
  %149 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %75, %36, %18
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @TrackGotoChunkSample(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @MP4_TrackSelect(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @MP4_rescale_qtime(i32, i32) #1

declare dso_local i32 @MP4_TrackGetDTS(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @MP4_TrackSetELST(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
