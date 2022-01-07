; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_stretchblt.c_DIB_XXBPP_StretchBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_stretchblt.c_DIB_XXBPP_StretchBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 (%struct.TYPE_19__*, i64, i64)*, i32 (%struct.TYPE_19__*, i64, i64, i32)* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64 }

@DibFunctionsForBitmapFormat = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Dest BPP: %u, dstRect: (%d,%d)-(%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Source BPP: %u, srcRect: (%d,%d)-(%d,%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@R3_OPINDEX_SRCCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_XXBPP_StretchBlt(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3, %struct.TYPE_20__* %4, %struct.TYPE_20__* %5, %struct.TYPE_21__* %6, %struct.TYPE_22__* %7, %struct.TYPE_21__* %8, i32* %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64 (%struct.TYPE_19__*, i64, i64)*, align 8
  %40 = alloca i64 (%struct.TYPE_19__*, i64, i64)*, align 8
  %41 = alloca i32 (%struct.TYPE_19__*, i64, i64, i32)*, align 8
  %42 = alloca i64 (%struct.TYPE_19__*, i64, i64)*, align 8
  %43 = alloca i64 (%struct.TYPE_19__*, i64, i64)*, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 %10, i32* %22, align 4
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i64 (%struct.TYPE_19__*, i64, i64)* null, i64 (%struct.TYPE_19__*, i64, i64)** %39, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* null, i64 (%struct.TYPE_19__*, i64, i64)** %40, align 8
  store i32 (%struct.TYPE_19__*, i64, i64, i32)* null, i32 (%struct.TYPE_19__*, i64, i64, i32)** %41, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* null, i64 (%struct.TYPE_19__*, i64, i64)** %42, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* null, i64 (%struct.TYPE_19__*, i64, i64)** %43, align 8
  store i64 0, i64* %44, align 8
  store i64 0, i64* %45, align 8
  %48 = load i32, i32* %22, align 4
  %49 = call i64 @ROP4_USES_SOURCE(i32 %48)
  store i64 %49, i64* %46, align 8
  %50 = load i32, i32* %22, align 4
  %51 = call i64 @ROP4_USES_PATTERN(i32 %50)
  store i64 %51, i64* %47, align 8
  %52 = load i32, i32* %22, align 4
  %53 = call i32 @IS_VALID_ROP4(i32 %52)
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DibFunctionsForBitmapFormat, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %60, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* %61, i64 (%struct.TYPE_19__*, i64, i64)** %40, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DibFunctionsForBitmapFormat, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_19__*, i64, i64, i32)*, i32 (%struct.TYPE_19__*, i64, i64, i32)** %67, align 8
  store i32 (%struct.TYPE_19__*, i64, i64, i32)* %68, i32 (%struct.TYPE_19__*, i64, i64, i32)** %41, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @BitsPerFormat(i64 %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %75, i64 %78, i64 %81, i64 %84)
  %86 = load i64, i64* %46, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %11
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %32, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DibFunctionsForBitmapFormat, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %98, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* %99, i64 (%struct.TYPE_19__*, i64, i64)** %39, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @BitsPerFormat(i64 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %106, i64 %109, i64 %112, i64 %115)
  br label %117

117:                                              ; preds = %88, %11
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %119 = icmp ne %struct.TYPE_19__* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DibFunctionsForBitmapFormat, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %126, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* %127, i64 (%struct.TYPE_19__*, i64, i64)** %43, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %31, align 8
  br label %132

132:                                              ; preds = %120, %117
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %27, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  store i64 %146, i64* %28, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  store i64 %153, i64* %29, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  store i64 %160, i64* %30, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  switch i64 %163, label %169 [
    i64 131, label %164
    i64 129, label %165
    i64 128, label %166
    i64 132, label %167
    i64 130, label %168
  ]

164:                                              ; preds = %132
  store i32 1, i32* %37, align 4
  br label %170

165:                                              ; preds = %132
  store i32 15, i32* %37, align 4
  br label %170

166:                                              ; preds = %132
  store i32 255, i32* %37, align 4
  br label %170

167:                                              ; preds = %132
  store i32 65535, i32* %37, align 4
  br label %170

168:                                              ; preds = %132
  store i32 16777215, i32* %37, align 4
  br label %170

169:                                              ; preds = %132
  store i32 -1, i32* %37, align 4
  br label %170

170:                                              ; preds = %169, %168, %167, %166, %165, %164
  %171 = load i64, i64* %47, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %170
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %175 = icmp ne %struct.TYPE_19__* %174, null
  br i1 %175, label %176, label %206

176:                                              ; preds = %173
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = srem i64 %183, %187
  store i64 %188, i64* %45, align 8
  %189 = load i64, i64* %45, align 8
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %176
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %45, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %45, align 8
  br label %198

198:                                              ; preds = %191, %176
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DibFunctionsForBitmapFormat, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %204, align 8
  store i64 (%struct.TYPE_19__*, i64, i64)* %205, i64 (%struct.TYPE_19__*, i64, i64)** %42, align 8
  br label %214

206:                                              ; preds = %173
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %208 = icmp ne %struct.TYPE_22__* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %36, align 4
  br label %213

213:                                              ; preds = %209, %206
  br label %214

214:                                              ; preds = %213, %198
  br label %215

215:                                              ; preds = %214, %170
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %26, align 8
  br label %219

219:                                              ; preds = %434, %215
  %220 = load i64, i64* %26, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %220, %223
  br i1 %224, label %225, label %437

225:                                              ; preds = %219
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %227 = icmp ne %struct.TYPE_19__* %226, null
  br i1 %227, label %228, label %251

228:                                              ; preds = %225
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %231, %234
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = srem i64 %235, %239
  store i64 %240, i64* %44, align 8
  %241 = load i64, i64* %44, align 8
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %228
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %44, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %44, align 8
  br label %250

250:                                              ; preds = %243, %228
  br label %251

251:                                              ; preds = %250, %225
  %252 = load i64, i64* %46, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %251
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %26, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = sub nsw i64 %258, %261
  %263 = load i64, i64* %29, align 8
  %264 = mul nsw i64 %262, %263
  %265 = load i64, i64* %27, align 8
  %266 = sdiv i64 %264, %265
  %267 = add nsw i64 %257, %266
  store i64 %267, i64* %24, align 8
  br label %268

268:                                              ; preds = %254, %251
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %25, align 8
  br label %272

272:                                              ; preds = %418, %268
  %273 = load i64, i64* %25, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp slt i64 %273, %276
  br i1 %277, label %278, label %421

278:                                              ; preds = %272
  %279 = load i32, i32* @TRUE, align 4
  store i32 %279, i32* %38, align 4
  %280 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %43, align 8
  %281 = icmp ne i64 (%struct.TYPE_19__*, i64, i64)* %280, null
  br i1 %281, label %282, label %322

282:                                              ; preds = %278
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %25, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 %286, %289
  %291 = load i64, i64* %30, align 8
  %292 = mul nsw i64 %290, %291
  %293 = load i64, i64* %28, align 8
  %294 = sdiv i64 %292, %293
  %295 = add nsw i64 %285, %294
  store i64 %295, i64* %23, align 8
  %296 = load i64, i64* %23, align 8
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %282
  %299 = load i64, i64* %24, align 8
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %319, label %301

301:                                              ; preds = %298
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %23, align 8
  %307 = icmp slt i64 %305, %306
  br i1 %307, label %319, label %308

308:                                              ; preds = %301
  %309 = load i64, i64* %31, align 8
  %310 = load i64, i64* %24, align 8
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %319, label %312

312:                                              ; preds = %308
  %313 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %43, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %315 = load i64, i64* %23, align 8
  %316 = load i64, i64* %24, align 8
  %317 = call i64 %313(%struct.TYPE_19__* %314, i64 %315, i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %312, %308, %301, %298, %282
  %320 = load i32, i32* @FALSE, align 4
  store i32 %320, i32* %38, align 4
  br label %321

321:                                              ; preds = %319, %312
  br label %322

322:                                              ; preds = %321, %278
  %323 = load i64, i64* %46, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %373

325:                                              ; preds = %322
  %326 = load i32, i32* %38, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %373

328:                                              ; preds = %325
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %25, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %332, %335
  %337 = load i64, i64* %30, align 8
  %338 = mul nsw i64 %336, %337
  %339 = load i64, i64* %28, align 8
  %340 = sdiv i64 %338, %339
  %341 = add nsw i64 %331, %340
  store i64 %341, i64* %23, align 8
  %342 = load i64, i64* %23, align 8
  %343 = icmp sge i64 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %328
  %345 = load i64, i64* %24, align 8
  %346 = icmp sge i64 %345, 0
  br i1 %346, label %347, label %366

347:                                              ; preds = %344
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %23, align 8
  %353 = icmp sgt i64 %351, %352
  br i1 %353, label %354, label %366

354:                                              ; preds = %347
  %355 = load i64, i64* %32, align 8
  %356 = load i64, i64* %24, align 8
  %357 = icmp sgt i64 %355, %356
  br i1 %357, label %358, label %366

358:                                              ; preds = %354
  %359 = load i32*, i32** %21, align 8
  %360 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %39, align 8
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %362 = load i64, i64* %23, align 8
  %363 = load i64, i64* %24, align 8
  %364 = call i64 %360(%struct.TYPE_19__* %361, i64 %362, i64 %363)
  %365 = call i32 @XLATEOBJ_iXlate(i32* %359, i64 %364)
  store i32 %365, i32* %35, align 4
  br label %372

366:                                              ; preds = %354, %347, %344, %328
  store i32 0, i32* %35, align 4
  %367 = load i32, i32* %22, align 4
  %368 = and i32 %367, 255
  %369 = load i32, i32* @R3_OPINDEX_SRCCOPY, align 4
  %370 = icmp ne i32 %368, %369
  %371 = zext i1 %370 to i32
  store i32 %371, i32* %38, align 4
  br label %372

372:                                              ; preds = %366, %358
  br label %373

373:                                              ; preds = %372, %325, %322
  %374 = load i32, i32* %38, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %417

376:                                              ; preds = %373
  %377 = load i64, i64* %47, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %397

379:                                              ; preds = %376
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %381 = icmp ne %struct.TYPE_19__* %380, null
  br i1 %381, label %382, label %397

382:                                              ; preds = %379
  %383 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %42, align 8
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %385 = load i64, i64* %44, align 8
  %386 = load i64, i64* %45, align 8
  %387 = call i64 %383(%struct.TYPE_19__* %384, i64 %385, i64 %386)
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %36, align 4
  %389 = load i64, i64* %44, align 8
  %390 = add nsw i64 %389, 1
  store i64 %390, i64* %44, align 8
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* %44, align 8
  %396 = srem i64 %395, %394
  store i64 %396, i64* %44, align 8
  br label %397

397:                                              ; preds = %382, %379, %376
  %398 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %40, align 8
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %400 = load i64, i64* %25, align 8
  %401 = load i64, i64* %26, align 8
  %402 = call i64 %398(%struct.TYPE_19__* %399, i64 %400, i64 %401)
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %34, align 4
  %404 = load i32, i32* %22, align 4
  %405 = load i32, i32* %34, align 4
  %406 = load i32, i32* %35, align 4
  %407 = load i32, i32* %36, align 4
  %408 = call i32 @DIB_DoRop(i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %37, align 4
  %410 = and i32 %408, %409
  store i32 %410, i32* %33, align 4
  %411 = load i32 (%struct.TYPE_19__*, i64, i64, i32)*, i32 (%struct.TYPE_19__*, i64, i64, i32)** %41, align 8
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %413 = load i64, i64* %25, align 8
  %414 = load i64, i64* %26, align 8
  %415 = load i32, i32* %33, align 4
  %416 = call i32 %411(%struct.TYPE_19__* %412, i64 %413, i64 %414, i32 %415)
  br label %417

417:                                              ; preds = %397, %373
  br label %418

418:                                              ; preds = %417
  %419 = load i64, i64* %25, align 8
  %420 = add nsw i64 %419, 1
  store i64 %420, i64* %25, align 8
  br label %272

421:                                              ; preds = %272
  %422 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %423 = icmp ne %struct.TYPE_19__* %422, null
  br i1 %423, label %424, label %433

424:                                              ; preds = %421
  %425 = load i64, i64* %45, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %45, align 8
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* %45, align 8
  %432 = srem i64 %431, %430
  store i64 %432, i64* %45, align 8
  br label %433

433:                                              ; preds = %424, %421
  br label %434

434:                                              ; preds = %433
  %435 = load i64, i64* %26, align 8
  %436 = add nsw i64 %435, 1
  store i64 %436, i64* %26, align 8
  br label %219

437:                                              ; preds = %219
  %438 = load i32, i32* @TRUE, align 4
  ret i32 %438
}

declare dso_local i64 @ROP4_USES_SOURCE(i32) #1

declare dso_local i64 @ROP4_USES_PATTERN(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IS_VALID_ROP4(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @BitsPerFormat(i64) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32*, i64) #1

declare dso_local i32 @DIB_DoRop(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
