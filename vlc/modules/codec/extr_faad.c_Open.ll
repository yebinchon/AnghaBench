; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_faad.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_faad.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i8, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, i64, i32*, i32 }
%struct.TYPE_19__ = type { i32, i64 }

@VLC_CODEC_MP4A = common dso_local global i64 0, align 8
@AAC_PROFILE_ELD = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot initialize faad\00", align 1
@MPEG4_ASC_MAX_INDEXEDPOS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to initialize faad using extra data\00", align 1
@mpeg4_asc_channelsbyindex = common dso_local global i64* null, align 8
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@HAVE_FPU = common dso_local global i64 0, align 8
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@FAAD_FMT_FLOAT = common dso_local global i32 0, align 4
@FAAD_FMT_16BIT = common dso_local global i32 0, align 4
@DecodeBlock = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VLC_CODEC_MP4A, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AAC_PROFILE_ELD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @GetWBE(i32 %34)
  %36 = and i32 %35, 65504
  %37 = icmp eq i32 %36, 63712
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %17, %1
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %2, align 4
  br label %216

40:                                               ; preds = %30, %24
  %41 = call %struct.TYPE_18__* @malloc(i32 48)
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %5, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %43, align 8
  %44 = icmp eq %struct.TYPE_18__* %41, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %216

47:                                               ; preds = %40
  %48 = call i32* (...) @NeAACDecOpen()
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = icmp eq i32* %48, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i32 @msg_Err(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = call i32 @free(%struct.TYPE_18__* %55)
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %216

58:                                               ; preds = %47
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %58
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @NeAACDecInit2(i32* %76, i32 %80, i32 %84, i64* %7, i8* %8)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load i8, i8* %8, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @MPEG4_ASC_MAX_INDEXEDPOS, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87, %73
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = call i32 @msg_Err(%struct.TYPE_17__* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @NeAACDecClose(i32* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = call i32 @free(%struct.TYPE_18__* %100)
  %102 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %102, i32* %2, align 4
  br label %216

103:                                              ; preds = %87
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = load i8, i8* %8, align 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i8 %109, i8* %113, align 8
  %114 = load i64*, i64** @mpeg4_asc_channelsbyindex, align 8
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 6
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @date_Init(i32* %124, i64 %125, i32 1)
  br label %144

127:                                              ; preds = %58
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  store i8 0, i8* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 6
  %142 = load i32, i32* @VLC_TICK_INVALID, align 4
  %143 = call i32 @date_Set(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %127, %103
  %145 = load i64, i64* @HAVE_FPU, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @VLC_CODEC_FL32, align 4
  br label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @VLC_CODEC_S16N, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = call %struct.TYPE_19__* @NeAACDecGetCurrentConfiguration(i32* %167)
  store %struct.TYPE_19__* %168, %struct.TYPE_19__** %6, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %151
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %175, %151
  %184 = load i64, i64* @HAVE_FPU, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* @FAAD_FMT_FLOAT, align 4
  br label %190

188:                                              ; preds = %183
  %189 = load i32, i32* @FAAD_FMT_16BIT, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = call i32 @NeAACDecSetConfiguration(i32* %196, %struct.TYPE_19__* %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 3
  store i32* null, i32** %202, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  store i32 0, i32* %204, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  store i32 0, i32* %208, align 8
  %209 = load i32, i32* @DecodeBlock, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @Flush, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %190, %93, %52, %45, %38
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @GetWBE(i32) #1

declare dso_local %struct.TYPE_18__* @malloc(i32) #1

declare dso_local i32* @NeAACDecOpen(...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i64 @NeAACDecInit2(i32*, i32, i32, i64*, i8*) #1

declare dso_local i32 @NeAACDecClose(i32*) #1

declare dso_local i32 @date_Init(i32*, i64, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @NeAACDecGetCurrentConfiguration(i32*) #1

declare dso_local i32 @NeAACDecSetConfiguration(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
