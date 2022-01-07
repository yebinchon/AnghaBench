; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cio.c_opj_stream_read_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cio.c_opj_stream_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i64 (i32*, i64, i32)*, i32*, i32*, i32, i32 }

@OPJ_STREAM_STATUS_END = common dso_local global i32 0, align 4
@EVT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Stream reached its end !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_stream_read_data(%struct.TYPE_3__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @memcpy(i32* %17, i32* %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 %23
  store i32* %27, i32** %25, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %5, align 8
  br label %360

44:                                               ; preds = %4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OPJ_STREAM_STATUS_END, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %44
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(i32* %57, i32* %60, i64 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %67
  store i32* %71, i32** %69, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %51
  %86 = load i64, i64* %10, align 8
  br label %88

87:                                               ; preds = %51
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i64 [ %86, %85 ], [ -1, %87 ]
  store i64 %89, i64* %5, align 8
  br label %360

90:                                               ; preds = %44
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memcpy(i32* %101, i32* %104, i64 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 %116
  store i32* %118, i32** %7, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = sub nsw i64 %122, %121
  store i64 %123, i64* %8, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  br label %141

135:                                              ; preds = %90
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  store i32* %138, i32** %140, align 8
  br label %141

141:                                              ; preds = %135, %95
  br label %142

142:                                              ; preds = %359, %141
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %148, label %262

148:                                              ; preds = %142
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i64 (i32*, i64, i32)*, i64 (i32*, i64, i32)** %150, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = call i64 %151(i32* %154, i64 %157, i32 %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, -1
  br i1 %167, label %168, label %186

168:                                              ; preds = %148
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* @EVT_INFO, align 4
  %171 = call i32 @opj_event_msg(i32* %169, i32 %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load i32, i32* @OPJ_STREAM_STATUS_END, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = load i64, i64* %10, align 8
  br label %184

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i64 [ %182, %181 ], [ -1, %183 ]
  store i64 %185, i64* %5, align 8
  br label %360

186:                                              ; preds = %148
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %8, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %232

192:                                              ; preds = %186
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %10, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @memcpy(i32* %198, i32* %201, i64 %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 5
  store i32* %208, i32** %210, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 %213
  store i32* %215, i32** %7, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = sub nsw i64 %219, %218
  store i64 %220, i64* %8, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %223
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %260

232:                                              ; preds = %186
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* %10, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %10, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* %8, align 8
  %241 = call i32 @memcpy(i32* %236, i32* %239, i64 %240)
  %242 = load i64, i64* %8, align 8
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 5
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 %242
  store i32* %246, i32** %244, align 8
  %247 = load i64, i64* %8, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  %252 = load i64, i64* %8, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %252
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %254, align 8
  %259 = load i64, i64* %10, align 8
  store i64 %259, i64* %5, align 8
  br label %360

260:                                              ; preds = %192
  br label %261

261:                                              ; preds = %260
  br label %359

262:                                              ; preds = %142
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i64 (i32*, i64, i32)*, i64 (i32*, i64, i32)** %264, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = load i64, i64* %8, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = call i64 %265(i32* %266, i64 %267, i32 %270)
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  store i64 %271, i64* %273, align 8
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, -1
  br i1 %277, label %278, label %296

278:                                              ; preds = %262
  %279 = load i32*, i32** %9, align 8
  %280 = load i32, i32* @EVT_INFO, align 4
  %281 = call i32 @opj_event_msg(i32* %279, i32 %280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  store i64 0, i64* %283, align 8
  %284 = load i32, i32* @OPJ_STREAM_STATUS_END, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load i64, i64* %10, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %278
  %292 = load i64, i64* %10, align 8
  br label %294

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %293, %291
  %295 = phi i64 [ %292, %291 ], [ -1, %293 ]
  store i64 %295, i64* %5, align 8
  br label %360

296:                                              ; preds = %262
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* %8, align 8
  %301 = icmp slt i64 %299, %300
  br i1 %301, label %302, label %334

302:                                              ; preds = %296
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %10, align 8
  %307 = add nsw i64 %306, %305
  store i64 %307, i64* %10, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 5
  store i32* %310, i32** %312, align 8
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i32*, i32** %7, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 %315
  store i32* %317, i32** %7, align 8
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* %8, align 8
  %322 = sub nsw i64 %321, %320
  store i64 %322, i64* %8, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %325
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 8
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  store i64 0, i64* %333, align 8
  br label %357

334:                                              ; preds = %296
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* %10, align 8
  %339 = add nsw i64 %338, %337
  store i64 %339, i64* %10, align 8
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %346, %342
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %344, align 8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 5
  store i32* %351, i32** %353, align 8
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  store i64 0, i64* %355, align 8
  %356 = load i64, i64* %10, align 8
  store i64 %356, i64* %5, align 8
  br label %360

357:                                              ; preds = %302
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358, %261
  br label %142

360:                                              ; preds = %334, %294, %232, %184, %88, %16
  %361 = load i64, i64* %5, align 8
  ret i64 %361
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
