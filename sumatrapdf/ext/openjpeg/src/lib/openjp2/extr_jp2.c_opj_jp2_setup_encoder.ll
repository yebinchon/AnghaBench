; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_setup_encoder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_setup_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_14__, %struct.TYPE_17__*, i64, i64, i64, i64, i64, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i8* }
%struct.TYPE_19__ = type { i32, i32, i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__*, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i64 }

@OPJ_FALSE = common dso_local global i64 0, align 8
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Invalid number of components specified while setting up JP2 encoder\0A\00", align 1
@JP2_JP2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Not enough memory when setup the JP2 encoder\0A\00", align 1
@EVT_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Alpha channel specified but unknown enumcs. No cdef box will be created.\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"Alpha channel specified but not enough image components for an automatic cdef box creation.\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"Alpha channel position conflicts with color channel. No cdef box will be created.\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Multiple alpha channels specified. No cdef box will be created.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Not enough memory to setup the JP2 encoder\0A\00", align 1
@OPJ_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_jp2_setup_encoder(%struct.TYPE_16__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = icmp ne %struct.TYPE_21__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = icmp ne %struct.TYPE_20__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %19, %4
  %26 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %26, i64* %5, align 8
  br label %541

27:                                               ; preds = %22
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 16384
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %27
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @EVT_ERROR, align 4
  %40 = call i32 @opj_event_msg(i32* %38, i32 %39, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %41, i64* %5, align 8
  br label %541

42:                                               ; preds = %32
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @opj_j2k_setup_encoder(i32 %45, %struct.TYPE_21__* %46, %struct.TYPE_20__* %47, i32* %48)
  %50 = load i64, i64* @OPJ_FALSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %53, i64* %5, align 8
  br label %541

54:                                               ; preds = %42
  %55 = load i8*, i8** @JP2_JP2, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 17
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 16
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i64 @opj_malloc(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %54
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @EVT_ERROR, align 4
  %79 = call i32 @opj_event_msg(i32* %77, i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %80, i64* %5, align 8
  br label %541

81:                                               ; preds = %54
  %82 = load i8*, i8** @JP2_JP2, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i64 @opj_malloc(i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_17__*
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 11
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 11
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = icmp ne %struct.TYPE_17__* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %81
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* @EVT_ERROR, align 4
  %110 = call i32 @opj_event_msg(i32* %108, i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %111, i64* %5, align 8
  br label %541

112:                                              ; preds = %81
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 15
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 14
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = shl i32 %145, 7
  %147 = add nsw i32 %144, %146
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  store i32 1, i32* %10, align 4
  br label %150

150:                                              ; preds = %181, %112
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %150
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %156
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  store i32 255, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %156
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %150

184:                                              ; preds = %150
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  store i32 7, i32* %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 13
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 12
  store i64 0, i64* %190, align 8
  store i32 0, i32* %10, align 4
  br label %191

191:                                              ; preds = %224, %184
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %227

197:                                              ; preds = %191
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, 1
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 7
  %216 = add nsw i32 %206, %215
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 11
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  store i32 %216, i32* %223, align 4
  br label %224

224:                                              ; preds = %197
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %191

227:                                              ; preds = %191
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 5
  store i32 2, i32* %234, align 4
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 6
  store i32 0, i32* %236, align 8
  br label %266

237:                                              ; preds = %227
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 5
  store i32 1, i32* %239, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 6
  store i32 16, i32* %246, align 8
  br label %265

247:                                              ; preds = %237
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 2
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 6
  store i32 17, i32* %254, align 8
  br label %264

255:                                              ; preds = %247
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 6
  store i32 18, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %255
  br label %264

264:                                              ; preds = %263, %252
  br label %265

265:                                              ; preds = %264, %244
  br label %266

266:                                              ; preds = %265, %232
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %267

267:                                              ; preds = %288, %266
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %267
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %273
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %283, %273
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %10, align 4
  br label %267

291:                                              ; preds = %267
  %292 = load i32, i32* %13, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %330

294:                                              ; preds = %291
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  switch i32 %297, label %300 [
    i32 16, label %298
    i32 18, label %298
    i32 17, label %299
  ]

298:                                              ; preds = %294, %294
  store i32 3, i32* %14, align 4
  br label %301

299:                                              ; preds = %294
  store i32 1, i32* %14, align 4
  br label %301

300:                                              ; preds = %294
  store i32 0, i32* %13, align 4
  br label %301

301:                                              ; preds = %300, %299, %298
  %302 = load i32, i32* %13, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i32*, i32** %9, align 8
  %306 = load i32, i32* @EVT_WARNING, align 4
  %307 = call i32 @opj_event_msg(i32* %305, i32 %306, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %329

308:                                              ; preds = %301
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = add nsw i32 %312, 1
  %314 = icmp slt i32 %311, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %308
  %316 = load i32*, i32** %9, align 8
  %317 = load i32, i32* @EVT_WARNING, align 4
  %318 = call i32 @opj_event_msg(i32* %316, i32 %317, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %328

319:                                              ; preds = %308
  %320 = load i32, i32* %15, align 4
  %321 = load i32, i32* %14, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = load i32*, i32** %9, align 8
  %325 = load i32, i32* @EVT_WARNING, align 4
  %326 = call i32 @opj_event_msg(i32* %324, i32 %325, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %327

327:                                              ; preds = %323, %319
  br label %328

328:                                              ; preds = %327, %315
  br label %329

329:                                              ; preds = %328, %304
  br label %338

330:                                              ; preds = %291
  %331 = load i32, i32* %13, align 4
  %332 = icmp sgt i32 %331, 1
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load i32*, i32** %9, align 8
  %335 = load i32, i32* @EVT_WARNING, align 4
  %336 = call i32 @opj_event_msg(i32* %334, i32 %335, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %337

337:                                              ; preds = %333, %330
  br label %338

338:                                              ; preds = %337, %329
  %339 = load i32, i32* %13, align 4
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %530

341:                                              ; preds = %338
  %342 = call i64 @opj_malloc(i32 16)
  %343 = inttoptr i64 %342 to %struct.TYPE_18__*
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 10
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  store %struct.TYPE_18__* %343, %struct.TYPE_18__** %346, align 8
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 10
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  %351 = icmp ne %struct.TYPE_18__* %350, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %341
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* @EVT_ERROR, align 4
  %355 = call i32 @opj_event_msg(i32* %353, i32 %354, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %356 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %356, i64* %5, align 8
  br label %541

357:                                              ; preds = %341
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 16
  %363 = trunc i64 %362 to i32
  %364 = call i64 @opj_malloc(i32 %363)
  %365 = inttoptr i64 %364 to %struct.TYPE_19__*
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 10
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  store %struct.TYPE_19__* %365, %struct.TYPE_19__** %370, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 10
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %375, align 8
  %377 = icmp ne %struct.TYPE_19__* %376, null
  br i1 %377, label %383, label %378

378:                                              ; preds = %357
  %379 = load i32*, i32** %9, align 8
  %380 = load i32, i32* @EVT_ERROR, align 4
  %381 = call i32 @opj_event_msg(i32* %379, i32 %380, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %382 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %382, i64* %5, align 8
  br label %541

383:                                              ; preds = %357
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = inttoptr i64 %387 to i8*
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 10
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  store i8* %388, i8** %393, align 8
  store i32 0, i32* %10, align 4
  br label %394

394:                                              ; preds = %437, %383
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %14, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %440

398:                                              ; preds = %394
  %399 = load i32, i32* %10, align 4
  %400 = sext i32 %399 to i64
  %401 = inttoptr i64 %400 to i8*
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 10
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %406, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 2
  store i8* %401, i8** %411, align 8
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 10
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %416, align 8
  %418 = load i32, i32* %10, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 0
  store i32 0, i32* %421, align 8
  %422 = load i32, i32* %10, align 4
  %423 = add i32 %422, 1
  %424 = zext i32 %423 to i64
  %425 = inttoptr i64 %424 to i8*
  %426 = ptrtoint i8* %425 to i32
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 10
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_18__*, %struct.TYPE_18__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %431, align 8
  %433 = load i32, i32* %10, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 1
  store i32 %426, i32* %436, align 4
  br label %437

437:                                              ; preds = %398
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  br label %394

440:                                              ; preds = %394
  br label %441

441:                                              ; preds = %526, %440
  %442 = load i32, i32* %10, align 4
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp slt i32 %442, %445
  br i1 %446, label %447, label %529

447:                                              ; preds = %441
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 2
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %449, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %491

457:                                              ; preds = %447
  %458 = load i32, i32* %10, align 4
  %459 = sext i32 %458 to i64
  %460 = inttoptr i64 %459 to i8*
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 10
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_18__*, %struct.TYPE_18__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %465, align 8
  %467 = load i32, i32* %10, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 2
  store i8* %460, i8** %470, align 8
  %471 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 10
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %475, align 8
  %477 = load i32, i32* %10, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 0
  store i32 1, i32* %480, align 8
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %481, i32 0, i32 10
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_18__*, %struct.TYPE_18__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %484, i32 0, i32 0
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %485, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %489, i32 0, i32 1
  store i32 0, i32* %490, align 4
  br label %525

491:                                              ; preds = %447
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = inttoptr i64 %493 to i8*
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %495, i32 0, i32 10
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 0
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_19__*, %struct.TYPE_19__** %499, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 2
  store i8* %494, i8** %504, align 8
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 10
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 0
  %508 = load %struct.TYPE_18__*, %struct.TYPE_18__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %509, align 8
  %511 = load i32, i32* %10, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 0
  store i32 65535, i32* %514, align 8
  %515 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %515, i32 0, i32 10
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 0
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 0
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %519, align 8
  %521 = load i32, i32* %10, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %523, i32 0, i32 1
  store i32 65535, i32* %524, align 4
  br label %525

525:                                              ; preds = %491, %457
  br label %526

526:                                              ; preds = %525
  %527 = load i32, i32* %10, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %10, align 4
  br label %441

529:                                              ; preds = %441
  br label %530

530:                                              ; preds = %529, %338
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 9
  store i64 0, i64* %532, align 8
  %533 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %533, i32 0, i32 8
  store i64 0, i64* %534, align 8
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %539 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %538, i32 0, i32 7
  store i32 %537, i32* %539, align 4
  %540 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %540, i64* %5, align 8
  br label %541

541:                                              ; preds = %530, %378, %352, %107, %76, %52, %37, %25
  %542 = load i64, i64* %5, align 8
  ret i64 %542
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

declare dso_local i64 @opj_j2k_setup_encoder(i32, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @opj_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
