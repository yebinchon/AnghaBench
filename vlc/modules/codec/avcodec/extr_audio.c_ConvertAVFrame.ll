; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_ConvertAVFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_ConvertAVFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_19__*, %struct.TYPE_22__*)* @ConvertAVFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ConvertAVFrame(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %6, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @av_sample_fmt_is_planar(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = call %struct.TYPE_21__* @block_Alloc(i32 %32)
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %7, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = call i64 @likely(%struct.TYPE_21__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %23
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %8, align 8
  %43 = alloca i8*, i64 %41, align 16
  store i64 %41, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %61, %37
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %43, i64 %59
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @aout_Interleave(i32 %67, i8** %43, i32 %70, i32 %73, i32 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %64, %23
  %87 = call i32 @av_frame_free(%struct.TYPE_22__** %4)
  br label %91

88:                                               ; preds = %2
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = call %struct.TYPE_21__* @vlc_av_frame_Wrap(%struct.TYPE_22__* %89)
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %91

91:                                               ; preds = %88, %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %149

96:                                               ; preds = %91
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %99, label %149

99:                                               ; preds = %96
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  %109 = call %struct.TYPE_21__* @block_Alloc(i32 %108)
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %11, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %111 = call i64 @likely(%struct.TYPE_21__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %99
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @aout_ChannelExtract(i32 %116, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %113, %99
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = call i32 @block_Release(%struct.TYPE_21__* %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %7, align 8
  br label %149

149:                                              ; preds = %145, %96, %91
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %150
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local %struct.TYPE_21__* @block_Alloc(i32) #1

declare dso_local i64 @likely(%struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @aout_Interleave(i32, i8**, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local %struct.TYPE_21__* @vlc_av_frame_Wrap(%struct.TYPE_22__*) #1

declare dso_local i32 @aout_ChannelExtract(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
