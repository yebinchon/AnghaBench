; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_ihdr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_ihdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i8, i8, i32, i32, i8* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IHDR chunk is the wrong size\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"image width must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"image height must be > 0\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"image bit depth must be one of 1, 2, 4, 8, 16\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"illegal bit depth for truecolor\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"illegal bit depth for indexed\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"illegal bit depth for grayscale with alpha\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"illegal bit depth for truecolor with alpha\00", align 1
@FZ_COLORSPACE_GRAY = common dso_local global i8* null, align 8
@FZ_COLORSPACE_RGB = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"unknown color type\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"unknown filter method\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"interlace method not supported\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"image dimensions might overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i8*, i32)* @png_read_ihdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_read_ihdr(i32* %0, %struct.info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 13
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %17 = call i32 @fz_throw(i32* %15, i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = call i8* @getuint(i8* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.info*, %struct.info** %6, align 8
  %24 = getelementptr inbounds %struct.info, %struct.info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  %27 = call i8* @getuint(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.info*, %struct.info** %6, align 8
  %30 = getelementptr inbounds %struct.info, %struct.info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = load i8, i8* %32, align 1
  %34 = load %struct.info*, %struct.info** %6, align 8
  %35 = getelementptr inbounds %struct.info, %struct.info* %34, i32 0, i32 2
  store i8 %33, i8* %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 9
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 10
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 11
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 12
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.info*, %struct.info** %6, align 8
  %52 = getelementptr inbounds %struct.info, %struct.info* %51, i32 0, i32 3
  store i8 %50, i8* %52, align 1
  %53 = load %struct.info*, %struct.info** %6, align 8
  %54 = getelementptr inbounds %struct.info, %struct.info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %18
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %60 = call i32 @fz_throw(i32* %58, i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %18
  %62 = load %struct.info*, %struct.info** %6, align 8
  %63 = getelementptr inbounds %struct.info, %struct.info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %69 = call i32 @fz_throw(i32* %67, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.info*, %struct.info** %6, align 8
  %72 = getelementptr inbounds %struct.info, %struct.info* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 8
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = load %struct.info*, %struct.info** %6, align 8
  %78 = getelementptr inbounds %struct.info, %struct.info* %77, i32 0, i32 2
  %79 = load i8, i8* %78, align 8
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.info*, %struct.info** %6, align 8
  %84 = getelementptr inbounds %struct.info, %struct.info* %83, i32 0, i32 2
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.info*, %struct.info** %6, align 8
  %90 = getelementptr inbounds %struct.info, %struct.info* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 8
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %92, 8
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.info*, %struct.info** %6, align 8
  %96 = getelementptr inbounds %struct.info, %struct.info* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 16
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %103 = call i32 @fz_throw(i32* %101, i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94, %88, %82, %76, %70
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.info*, %struct.info** %6, align 8
  %109 = getelementptr inbounds %struct.info, %struct.info* %108, i32 0, i32 2
  %110 = load i8, i8* %109, align 8
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %116 = call i32 @fz_throw(i32* %114, i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %107, %104
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.info*, %struct.info** %6, align 8
  %122 = getelementptr inbounds %struct.info, %struct.info* %121, i32 0, i32 2
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  %125 = icmp sgt i32 %124, 8
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %129 = call i32 @fz_throw(i32* %127, i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %120, %117
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.info*, %struct.info** %6, align 8
  %135 = getelementptr inbounds %struct.info, %struct.info* %134, i32 0, i32 2
  %136 = load i8, i8* %135, align 8
  %137 = zext i8 %136 to i32
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %142 = call i32 @fz_throw(i32* %140, i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %133, %130
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load %struct.info*, %struct.info** %6, align 8
  %148 = getelementptr inbounds %struct.info, %struct.info* %147, i32 0, i32 2
  %149 = load i8, i8* %148, align 8
  %150 = zext i8 %149 to i32
  %151 = icmp slt i32 %150, 8
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %155 = call i32 @fz_throw(i32* %153, i32 %154, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %146, %143
  %157 = load %struct.info*, %struct.info** %6, align 8
  %158 = getelementptr inbounds %struct.info, %struct.info* %157, i32 0, i32 4
  store i32 0, i32* %158, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.info*, %struct.info** %6, align 8
  %163 = getelementptr inbounds %struct.info, %struct.info* %162, i32 0, i32 5
  store i32 1, i32* %163, align 8
  %164 = load i8*, i8** @FZ_COLORSPACE_GRAY, align 8
  %165 = load %struct.info*, %struct.info** %6, align 8
  %166 = getelementptr inbounds %struct.info, %struct.info* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  br label %213

167:                                              ; preds = %156
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.info*, %struct.info** %6, align 8
  %172 = getelementptr inbounds %struct.info, %struct.info* %171, i32 0, i32 5
  store i32 3, i32* %172, align 8
  %173 = load i8*, i8** @FZ_COLORSPACE_RGB, align 8
  %174 = load %struct.info*, %struct.info** %6, align 8
  %175 = getelementptr inbounds %struct.info, %struct.info* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  br label %212

176:                                              ; preds = %167
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.info*, %struct.info** %6, align 8
  %181 = getelementptr inbounds %struct.info, %struct.info* %180, i32 0, i32 5
  store i32 2, i32* %181, align 8
  %182 = load i8*, i8** @FZ_COLORSPACE_GRAY, align 8
  %183 = load %struct.info*, %struct.info** %6, align 8
  %184 = getelementptr inbounds %struct.info, %struct.info* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  br label %211

185:                                              ; preds = %176
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 6
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.info*, %struct.info** %6, align 8
  %190 = getelementptr inbounds %struct.info, %struct.info* %189, i32 0, i32 5
  store i32 4, i32* %190, align 8
  %191 = load i8*, i8** @FZ_COLORSPACE_RGB, align 8
  %192 = load %struct.info*, %struct.info** %6, align 8
  %193 = getelementptr inbounds %struct.info, %struct.info* %192, i32 0, i32 6
  store i8* %191, i8** %193, align 8
  br label %210

194:                                              ; preds = %185
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i8*, i8** @FZ_COLORSPACE_RGB, align 8
  %199 = load %struct.info*, %struct.info** %6, align 8
  %200 = getelementptr inbounds %struct.info, %struct.info* %199, i32 0, i32 6
  store i8* %198, i8** %200, align 8
  %201 = load %struct.info*, %struct.info** %6, align 8
  %202 = getelementptr inbounds %struct.info, %struct.info* %201, i32 0, i32 4
  store i32 1, i32* %202, align 4
  %203 = load %struct.info*, %struct.info** %6, align 8
  %204 = getelementptr inbounds %struct.info, %struct.info* %203, i32 0, i32 5
  store i32 1, i32* %204, align 8
  br label %209

205:                                              ; preds = %194
  %206 = load i32*, i32** %5, align 8
  %207 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %208 = call i32 @fz_throw(i32* %206, i32 %207, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %197
  br label %210

210:                                              ; preds = %209, %188
  br label %211

211:                                              ; preds = %210, %179
  br label %212

212:                                              ; preds = %211, %170
  br label %213

213:                                              ; preds = %212, %161
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %219 = call i32 @fz_throw(i32* %217, i32 %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %220

220:                                              ; preds = %216, %213
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32*, i32** %5, align 8
  %225 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %226 = call i32 @fz_throw(i32* %224, i32 %225, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %227

227:                                              ; preds = %223, %220
  %228 = load %struct.info*, %struct.info** %6, align 8
  %229 = getelementptr inbounds %struct.info, %struct.info* %228, i32 0, i32 3
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load %struct.info*, %struct.info** %6, align 8
  %235 = getelementptr inbounds %struct.info, %struct.info* %234, i32 0, i32 3
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %242 = call i32 @fz_throw(i32* %240, i32 %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %243

243:                                              ; preds = %239, %233, %227
  %244 = load %struct.info*, %struct.info** %6, align 8
  %245 = getelementptr inbounds %struct.info, %struct.info* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @UINT_MAX, align 4
  %248 = load %struct.info*, %struct.info** %6, align 8
  %249 = getelementptr inbounds %struct.info, %struct.info* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sdiv i32 %247, %250
  %252 = load %struct.info*, %struct.info** %6, align 8
  %253 = getelementptr inbounds %struct.info, %struct.info* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = sdiv i32 %251, %254
  %256 = load %struct.info*, %struct.info** %6, align 8
  %257 = getelementptr inbounds %struct.info, %struct.info* %256, i32 0, i32 2
  %258 = load i8, i8* %257, align 8
  %259 = zext i8 %258 to i32
  %260 = sdiv i32 %259, 8
  %261 = add nsw i32 %260, 1
  %262 = sdiv i32 %255, %261
  %263 = icmp sgt i32 %246, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %243
  %265 = load i32*, i32** %5, align 8
  %266 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %267 = call i32 @fz_throw(i32* %265, i32 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %268

268:                                              ; preds = %264, %243
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @getuint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
