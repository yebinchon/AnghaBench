; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_AllocateExternalBuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_AllocateExternalBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_15__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32* }

@RGB = common dso_local global i64 0, align 8
@rgbA_4444 = common dso_local global i64 0, align 8
@BGR = common dso_local global i64 0, align 8
@RGBA_4444 = common dso_local global i64 0, align 8
@RGB_565 = common dso_local global i64 0, align 8
@YUV = common dso_local global i64 0, align 8
@YUVA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i64, i32)* @AllocateExternalBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AllocateExternalBuffer(%struct.TYPE_14__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @RGB, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %124

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @rgbA_4444, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @RGB, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @BGR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  br label %92

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @RGBA_4444, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @rgbA_4444, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @RGB_565, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %80, %76
  %89 = phi i1 [ true, %80 ], [ true, %76 ], [ %87, %84 ]
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 4
  br label %92

92:                                               ; preds = %88, %75
  %93 = phi i32 [ 3, %75 ], [ %91, %88 ]
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %96, 7
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %98, %99
  %101 = call i64 @WebPMalloc(i32 %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  store i32* null, i32** %4, align 8
  br label %299

106:                                              ; preds = %92
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  store i32* %119, i32** %123, align 8
  br label %294

124:                                              ; preds = %63, %59
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @WebPIsAlphaMode(i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 3
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  %133 = sdiv i32 %132, 2
  %134 = add nsw i32 %133, 13
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 2, i32 1
  %142 = mul nsw i32 %137, %141
  %143 = load i32, i32* %17, align 4
  %144 = mul nsw i32 2, %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  %147 = mul nsw i32 %144, %146
  %148 = sdiv i32 %147, 2
  %149 = add nsw i32 %142, %148
  store i32 %149, i32* %18, align 4
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @YUV, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %124
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @YUVA, align 8
  %156 = icmp sle i64 %154, %155
  br label %157

157:                                              ; preds = %153, %124
  %158 = phi i1 [ false, %124 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %18, align 4
  %162 = call i64 @WebPMalloc(i32 %161)
  %163 = inttoptr i64 %162 to i32*
  store i32* %163, i32** %8, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32* null, i32** %4, align 8
  br label %299

167:                                              ; preds = %157
  %168 = load i32*, i32** %8, align 8
  store i32* %168, i32** %15, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 11
  store i32* %169, i32** %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %11, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %15, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %15, align 8
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %222

196:                                              ; preds = %167
  %197 = load i32*, i32** %15, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 10
  store i32* %197, i32** %201, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  store i32 %202, i32* %206, align 8
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %11, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  store i32 %209, i32* %213, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %15, align 8
  br label %231

222:                                              ; preds = %167
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 10
  store i32* null, i32** %226, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  store i32 0, i32* %230, align 8
  br label %231

231:                                              ; preds = %222, %196
  %232 = load i32*, i32** %15, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 9
  store i32* %232, i32** %236, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  store i32 %237, i32* %241, align 8
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  %245 = mul nsw i32 %242, %244
  %246 = sdiv i32 %245, 2
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 5
  store i32 %246, i32* %250, align 4
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %15, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %15, align 8
  %259 = load i32*, i32** %15, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 8
  store i32* %259, i32** %263, align 8
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 6
  store i32 %264, i32* %268, align 8
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  %272 = mul nsw i32 %269, %271
  %273 = sdiv i32 %272, 2
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 7
  store i32 %273, i32* %277, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %15, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  store i32* %285, i32** %15, align 8
  %286 = load i32*, i32** %15, align 8
  %287 = load i32*, i32** %8, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = icmp ule i32* %286, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  br label %294

294:                                              ; preds = %231, %106
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32*, i32** %8, align 8
  store i32* %298, i32** %4, align 8
  br label %299

299:                                              ; preds = %294, %166, %105
  %300 = load i32*, i32** %4, align 8
  ret i32* %300
}

declare dso_local i64 @WebPMalloc(i32) #1

declare dso_local i32 @WebPIsAlphaMode(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
