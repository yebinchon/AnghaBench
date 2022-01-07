; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, float*, float*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_9__, i32, i8* }
%struct.TYPE_9__ = type { i8*, i32 }

@ID3TAG_Parse_Handler = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Xing\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"xing vbr value present (%d)\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"xing frames&bytes value present (%d bytes, %d frames, %d samples/frame)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"LAME\00", align 1
@AUDIO_REPLAY_GAIN_TRACK = common dso_local global i64 0, align 8
@AUDIO_REPLAY_GAIN_ALBUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @MpgaInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MpgaInit(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 1024, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i32, i32* @ID3TAG_Parse_Handler, align 4
  %23 = call i32 @ID3Parse(%struct.TYPE_10__* %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @vlc_stream_Peek(i32 %26, i32** %5, i32 1028)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 25
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %31, i32* %2, align 4
  br label %217

32:                                               ; preds = %1
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @GetDWBE(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @MpgaCheckSync(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %217

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @MPGA_VERSION(i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MPGA_MODE(i32 %47)
  %49 = icmp ne i32 %48, 3
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 36, i32 21
  store i32 %51, i32* %10, align 4
  br label %58

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @MPGA_MODE(i32 %53)
  %55 = icmp ne i32 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 21, i32 13
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i64 @memcmp(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %58
  %71 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %71, i32* %2, align 4
  br label %217

72:                                               ; preds = %63
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = call i32 @GetDWBE(i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 8
  %81 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = call i8* @MpgaXingGetDWBE(i32** %8, i32* %9, i32 0)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %72
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = call i8* @MpgaXingGetDWBE(i32** %8, i32* %9, i32 0)
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 100)
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = call i8* @MpgaXingGetDWBE(i32** %8, i32* %9, i32 0)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  store i8* %112, i8** %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %111, %107
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @MpgaGetFrameSamples(i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i32 %137, i32* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %145, i64 %149, i32 %153)
  br label %155

155:                                              ; preds = %135, %129, %123
  %156 = load i32, i32* %9, align 4
  %157 = icmp sge i32 %156, 20
  br i1 %157, label %158, label %215

158:                                              ; preds = %155
  %159 = load i32*, i32** %8, align 8
  %160 = call i64 @memcmp(i32* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %215

162:                                              ; preds = %158
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %12, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @memcpy(i8* %171, i32* %172, i32 9)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 9
  store i8 0, i8* %177, align 1
  %178 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 9)
  %179 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 1)
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %181, 100
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 1)
  %186 = call i8* @MpgaXingGetDWBE(i32** %8, i32* %9, i32 0)
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %13, align 4
  %188 = call i32 @MpgaXingGetWBE(i32** %8, i32* %9, i32 0)
  store i32 %188, i32* %14, align 4
  %189 = call i32 @MpgaXingGetWBE(i32** %8, i32* %9, i32 0)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %13, align 4
  %191 = call i64 @MpgaXingLameConvertPeak(i32 %190)
  %192 = sitofp i64 %191 to float
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load float*, float** %194, align 8
  %196 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %197 = getelementptr inbounds float, float* %195, i64 %196
  store float %192, float* %197, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i64 @MpgaXingLameConvertGain(i32 %198)
  %200 = sitofp i64 %199 to float
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load float*, float** %202, align 8
  %204 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %205 = getelementptr inbounds float, float* %203, i64 %204
  store float %200, float* %205, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i64 @MpgaXingLameConvertGain(i32 %206)
  %208 = sitofp i64 %207 to float
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load float*, float** %210, align 8
  %212 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %213 = getelementptr inbounds float, float* %211, i64 %212
  store float %208, float* %213, align 4
  %214 = call i32 @MpgaXingSkip(i32** %8, i32* %9, i32 1)
  br label %215

215:                                              ; preds = %162, %158, %155
  %216 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %70, %38, %30
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @ID3Parse(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @MpgaCheckSync(i32*) #1

declare dso_local i64 @MPGA_VERSION(i32) #1

declare dso_local i32 @MPGA_MODE(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @MpgaXingSkip(i32**, i32*, i32) #1

declare dso_local i8* @MpgaXingGetDWBE(i32**, i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i64, ...) #1

declare dso_local i32 @MpgaGetFrameSamples(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @MpgaXingGetWBE(i32**, i32*, i32) #1

declare dso_local i64 @MpgaXingLameConvertPeak(i32) #1

declare dso_local i64 @MpgaXingLameConvertGain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
