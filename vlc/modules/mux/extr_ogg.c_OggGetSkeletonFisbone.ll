; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggGetSkeletonFisbone.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggGetSkeletonFisbone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.anon = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"audio/vorbis\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"video/theora\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"video/daala\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"audio/speex\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"audio/flac\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"text/cmml\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"application/kate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"video/x-vp8\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Unknown fourcc for stream %s, setting Content-Type to %s\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Content-Type: %s\0D\0A\00", align 1
@ES_PRIORITY_NOT_SELECTABLE = common dso_local global i64 0, align 8
@ES_PRIORITY_MIN = common dso_local global i32 0, align 4
@ES_PRIORITY_SELECTABLE_MIN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"video/main\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"audio/main\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"video/alternate\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"audio/alternate\00", align 1
@SPU_ES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"text/karaoke\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"text/subtitle\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Role: %s\0D\0A\00", align 1
@FISBONE_BASE_SIZE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"fisbone\00", align 1
@FISBONE_BASE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @OggGetSkeletonFisbone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OggGetSkeletonFisbone(i32** %0, i64* %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.anon, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  store i8* null, i8** %11, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %12, align 8
  %20 = bitcast %struct.anon* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load i64*, i64** %6, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %34 [
    i32 129, label %26
    i32 130, label %27
    i32 134, label %28
    i32 131, label %29
    i32 133, label %30
    i32 135, label %31
    i32 132, label %32
    i32 128, label %33
  ]

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %47

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %47

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %47

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %47

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %47

31:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %47

32:                                               ; preds = %4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %47

33:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %47

34:                                               ; preds = %4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vlc_fourcc_GetDescription(i32 %39, i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @msg_Warn(%struct.TYPE_19__* %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %26
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @asprintf(i8** %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %47
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ES_PRIORITY_NOT_SELECTABLE, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %199

71:                                               ; preds = %63
  %72 = load i32, i32* @ES_PRIORITY_MIN, align 4
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %112, %71
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %112

98:                                               ; preds = %79
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 %103
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @__MAX(i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %98, %97
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %73

115:                                              ; preds = %73
  store i8* null, i8** %11, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 137
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 136
  br i1 %128, label %129, label %161

129:                                              ; preds = %122, %115
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %129
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @ES_PRIORITY_SELECTABLE_MIN, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 136
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)
  store i8* %150, i8** %11, align 8
  br label %160

151:                                              ; preds = %138, %129
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 136
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)
  store i8* %159, i8** %11, align 8
  br label %160

160:                                              ; preds = %151, %142
  br label %179

161:                                              ; preds = %122
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SPU_ES, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %161
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 132
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0)
  store i8* %177, i8** %11, align 8
  br label %178

178:                                              ; preds = %169, %161
  br label %179

179:                                              ; preds = %178, %160
  %180 = load i8*, i8** %11, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %198

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @asprintf(i8** %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %184)
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %191
  store i64 %194, i64* %192, align 8
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = add i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %187, %182, %179
  br label %199

199:                                              ; preds = %198, %63
  %200 = load i64, i64* @FISBONE_BASE_SIZE, align 8
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %200, %202
  %204 = call i32* @calloc(i64 %203, i32 4)
  %205 = load i32**, i32*** %5, align 8
  store i32* %204, i32** %205, align 8
  %206 = load i32**, i32*** %5, align 8
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %199
  br label %352

210:                                              ; preds = %199
  %211 = load i32**, i32*** %5, align 8
  %212 = load i32*, i32** %211, align 8
  store i32* %212, i32** %10, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = call i32 @memcpy(i32* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 8)
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 8
  %217 = load i32, i32* @FISBONE_BASE_OFFSET, align 4
  %218 = call i32 @SetDWLE(i32* %216, i32 %217)
  %219 = load i32*, i32** %10, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 12
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @SetDWLE(i32* %220, i32 %223)
  %225 = load i32*, i32** %10, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 16
  %227 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @SetDWLE(i32* %226, i32 %228)
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  switch i32 %234, label %269 [
    i32 136, label %235
    i32 137, label %254
  ]

235:                                              ; preds = %210
  %236 = load i32**, i32*** %5, align 8
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 20
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @SetQWLE(i32* %238, i32 %243)
  %245 = load i32**, i32*** %5, align 8
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 28
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @SetQWLE(i32* %247, i32 %252)
  br label %278

254:                                              ; preds = %210
  %255 = load i32**, i32*** %5, align 8
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 20
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @SetQWLE(i32* %257, i32 %263)
  %265 = load i32**, i32*** %5, align 8
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 28
  %268 = call i32 @SetQWLE(i32* %267, i32 1)
  br label %278

269:                                              ; preds = %210
  %270 = load i32**, i32*** %5, align 8
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 20
  %273 = call i32 @SetQWLE(i32* %272, i32 1000)
  %274 = load i32**, i32*** %5, align 8
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 28
  %277 = call i32 @SetQWLE(i32* %276, i32 1)
  br label %278

278:                                              ; preds = %269, %254, %235
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %306

285:                                              ; preds = %278
  %286 = load i32**, i32*** %5, align 8
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 44
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @xiph_CountUnknownHeaders(i64 %293, i32 %298, i32 %303)
  %305 = call i32 @SetDWLE(i32* %288, i32 %304)
  br label %306

306:                                              ; preds = %285, %278
  %307 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp sgt i64 %308, 0
  br i1 %309, label %310, label %340

310:                                              ; preds = %306
  %311 = load i32**, i32*** %5, align 8
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* @FISBONE_BASE_SIZE, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32* %314, i32** %9, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @strlen(i8* %319)
  %321 = call i32 @memcpy(i32* %315, i8* %317, i32 %320)
  %322 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @strlen(i8* %323)
  %325 = load i32*, i32** %9, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %9, align 8
  %328 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %339

331:                                              ; preds = %310
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @strlen(i8* %336)
  %338 = call i32 @memcpy(i32* %332, i8* %334, i32 %337)
  br label %339

339:                                              ; preds = %331, %310
  br label %340

340:                                              ; preds = %339, %306
  %341 = load i64, i64* @FISBONE_BASE_SIZE, align 8
  %342 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %341, %343
  %345 = load i64*, i64** %6, align 8
  store i64 %344, i64* %345, align 8
  %346 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @free(i8* %347)
  %349 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @free(i8* %350)
  br label %352

352:                                              ; preds = %340, %209
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*, i32, i8*) #2

declare dso_local i32 @vlc_fourcc_GetDescription(i32, i32) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @__MAX(i32, i32) #2

declare dso_local i32* @calloc(i64, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @SetDWLE(i32*, i32) #2

declare dso_local i32 @SetQWLE(i32*, i32) #2

declare dso_local i32 @xiph_CountUnknownHeaders(i64, i32, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
