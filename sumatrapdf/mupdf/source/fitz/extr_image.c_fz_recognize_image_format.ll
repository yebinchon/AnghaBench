; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_recognize_image_format.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_recognize_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_IMAGE_PNM = common dso_local global i32 0, align 4
@FZ_IMAGE_JPX = common dso_local global i32 0, align 4
@FZ_IMAGE_JPEG = common dso_local global i32 0, align 4
@FZ_IMAGE_PNG = common dso_local global i32 0, align 4
@FZ_IMAGE_JXR = common dso_local global i32 0, align 4
@FZ_IMAGE_TIFF = common dso_local global i32 0, align 4
@FZ_IMAGE_GIF = common dso_local global i32 0, align 4
@FZ_IMAGE_BMP = common dso_local global i32 0, align 4
@FZ_IMAGE_JBIG2 = common dso_local global i32 0, align 4
@FZ_IMAGE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_recognize_image_format(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 80
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %15, 49
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sle i32 %21, 55
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @FZ_IMAGE_PNM, align 4
  store i32 %24, i32* %3, align 4
  br label %311

25:                                               ; preds = %17, %11, %2
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 79
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @FZ_IMAGE_JPX, align 4
  store i32 %38, i32* %3, align 4
  br label %311

39:                                               ; preds = %31, %25
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 106
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 80
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 6
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 7
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @FZ_IMAGE_JPX, align 4
  store i32 %88, i32* %3, align 4
  br label %311

89:                                               ; preds = %81, %75, %69, %63, %57, %51, %45, %39
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 255
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 216
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @FZ_IMAGE_JPEG, align 4
  store i32 %102, i32* %3, align 4
  br label %311

103:                                              ; preds = %95, %89
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 137
  br i1 %108, label %109, label %153

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 80
  br i1 %114, label %115, label %153

115:                                              ; preds = %109
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 78
  br i1 %120, label %121, label %153

121:                                              ; preds = %115
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 71
  br i1 %126, label %127, label %153

127:                                              ; preds = %121
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %133, label %153

133:                                              ; preds = %127
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 10
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 6
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 26
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 7
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @FZ_IMAGE_PNG, align 4
  store i32 %152, i32* %3, align 4
  br label %311

153:                                              ; preds = %145, %139, %133, %127, %121, %115, %109, %103
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 73
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 73
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 188
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @FZ_IMAGE_JXR, align 4
  store i32 %172, i32* %3, align 4
  br label %311

173:                                              ; preds = %165, %159, %153
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 73
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 73
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 42
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @FZ_IMAGE_TIFF, align 4
  store i32 %198, i32* %3, align 4
  br label %311

199:                                              ; preds = %191, %185, %179, %173
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 77
  br i1 %204, label %205, label %225

205:                                              ; preds = %199
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 77
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 42
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* @FZ_IMAGE_TIFF, align 4
  store i32 %224, i32* %3, align 4
  br label %311

225:                                              ; preds = %217, %211, %205, %199
  %226 = load i8*, i8** %5, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 71
  br i1 %230, label %231, label %245

231:                                              ; preds = %225
  %232 = load i8*, i8** %5, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp eq i32 %235, 73
  br i1 %236, label %237, label %245

237:                                              ; preds = %231
  %238 = load i8*, i8** %5, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 70
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* @FZ_IMAGE_GIF, align 4
  store i32 %244, i32* %3, align 4
  br label %311

245:                                              ; preds = %237, %231, %225
  %246 = load i8*, i8** %5, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %249, 66
  br i1 %250, label %251, label %259

251:                                              ; preds = %245
  %252 = load i8*, i8** %5, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 77
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i32, i32* @FZ_IMAGE_BMP, align 4
  store i32 %258, i32* %3, align 4
  br label %311

259:                                              ; preds = %251, %245
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp eq i32 %263, 151
  br i1 %264, label %265, label %309

265:                                              ; preds = %259
  %266 = load i8*, i8** %5, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 74
  br i1 %270, label %271, label %309

271:                                              ; preds = %265
  %272 = load i8*, i8** %5, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %275, 66
  br i1 %276, label %277, label %309

277:                                              ; preds = %271
  %278 = load i8*, i8** %5, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 3
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp eq i32 %281, 50
  br i1 %282, label %283, label %309

283:                                              ; preds = %277
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 4
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 13
  br i1 %288, label %289, label %309

289:                                              ; preds = %283
  %290 = load i8*, i8** %5, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 5
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp eq i32 %293, 10
  br i1 %294, label %295, label %309

295:                                              ; preds = %289
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 6
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp eq i32 %299, 26
  br i1 %300, label %301, label %309

301:                                              ; preds = %295
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 7
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = icmp eq i32 %305, 10
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = load i32, i32* @FZ_IMAGE_JBIG2, align 4
  store i32 %308, i32* %3, align 4
  br label %311

309:                                              ; preds = %301, %295, %289, %283, %277, %271, %265, %259
  %310 = load i32, i32* @FZ_IMAGE_UNKNOWN, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %307, %257, %243, %223, %197, %171, %151, %101, %87, %37, %23
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
