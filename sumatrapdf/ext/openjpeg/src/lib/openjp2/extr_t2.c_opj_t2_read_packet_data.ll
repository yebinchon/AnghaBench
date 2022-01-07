; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_read_packet_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_read_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"read: segment too long (%d) with max (%d) for codeblock %d (p=%d, b=%d, r=%d, c=%d)\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot allocate opj_tcd_seg_data_chunk_t* array\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@EVT_WARNING = common dso_local global i32 0, align 4
@JPWL_ASSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_14__*, i32*, i64*, i64, i32*, i32*)* @opj_t2_read_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_t2_read_packet_data(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_14__* %2, i32* %3, i64* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32*, i32** %13, align 8
  store i32* %29, i32** %21, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %23, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 %41
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %24, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @OPJ_ARG_NOT_USED(i32* %43)
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @OPJ_ARG_NOT_USED(i32* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %22, align 8
  store i64 0, i64* %18, align 8
  br label %50

50:                                               ; preds = %312, %8
  %51 = load i64, i64* %18, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %315

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 %62
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %25, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %56
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72, %56
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 1
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %22, align 8
  br label %312

84:                                               ; preds = %72
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = mul nsw i64 %87, %90
  store i64 %91, i64* %20, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  store %struct.TYPE_22__* %95, %struct.TYPE_22__** %23, align 8
  store i64 0, i64* %19, align 8
  br label %96

96:                                               ; preds = %306, %84
  %97 = load i64, i64* %19, align 8
  %98 = load i64, i64* %20, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %309

100:                                              ; preds = %96
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %26, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 1
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %23, align 8
  br label %306

108:                                              ; preds = %100
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %26, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %146

121:                                              ; preds = %108
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %129
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %26, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %121
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 1
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %26, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %138, %121
  br label %146

146:                                              ; preds = %145, %113
  br label %147

147:                                              ; preds = %293, %146
  %148 = load i32*, i32** %21, align 8
  %149 = ptrtoint i32* %148 to i64
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %149, %153
  %155 = load i32*, i32** %21, align 8
  %156 = ptrtoint i32* %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %169, label %158

158:                                              ; preds = %147
  %159 = load i32*, i32** %21, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32*, i32** %13, align 8
  %166 = load i64, i64* %15, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = icmp ugt i32* %164, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %158, %147
  %170 = load i32*, i32** %17, align 8
  %171 = load i32, i32* @EVT_ERROR, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %170, i32 %171, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %174, i64 %175, i64 %176, i64 %179, i64 %180, i64 %183, i64 %186)
  %188 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %188, i32* %9, align 4
  br label %324

189:                                              ; preds = %158
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %192, %195
  br i1 %196, label %197, label %224

197:                                              ; preds = %189
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = mul i64 %200, 2
  %202 = add i64 %201, 1
  store i64 %202, i64* %27, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = load i64, i64* %27, align 8
  %207 = mul i64 %206, 16
  %208 = call i64 @opj_realloc(%struct.TYPE_19__* %205, i64 %207)
  %209 = inttoptr i64 %208 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %209, %struct.TYPE_19__** %28, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %211 = icmp eq %struct.TYPE_19__* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %197
  %213 = load i32*, i32** %17, align 8
  %214 = load i32, i32* @EVT_ERROR, align 4
  %215 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %213, i32 %214, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %216 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %216, i32* %9, align 4
  br label %324

217:                                              ; preds = %197
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 6
  store %struct.TYPE_19__* %218, %struct.TYPE_19__** %220, align 8
  %221 = load i64, i64* %27, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %217, %189
  %225 = load i32*, i32** %21, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  store i32* %225, i32** %233, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 6
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %238, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  store i32 %236, i32* %244, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %246, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32*, i32** %21, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %21, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, %264
  store i64 %268, i64* %266, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %274, %271
  store i64 %275, i64* %273, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 5
  store i64 %278, i64* %280, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %224
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 1
  store %struct.TYPE_18__* %287, %struct.TYPE_18__** %26, align 8
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %285, %224
  br label %293

293:                                              ; preds = %292
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %147, label %298

298:                                              ; preds = %293
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 1
  store %struct.TYPE_22__* %305, %struct.TYPE_22__** %23, align 8
  br label %306

306:                                              ; preds = %298, %105
  %307 = load i64, i64* %19, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %19, align 8
  br label %96

309:                                              ; preds = %96
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 1
  store %struct.TYPE_23__* %311, %struct.TYPE_23__** %22, align 8
  br label %312

312:                                              ; preds = %309, %81
  %313 = load i64, i64* %18, align 8
  %314 = add nsw i64 %313, 1
  store i64 %314, i64* %18, align 8
  br label %50

315:                                              ; preds = %50
  %316 = load i32*, i32** %21, align 8
  %317 = load i32*, i32** %13, align 8
  %318 = ptrtoint i32* %316 to i64
  %319 = ptrtoint i32* %317 to i64
  %320 = sub i64 %318, %319
  %321 = sdiv exact i64 %320, 4
  %322 = load i64*, i64** %14, align 8
  store i64 %321, i64* %322, align 8
  %323 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %323, i32* %9, align 4
  br label %324

324:                                              ; preds = %315, %212, %169
  %325 = load i32, i32* %9, align 4
  ret i32 %325
}

declare dso_local i32 @OPJ_ARG_NOT_USED(i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_realloc(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
