; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBltSrcCopy.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBltSrcCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"DIB_1BPP_BitBlt: Unhandled Source BPP: %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_1BPP_BitBltSrcCopy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %323 [
    i32 132, label %18
    i32 129, label %33
    i32 128, label %91
    i32 133, label %149
    i32 131, label %207
    i32 130, label %265
  ]

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  %32 = call i32 @DIB_1BPP_BitBltSrcCopy_From1BPP(i32 %21, %struct.TYPE_12__* %24, i32 %27, %struct.TYPE_13__* %29, %struct.TYPE_14__* %31)
  br label %332

33:                                               ; preds = %1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %87, %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %81, %45
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DIB_4BPP_GetPixel(%struct.TYPE_12__* %67, i32 %68, i32 %69)
  %71 = call i32 @XLATEOBJ_iXlate(i32 %64, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DIB_1BPP_PutPixel(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %54

84:                                               ; preds = %54
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %38

90:                                               ; preds = %38
  br label %332

91:                                               ; preds = %1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %145, %91
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %148

103:                                              ; preds = %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %7, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %139, %103
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %112
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @DIB_8BPP_GetPixel(%struct.TYPE_12__* %125, i32 %126, i32 %127)
  %129 = call i32 @XLATEOBJ_iXlate(i32 %122, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @DIB_1BPP_PutPixel(i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %119
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %112

142:                                              ; preds = %112
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %96

148:                                              ; preds = %96
  br label %332

149:                                              ; preds = %1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %203, %149
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %206

161:                                              ; preds = %154
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %7, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %197, %161
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %170
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @DIB_16BPP_GetPixel(%struct.TYPE_12__* %183, i32 %184, i32 %185)
  %187 = call i32 @XLATEOBJ_iXlate(i32 %180, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @DIB_1BPP_PutPixel(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %177
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %170

200:                                              ; preds = %170
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %154

206:                                              ; preds = %154
  br label %332

207:                                              ; preds = %1
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %261, %207
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %213, %217
  br i1 %218, label %219, label %264

219:                                              ; preds = %212
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %7, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %255, %219
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %228
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @DIB_24BPP_GetPixel(%struct.TYPE_12__* %241, i32 %242, i32 %243)
  %245 = call i32 @XLATEOBJ_iXlate(i32 %238, i32 %244)
  store i32 %245, i32* %4, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @DIB_1BPP_PutPixel(i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %235
  %256 = load i32, i32* %5, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %5, align 4
  br label %228

258:                                              ; preds = %228
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %212

264:                                              ; preds = %212
  br label %332

265:                                              ; preds = %1
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %319, %265
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %277, label %322

277:                                              ; preds = %270
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %7, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %313, %277
  %287 = load i32, i32* %5, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %287, %291
  br i1 %292, label %293, label %316

293:                                              ; preds = %286
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @DIB_32BPP_GetPixel(%struct.TYPE_12__* %299, i32 %300, i32 %301)
  %303 = call i32 @XLATEOBJ_iXlate(i32 %296, i32 %302)
  store i32 %303, i32* %4, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %4, align 4
  %310 = call i32 @DIB_1BPP_PutPixel(i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %7, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %293
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %5, align 4
  br label %286

316:                                              ; preds = %286
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %270

322:                                              ; preds = %270
  br label %332

323:                                              ; preds = %1
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @BitsPerFormat(i32 %328)
  %330 = call i32 @DbgPrint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @FALSE, align 4
  store i32 %331, i32* %2, align 4
  br label %334

332:                                              ; preds = %322, %264, %206, %148, %90, %18
  %333 = load i32, i32* @TRUE, align 4
  store i32 %333, i32* %2, align 4
  br label %334

334:                                              ; preds = %332, %323
  %335 = load i32, i32* %2, align 4
  ret i32 %335
}

declare dso_local i32 @DIB_1BPP_BitBltSrcCopy_From1BPP(i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32, i32) #1

declare dso_local i32 @DIB_4BPP_GetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DIB_1BPP_PutPixel(i32, i32, i32, i32) #1

declare dso_local i32 @DIB_8BPP_GetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DIB_16BPP_GetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DIB_24BPP_GetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DIB_32BPP_GetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DbgPrint(i8*, i32) #1

declare dso_local i32 @BitsPerFormat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
