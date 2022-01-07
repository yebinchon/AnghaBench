; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_get_cstr_index.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_get_cstr_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32*, %struct.TYPE_14__*, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @j2k_get_cstr_index(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = call i64 @opj_calloc(i32 1, i32 72)
  %9 = inttoptr i64 %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %412

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 72
  %47 = trunc i64 %46 to i32
  %48 = call i64 @opj_malloc(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_14__*
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 7
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %13
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = call i32 @opj_free(%struct.TYPE_14__* %57)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %412

59:                                               ; preds = %13
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 72
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(%struct.TYPE_14__* %69, i64 %74, i32 %80)
  br label %89

82:                                               ; preds = %59
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @opj_free(%struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 7
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %88, align 8
  br label %89

89:                                               ; preds = %82, %66
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @opj_calloc(i32 %99, i32 72)
  %101 = inttoptr i64 %100 to %struct.TYPE_14__*
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = icmp ne %struct.TYPE_14__* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %89
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 @opj_free(%struct.TYPE_14__* %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = call i32 @opj_free(%struct.TYPE_14__* %113)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %412

115:                                              ; preds = %89
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = call i32 @opj_free(%struct.TYPE_14__* %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %128, align 8
  br label %410

129:                                              ; preds = %115
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %130

130:                                              ; preds = %406, %129
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %131, %135
  br i1 %136, label %137, label %409

137:                                              ; preds = %130
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i32 %146, i32* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 72
  %162 = trunc i64 %161 to i32
  %163 = call i64 @opj_malloc(i32 %162)
  %164 = inttoptr i64 %163 to %struct.TYPE_14__*
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 7
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = icmp ne %struct.TYPE_14__* %177, null
  br i1 %178, label %207, label %179

179:                                              ; preds = %137
  store i64 0, i64* %6, align 8
  br label %180

180:                                              ; preds = %193, %179
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %5, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = call i32 @opj_free(%struct.TYPE_14__* %191)
  br label %193

193:                                              ; preds = %184
  %194 = load i64, i64* %6, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %6, align 8
  br label %180

196:                                              ; preds = %180
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = call i32 @opj_free(%struct.TYPE_14__* %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = call i32 @opj_free(%struct.TYPE_14__* %203)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = call i32 @opj_free(%struct.TYPE_14__* %205)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %412

207:                                              ; preds = %137
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %246

218:                                              ; preds = %207
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i64, i64* %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 7
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load i64, i64* %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = load i64, i64* %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 72
  %244 = trunc i64 %243 to i32
  %245 = call i32 @memcpy(%struct.TYPE_14__* %225, i64 %234, i32 %244)
  br label %261

246:                                              ; preds = %207
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = load i64, i64* %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 7
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = call i32 @opj_free(%struct.TYPE_14__* %253)
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = load i64, i64* %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 7
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %260, align 8
  br label %261

261:                                              ; preds = %246, %218
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = load i64, i64* %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = load i64, i64* %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  store i32 %270, i32* %276, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = load i64, i64* %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 72
  %286 = trunc i64 %285 to i32
  %287 = call i64 @opj_malloc(i32 %286)
  %288 = inttoptr i64 %287 to %struct.TYPE_14__*
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = load i64, i64* %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 6
  store %struct.TYPE_14__* %288, %struct.TYPE_14__** %294, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load i64, i64* %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 6
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = icmp ne %struct.TYPE_14__* %301, null
  br i1 %302, label %339, label %303

303:                                              ; preds = %261
  store i64 0, i64* %7, align 8
  br label %304

304:                                              ; preds = %325, %303
  %305 = load i64, i64* %7, align 8
  %306 = load i64, i64* %5, align 8
  %307 = icmp ult i64 %305, %306
  br i1 %307, label %308, label %328

308:                                              ; preds = %304
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = load i64, i64* %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 7
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = call i32 @opj_free(%struct.TYPE_14__* %315)
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 4
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = load i64, i64* %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 6
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %322, align 8
  %324 = call i32 @opj_free(%struct.TYPE_14__* %323)
  br label %325

325:                                              ; preds = %308
  %326 = load i64, i64* %7, align 8
  %327 = add i64 %326, 1
  store i64 %327, i64* %7, align 8
  br label %304

328:                                              ; preds = %304
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = call i32 @opj_free(%struct.TYPE_14__* %331)
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 7
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %334, align 8
  %336 = call i32 @opj_free(%struct.TYPE_14__* %335)
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %338 = call i32 @opj_free(%struct.TYPE_14__* %337)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %412

339:                                              ; preds = %261
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %343, align 8
  %345 = load i64, i64* %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %378

350:                                              ; preds = %339
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = load i64, i64* %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 6
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %361, align 8
  %363 = load i64, i64* %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %368, align 8
  %370 = load i64, i64* %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 72
  %376 = trunc i64 %375 to i32
  %377 = call i32 @memcpy(%struct.TYPE_14__* %357, i64 %366, i32 %376)
  br label %393

378:                                              ; preds = %339
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 4
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %380, align 8
  %382 = load i64, i64* %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 6
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %384, align 8
  %386 = call i32 @opj_free(%struct.TYPE_14__* %385)
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %388, align 8
  %390 = load i64, i64* %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %392, align 8
  br label %393

393:                                              ; preds = %378, %350
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 4
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %395, align 8
  %397 = load i64, i64* %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 5
  store i64 0, i64* %399, align 8
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 4
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %401, align 8
  %403 = load i64, i64* %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 3
  store i32* null, i32** %405, align 8
  br label %406

406:                                              ; preds = %393
  %407 = load i64, i64* %5, align 8
  %408 = add i64 %407, 1
  store i64 %408, i64* %5, align 8
  br label %130

409:                                              ; preds = %130
  br label %410

410:                                              ; preds = %409, %122
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %411, %struct.TYPE_14__** %2, align 8
  br label %412

412:                                              ; preds = %410, %328, %196, %108, %56, %12
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %413
}

declare dso_local i64 @opj_calloc(i32, i32) #1

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
