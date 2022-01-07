; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_ffmpeg_InitCodec.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_ffmpeg_InitCodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_7__ = type { i64 }

@AV_CODEC_ID_SVQ3 = common dso_local global i64 0, align 8
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"SVQ3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SMI \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ffmpeg_InitCodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_InitCodec(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %170

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AV_CODEC_ID_SVQ3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 12
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %39 = add i64 %37, %38
  %40 = call i8* @av_malloc(i64 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32* %41, i32** %45, align 8
  store i32* %41, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %26
  br label %170

49:                                               ; preds = %26
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @memcpy(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4)
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = call i32 @memset(i32* %54, i32 0, i64 8)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @memcpy(i32* %57, i8* %61, i64 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %68, 90
  br i1 %69, label %70, label %126

70:                                               ; preds = %49
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 86
  %73 = bitcast i32* %72 to i8*
  %74 = call i64 @strncmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %126

76:                                               ; preds = %70
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 82
  store i32* %78, i32** %6, align 8
  br label %79

79:                                               ; preds = %120, %76
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, 8
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = icmp ult i32* %80, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %79
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @GetDWBE(i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sle i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %125

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = bitcast i32* %98 to i8*
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %96
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 82
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32*, i32** %6, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memmove(i32* %104, i32* %105, i32 %118)
  br label %125

120:                                              ; preds = %96
  %121 = load i32, i32* %7, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %6, align 8
  br label %79

125:                                              ; preds = %102, %95, %79
  br label %126

126:                                              ; preds = %125, %70, %49
  br label %170

127:                                              ; preds = %18
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i64 %128, i64* %132, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %135 = add i64 %133, %134
  %136 = call i8* @av_malloc(i64 %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i32* %137, i32** %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %169

148:                                              ; preds = %127
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %4, align 8
  %159 = call i32 @memcpy(i32* %153, i8* %157, i64 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %4, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %168 = call i32 @memset(i32* %166, i32 0, i64 %167)
  br label %169

169:                                              ; preds = %148, %127
  br label %170

170:                                              ; preds = %17, %48, %169, %126
  ret void
}

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
