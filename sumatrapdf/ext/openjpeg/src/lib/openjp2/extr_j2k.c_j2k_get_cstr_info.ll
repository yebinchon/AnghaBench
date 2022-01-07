; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_get_cstr_info.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_get_cstr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_21__, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i64, i32, %struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@OPJ_J2K_MAXRLVLS = common dso_local global i64 0, align 8
@J2K_CCP_QNTSTY_SIQNT = common dso_local global i64 0, align 8
@OPJ_J2K_MAXBANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @j2k_get_cstr_info(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = call i64 @opj_calloc(i32 1, i32 64)
  %18 = inttoptr i64 %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %264

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %6, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @opj_calloc(i32 %100, i32 72)
  %102 = inttoptr i64 %101 to %struct.TYPE_25__*
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store %struct.TYPE_25__* %102, %struct.TYPE_25__** %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = icmp ne %struct.TYPE_25__* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %22
  %112 = call i32 @opj_destroy_cstr_info(%struct.TYPE_16__** %7)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %264

113:                                              ; preds = %22
  store i64 0, i64* %4, align 8
  br label %114

114:                                              ; preds = %259, %113
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %262

118:                                              ; preds = %114
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i64 %122
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %8, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = load i64, i64* %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i64 %128
  store %struct.TYPE_25__* %129, %struct.TYPE_25__** %9, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 12
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @OPJ_J2K_MAXRLVLS, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %118
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @memcpy(i32 %168, i32 %171, i64 %174)
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @memcpy(i32 %178, i32 %181, i64 %184)
  br label %186

186:                                              ; preds = %165, %118
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @J2K_CCP_QNTSTY_SIQNT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %186
  br label %210

203:                                              ; preds = %186
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = mul nsw i32 %207, 3
  %209 = sub nsw i32 %208, 2
  br label %210

210:                                              ; preds = %203, %202
  %211 = phi i32 [ 1, %202 ], [ %209, %203 ]
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @OPJ_J2K_MAXBANDS, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %253

215:                                              ; preds = %210
  store i32 0, i32* %10, align 4
  br label %216

216:                                              ; preds = %249, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %252

220:                                              ; preds = %216
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64 %228, i64* %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 3
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  store i64 %242, i64* %248, align 8
  br label %249

249:                                              ; preds = %220
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %216

252:                                              ; preds = %216
  br label %253

253:                                              ; preds = %252, %210
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %253
  %260 = load i64, i64* %4, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %4, align 8
  br label %114

262:                                              ; preds = %114
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %263, %struct.TYPE_16__** %2, align 8
  br label %264

264:                                              ; preds = %262, %111, %21
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %265
}

declare dso_local i64 @opj_calloc(i32, i32) #1

declare dso_local i32 @opj_destroy_cstr_info(%struct.TYPE_16__**) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
