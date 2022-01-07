; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_get_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_get_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_20__, %struct.TYPE_18__*, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, i64, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32*, i64, i64, i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"We need an image previously created.\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Image has less components than codestream.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Tile index provided by the user is incorrect %d (max = %d) \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_j2k_get_tile(%struct.TYPE_23__* %0, i32* %1, %struct.TYPE_24__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @EVT_ERROR, align 4
  %23 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %21, i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %417

25:                                               ; preds = %5
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @EVT_ERROR, align 4
  %38 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %36, i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %417

40:                                               ; preds = %25
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %45, %49
  %51 = icmp sge i32 %41, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @EVT_ERROR, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %59, %63
  %65 = sub nsw i32 %64, 1
  %66 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %53, i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %65)
  %67 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %67, i32* %6, align 4
  br label %417

68:                                               ; preds = %40
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %69, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %75, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %87, %91
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %97, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %68
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %104, %68
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %120, %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %130, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %112
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %137, %112
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %146, %150
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %152, %156
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %162, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %145
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %169, %145
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %179, %183
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %185, %189
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 4
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %195, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %177
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 4
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %202, %177
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %212, align 8
  store %struct.TYPE_25__* %213, %struct.TYPE_25__** %15, align 8
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %305, %210
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %215, %220
  br i1 %221, label %222, label %308

222:                                              ; preds = %214
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 5
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 5
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @opj_int_ceildiv(i64 %237, i64 %240)
  %242 = trunc i64 %241 to i32
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 6
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @opj_int_ceildiv(i64 %247, i64 %250)
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @opj_int_ceildiv(i64 %257, i64 %260)
  store i64 %261, i64* %16, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 6
  %267 = load i64, i64* %266, align 8
  %268 = call i64 @opj_int_ceildiv(i64 %264, i64 %267)
  store i64 %268, i64* %17, align 8
  %269 = load i64, i64* %16, align 8
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @opj_int_ceildivpow2(i64 %269, i64 %272)
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @opj_int_ceildivpow2(i64 %277, i64 %280)
  %282 = sub nsw i64 %273, %281
  %283 = trunc i64 %282 to i32
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load i64, i64* %17, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @opj_int_ceildivpow2(i64 %286, i64 %289)
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @opj_int_ceildivpow2(i64 %294, i64 %297)
  %299 = sub nsw i64 %290, %298
  %300 = trunc i64 %299 to i32
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 1
  store %struct.TYPE_25__* %304, %struct.TYPE_25__** %15, align 8
  br label %305

305:                                              ; preds = %222
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %214

308:                                              ; preds = %214
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp sgt i32 %311, %316
  br i1 %317, label %318, label %358

318:                                              ; preds = %308
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %347, %318
  %325 = load i32, i32* %12, align 4
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %324
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 5
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %332, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @opj_image_data_free(i32* %338)
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 5
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 4
  store i32* null, i32** %346, align 8
  br label %347

347:                                              ; preds = %330
  %348 = load i32, i32* %12, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %12, align 4
  br label %324

350:                                              ; preds = %324
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 8
  br label %358

358:                                              ; preds = %350, %308
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 3
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %360, align 8
  %362 = icmp ne %struct.TYPE_18__* %361, null
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %365, align 8
  %367 = call i32 @opj_image_destroy(%struct.TYPE_18__* %366)
  br label %368

368:                                              ; preds = %363, %358
  %369 = call %struct.TYPE_18__* (...) @opj_image_create0()
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 3
  store %struct.TYPE_18__* %369, %struct.TYPE_18__** %371, align 8
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 3
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %373, align 8
  %375 = icmp ne %struct.TYPE_18__* %374, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %368
  %377 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %377, i32* %6, align 4
  br label %417

378:                                              ; preds = %368
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 3
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %381, align 8
  %383 = call i32 @opj_copy_image_header(%struct.TYPE_24__* %379, %struct.TYPE_18__* %382)
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  store i64 %385, i64* %389, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %391 = load i32*, i32** %10, align 8
  %392 = call i32 @opj_j2k_setup_decoding_tile(%struct.TYPE_23__* %390, i32* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %378
  %395 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %395, i32* %6, align 4
  br label %417

396:                                              ; preds = %378
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i32*, i32** %8, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = call i32 @opj_j2k_exec(%struct.TYPE_23__* %397, i32 %400, i32* %401, i32* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %413, label %405

405:                                              ; preds = %396
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %407, align 8
  %409 = call i32 @opj_image_destroy(%struct.TYPE_18__* %408)
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %411, align 8
  %412 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %412, i32* %6, align 4
  br label %417

413:                                              ; preds = %396
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %416 = call i32 @opj_j2k_move_data_from_codec_to_output_image(%struct.TYPE_23__* %414, %struct.TYPE_24__* %415)
  store i32 %416, i32* %6, align 4
  br label %417

417:                                              ; preds = %413, %405, %394, %376, %52, %35, %20
  %418 = load i32, i32* %6, align 4
  ret i32 %418
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_int_ceildiv(i64, i64) #1

declare dso_local i64 @opj_int_ceildivpow2(i64, i64) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @opj_image_create0(...) #1

declare dso_local i32 @opj_copy_image_header(%struct.TYPE_24__*, %struct.TYPE_18__*) #1

declare dso_local i32 @opj_j2k_setup_decoding_tile(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @opj_j2k_exec(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @opj_j2k_move_data_from_codec_to_output_image(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
