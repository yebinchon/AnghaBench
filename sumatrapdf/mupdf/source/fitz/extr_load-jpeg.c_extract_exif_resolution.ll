; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_extract_exif_resolution.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_extract_exif_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@JPEG_APP0 = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @extract_exif_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_exif_resolution(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JPEG_APP0, align 8
  %26 = add nsw i64 %25, 1
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 14
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21, %3
  store i32 0, i32* %4, align 4
  br label %263

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call float @read_value(i8* %39, i32 4, i32 1)
  %41 = fcmp une float %40, 0x41D15E1A60000000
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = call float @read_value(i8* %44, i32 2, i32 1)
  %46 = fcmp une float %45, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %34
  store i32 0, i32* %4, align 4
  br label %263

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  %51 = call float @read_value(i8* %50, i32 4, i32 1)
  %52 = fcmp oeq float %51, 0x41D2524A80000000
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = call float @read_value(i8* %56, i32 4, i32 1)
  %58 = fcmp oeq float %57, 0x41D3534000000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %263

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 10
  %65 = load i32, i32* %8, align 4
  %66 = call float @read_value(i8* %64, i32 4, i32 %65)
  %67 = fadd float %66, 6.000000e+00
  %68 = fptoui float %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %69, 14
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 2
  %77 = icmp ugt i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %62
  store i32 0, i32* %4, align 4
  br label %263

79:                                               ; preds = %71
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = call float @read_value(i8* %83, i32 2, i32 %84)
  %86 = fptoui float %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 2
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %214, %79
  %90 = load i32, i32* %11, align 4
  %91 = icmp ugt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 12
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br label %99

99:                                               ; preds = %92, %89
  %100 = phi i1 [ false, %89 ], [ %98, %92 ]
  br i1 %100, label %101, label %219

101:                                              ; preds = %99
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %8, align 4
  %107 = call float @read_value(i8* %105, i32 2, i32 %106)
  %108 = fptosi float %107 to i32
  store i32 %108, i32* %15, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i32, i32* %8, align 4
  %115 = call float @read_value(i8* %113, i32 2, i32 %114)
  %116 = fptosi float %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = load i32, i32* %8, align 4
  %123 = call float @read_value(i8* %121, i32 4, i32 %122)
  %124 = fptosi float %123 to i32
  store i32 %124, i32* %17, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  %130 = load i32, i32* %8, align 4
  %131 = call float @read_value(i8* %129, i32 4, i32 %130)
  %132 = fadd float %131, 6.000000e+00
  %133 = fptoui float %132 to i32
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %15, align 4
  switch i32 %134, label %213 [
    i32 282, label %135
    i32 283, label %166
    i32 296, label %197
  ]

135:                                              ; preds = %101
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 5
  br i1 %137, label %138, label %165

138:                                              ; preds = %135
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %138
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 8
  %148 = icmp ule i32 %143, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %142
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %18, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* %8, align 4
  %155 = call float @read_value(i8* %153, i32 4, i32 %154)
  %156 = fmul float 1.000000e+00, %155
  %157 = load i8*, i8** %9, align 8
  %158 = load i32, i32* %18, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = getelementptr inbounds i8, i8* %160, i64 4
  %162 = load i32, i32* %8, align 4
  %163 = call float @read_value(i8* %161, i32 4, i32 %162)
  %164 = fdiv float %156, %163
  store float %164, float* %13, align 4
  br label %165

165:                                              ; preds = %149, %142, %138, %135
  br label %213

166:                                              ; preds = %101
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %167, 5
  br i1 %168, label %169, label %196

169:                                              ; preds = %166
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ugt i32 %170, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 8
  %179 = icmp ule i32 %174, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %173
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* %18, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i32, i32* %8, align 4
  %186 = call float @read_value(i8* %184, i32 4, i32 %185)
  %187 = fmul float 1.000000e+00, %186
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %18, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = getelementptr inbounds i8, i8* %191, i64 4
  %193 = load i32, i32* %8, align 4
  %194 = call float @read_value(i8* %192, i32 4, i32 %193)
  %195 = fdiv float %187, %194
  store float %195, float* %14, align 4
  br label %196

196:                                              ; preds = %180, %173, %169, %166
  br label %213

197:                                              ; preds = %101
  %198 = load i32, i32* %16, align 4
  %199 = icmp eq i32 %198, 3
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load i32, i32* %17, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i8*, i8** %9, align 8
  %205 = load i32, i32* %10, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = getelementptr inbounds i8, i8* %207, i64 8
  %209 = load i32, i32* %8, align 4
  %210 = call float @read_value(i8* %208, i32 2, i32 %209)
  %211 = fptoui float %210 to i32
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %203, %200, %197
  br label %213

213:                                              ; preds = %101, %212, %196, %165
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %11, align 4
  %216 = add i32 %215, -1
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = add i32 %217, 12
  store i32 %218, i32* %10, align 4
  br label %89

219:                                              ; preds = %99
  %220 = load float, float* %13, align 4
  %221 = fcmp ole float %220, 0.000000e+00
  br i1 %221, label %233, label %222

222:                                              ; preds = %219
  %223 = load float, float* %13, align 4
  %224 = load float, float* @INT_MAX, align 4
  %225 = fcmp ogt float %223, %224
  br i1 %225, label %233, label %226

226:                                              ; preds = %222
  %227 = load float, float* %14, align 4
  %228 = fcmp ole float %227, 0.000000e+00
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = load float, float* %14, align 4
  %231 = load float, float* @INT_MAX, align 4
  %232 = fcmp ogt float %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %229, %226, %222, %219
  store i32 0, i32* %4, align 4
  br label %263

234:                                              ; preds = %229
  %235 = load i32, i32* %12, align 4
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load float, float* %13, align 4
  %239 = fptosi float %238 to i32
  %240 = load i32*, i32** %6, align 8
  store i32 %239, i32* %240, align 4
  %241 = load float, float* %14, align 4
  %242 = fptosi float %241 to i32
  %243 = load i32*, i32** %7, align 8
  store i32 %242, i32* %243, align 4
  br label %262

244:                                              ; preds = %234
  %245 = load i32, i32* %12, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = load float, float* %13, align 4
  %249 = fmul float %248, 2.540000e+02
  %250 = fdiv float %249, 1.000000e+02
  %251 = fptosi float %250 to i32
  %252 = load i32*, i32** %6, align 8
  store i32 %251, i32* %252, align 4
  %253 = load float, float* %14, align 4
  %254 = fmul float %253, 2.540000e+02
  %255 = fdiv float %254, 1.000000e+02
  %256 = fptosi float %255 to i32
  %257 = load i32*, i32** %7, align 8
  store i32 %256, i32* %257, align 4
  br label %261

258:                                              ; preds = %244
  %259 = load i32*, i32** %6, align 8
  store i32 0, i32* %259, align 4
  %260 = load i32*, i32** %7, align 8
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %258, %247
  br label %262

262:                                              ; preds = %261, %237
  store i32 1, i32* %4, align 4
  br label %263

263:                                              ; preds = %262, %233, %78, %60, %47, %33
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local float @read_value(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
