; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_subtitle.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_subtitle.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__* }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_DVB_SUBTITLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"cannot decode one subtitle (%zu bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__*, %struct.TYPE_23__**)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DecodeBlock(%struct.TYPE_21__* %0, %struct.TYPE_23__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__** %1, %struct.TYPE_23__*** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %6, align 8
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %17 = icmp ne %struct.TYPE_23__** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = icmp ne %struct.TYPE_23__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %2
  store i32* null, i32** %3, align 8
  br label %183

23:                                               ; preds = %18
  %24 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %7, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %30 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %23
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call i32 @Flush(%struct.TYPE_21__* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = call i32 @block_Release(%struct.TYPE_23__* %44)
  store i32* null, i32** %3, align 8
  br label %183

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ule i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = call i32 @block_Release(%struct.TYPE_23__* %53)
  store i32* null, i32** %3, align 8
  br label %183

55:                                               ; preds = %47
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @FF_INPUT_BUFFER_PADDING_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_23__* @block_Realloc(%struct.TYPE_23__* %56, i32 0, i32 %63)
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %7, align 8
  %65 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %65, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = icmp ne %struct.TYPE_23__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  br label %183

69:                                               ; preds = %55
  %70 = load i32, i32* @FF_INPUT_BUFFER_PADDING_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i64 %81
  %83 = load i32, i32* @FF_INPUT_BUFFER_PADDING_SIZE, align 4
  %84 = call i32 @memset(%struct.TYPE_24__* %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AV_CODEC_ID_DVB_SUBTITLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %69
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ugt i64 %95, 3
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i64 2
  store %struct.TYPE_24__* %101, %struct.TYPE_24__** %99, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 3
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %97, %92, %69
  %107 = call i32 @memset(%struct.TYPE_24__* %8, i32 0, i32 4)
  %108 = call i32 @av_init_packet(%struct.TYPE_25__* %9)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %112, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @TO_AV_TS(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %10, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @avcodec_decode_subtitle2(i32 %125, %struct.TYPE_24__* %8, i32* %10, %struct.TYPE_25__* %9)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %106
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @msg_Warn(%struct.TYPE_21__* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = call i32 @block_Release(%struct.TYPE_23__* %136)
  store i32* null, i32** %3, align 8
  br label %183

138:                                              ; preds = %106
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ugt i64 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %145, %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  %162 = sext i32 %158 to i64
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i64 %162
  store %struct.TYPE_24__* %163, %struct.TYPE_24__** %160, align 8
  store i32* null, i32** %12, align 8
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %151
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @FROM_AV_TS(i32 %169)
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32* @ConvertSubtitle(%struct.TYPE_21__* %167, %struct.TYPE_24__* %8, i32 %170, i32 %173)
  store i32* %174, i32** %12, align 8
  br label %175

175:                                              ; preds = %166, %151
  %176 = load i32*, i32** %12, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %180 = call i32 @block_Release(%struct.TYPE_23__* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32*, i32** %12, align 8
  store i32* %182, i32** %3, align 8
  br label %183

183:                                              ; preds = %181, %129, %68, %52, %41, %22
  %184 = load i32*, i32** %3, align 8
  ret i32* %184
}

declare dso_local i32 @Flush(%struct.TYPE_21__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @block_Realloc(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_25__*) #1

declare dso_local i32 @TO_AV_TS(i32) #1

declare dso_local i32 @avcodec_decode_subtitle2(i32, %struct.TYPE_24__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32* @ConvertSubtitle(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @FROM_AV_TS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
