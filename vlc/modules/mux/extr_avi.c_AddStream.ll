; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_AddStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_AddStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32*, i32, i32, i64, i64, i64, i32*, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"too many streams\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"adding input\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@WAVE_FORMAT_A52 = common dso_local global i8* null, align 8
@WAVE_FORMAT_MPEGLAYER3 = common dso_local global i8* null, align 8
@WAVE_FORMAT_WMA1 = common dso_local global i8* null, align 8
@WAVE_FORMAT_WMA2 = common dso_local global i8* null, align 8
@WAVE_FORMAT_WMAP = common dso_local global i8* null, align 8
@WAVE_FORMAT_WMAL = common dso_local global i8* null, align 8
@WAVE_FORMAT_ALAW = common dso_local global i8* null, align 8
@WAVE_FORMAT_MULAW = common dso_local global i8* null, align 8
@WAVE_FORMAT_PCM = common dso_local global i8* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @AddStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddStream(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 100
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @msg_Err(%struct.TYPE_16__* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %3, align 4
  br label %412

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i32 @msg_Dbg(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i8* @malloc(i32 4)
  %24 = bitcast i8* %23 to %struct.TYPE_20__*
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  br label %412

33:                                               ; preds = %20
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = bitcast %struct.TYPE_20__* %39 to i32*
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 %47
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %7, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %388 [
    i32 141, label %54
    i32 140, label %326
  ]

54:                                               ; preds = %33
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i32 141, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 10
  %61 = add nsw i32 48, %60
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %68, 10
  %70 = add nsw i32 48, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 119, i32* %78, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 98, i32* %82, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 7
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 8
  store i32 0, i32* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 40, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @malloc(i32 %94)
  %96 = bitcast i8* %95 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %8, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = icmp ne %struct.TYPE_20__* %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %54
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = call i32 @free(%struct.TYPE_20__* %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %105, align 8
  %106 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %106, i32* %3, align 4
  br label %412

107:                                              ; preds = %54
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %107
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i64 1
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(%struct.TYPE_20__* %121, i32 %126, i32 %131)
  br label %133

133:                                              ; preds = %119, %107
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sdiv i32 %162, 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %312 [
    i32 139, label %173
    i32 137, label %179
    i32 131, label %185
    i32 130, label %189
    i32 128, label %193
    i32 129, label %197
    i32 138, label %201
    i32 136, label %205
    i32 132, label %209
    i32 135, label %234
    i32 134, label %260
    i32 133, label %286
  ]

173:                                              ; preds = %133
  %174 = load i8*, i8** @WAVE_FORMAT_A52, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 5
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  store i32 1, i32* %178, align 8
  br label %322

179:                                              ; preds = %133
  %180 = load i8*, i8** @WAVE_FORMAT_MPEGLAYER3, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  br label %322

185:                                              ; preds = %133
  %186 = load i8*, i8** @WAVE_FORMAT_WMA1, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  br label %322

189:                                              ; preds = %133
  %190 = load i8*, i8** @WAVE_FORMAT_WMA2, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  br label %322

193:                                              ; preds = %133
  %194 = load i8*, i8** @WAVE_FORMAT_WMAP, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  br label %322

197:                                              ; preds = %133
  %198 = load i8*, i8** @WAVE_FORMAT_WMAL, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  br label %322

201:                                              ; preds = %133
  %202 = load i8*, i8** @WAVE_FORMAT_ALAW, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 5
  store i8* %202, i8** %204, align 8
  br label %322

205:                                              ; preds = %133
  %206 = load i8*, i8** @WAVE_FORMAT_MULAW, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  br label %322

209:                                              ; preds = %133
  %210 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 5
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 4
  store i32 8, i32* %219, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = sdiv i32 %222, 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %223, %226
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = mul nsw i32 %227, %230
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  br label %322

234:                                              ; preds = %133
  %235 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 2, %240
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 4
  store i32 16, i32* %245, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = sdiv i32 %248, 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %249, %252
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = mul nsw i32 %253, %256
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  br label %322

260:                                              ; preds = %133
  %261 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 5
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 3, %266
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 4
  store i32 24, i32* %271, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = sdiv i32 %274, 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %275, %278
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = mul nsw i32 %279, %282
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %322

286:                                              ; preds = %133
  %287 = load i8*, i8** @WAVE_FORMAT_PCM, align 8
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 4, %292
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 4
  store i32 32, i32* %297, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = sdiv i32 %300, 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i32 %301, %304
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = mul nsw i32 %305, %308
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 4
  br label %322

312:                                              ; preds = %133
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %314 = call i32 @free(%struct.TYPE_20__* %313)
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %316, align 8
  %318 = call i32 @free(%struct.TYPE_20__* %317)
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %320, align 8
  %321 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %321, i32* %3, align 4
  br label %412

322:                                              ; preds = %286, %260, %234, %209, %205, %201, %197, %193, %189, %185, %179, %173
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 9
  store %struct.TYPE_20__* %323, %struct.TYPE_20__** %325, align 8
  br label %396

326:                                              ; preds = %33
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  store i32 140, i32* %328, align 8
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sdiv i32 %331, 10
  %333 = add nsw i32 48, %332
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  store i32 %333, i32* %337, align 4
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = srem i32 %340, 10
  %342 = add nsw i32 48, %341
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  store i32 %342, i32* %346, align 4
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 2
  store i32 100, i32* %350, align 4
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 3
  store i32 99, i32* %354, align 4
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %326
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  br label %365

365:                                              ; preds = %359, %326
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 9
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %367, align 8
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 8
  %372 = call i32* @CreateBitmapInfoHeader(i32* %369, i32* %371)
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 7
  store i32* %372, i32** %374, align 8
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 7
  %377 = load i32*, i32** %376, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %387, label %379

379:                                              ; preds = %365
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %381, align 8
  %383 = call i32 @free(%struct.TYPE_20__* %382)
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %385, align 8
  %386 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %386, i32* %3, align 4
  br label %412

387:                                              ; preds = %365
  br label %396

388:                                              ; preds = %33
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %390, align 8
  %392 = call i32 @free(%struct.TYPE_20__* %391)
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %394, align 8
  %395 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %395, i32* %3, align 4
  br label %412

396:                                              ; preds = %387, %322
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 6
  store i64 0, i64* %398, align 8
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 5
  store i64 0, i64* %400, align 8
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 4
  store i64 0, i64* %402, align 8
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 2
  store i32 25, i32* %404, align 8
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 3
  store i32 131072, i32* %406, align 4
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %408, align 8
  %411 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %396, %388, %379, %312, %99, %31, %16
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @CreateBitmapInfoHeader(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
