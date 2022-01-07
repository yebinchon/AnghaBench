; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_image_enc.c_WebPSaveImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_image_enc.c_WebPSaveImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error opening output file %s\0A\00", align 1
@PNG = common dso_local global i64 0, align 8
@RGBA = common dso_local global i64 0, align 8
@BGRA = common dso_local global i64 0, align 8
@ARGB = common dso_local global i64 0, align 8
@rgbA = common dso_local global i64 0, align 8
@bgrA = common dso_local global i64 0, align 8
@Argb = common dso_local global i64 0, align 8
@PAM = common dso_local global i64 0, align 8
@PPM = common dso_local global i64 0, align 8
@RGB = common dso_local global i64 0, align 8
@BGR = common dso_local global i64 0, align 8
@RGBA_4444 = common dso_local global i64 0, align 8
@RGB_565 = common dso_local global i64 0, align 8
@rgbA_4444 = common dso_local global i64 0, align 8
@BMP = common dso_local global i64 0, align 8
@TIFF = common dso_local global i64 0, align 8
@RAW_YUV = common dso_local global i64 0, align 8
@PGM = common dso_local global i64 0, align 8
@YUV = common dso_local global i64 0, align 8
@YUVA = common dso_local global i64 0, align 8
@ALPHA_PLANE_ONLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPSaveImage(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @WSTRCMP(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi i1 [ false, %3 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  store i32 0, i32* %4, align 4
  br label %210

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** @stdout, align 8
  %36 = call i32* @ImgIoUtilSetBinaryMode(i32* %35)
  br label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i32* @WFOPEN(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32* [ %36, %34 ], [ %39, %37 ]
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = call i32 @WFPRINTF(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  store i32 0, i32* %4, align 4
  br label %210

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @PNG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %78, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @RGBA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %78, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @BGRA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @ARGB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @rgbA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @bgrA, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @Argb, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74, %70, %66, %62, %58, %54, %50
  %79 = load i32*, i32** %8, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load i32*, i32** %5, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 (i8*, i32, ...) @WebPWritePNG(i8* %80, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %198

86:                                               ; preds = %74
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @PAM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @WebPWritePAM(i32* %91, i32* %92)
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %197

96:                                               ; preds = %86
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @PPM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @RGB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @BGR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104, %100, %96
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @WebPWritePPM(i32* %109, i32* %110)
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %196

114:                                              ; preds = %104
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @RGBA_4444, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @RGB_565, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @rgbA_4444, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122, %118, %114
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @WebPWrite16bAsPGM(i32* %127, i32* %128)
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %195

132:                                              ; preds = %122
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @BMP, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @WebPWriteBMP(i32* %137, i32* %138)
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %194

142:                                              ; preds = %132
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @TIFF, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load i32*, i32** %8, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @WebPWriteTIFF(i32* %147, i32* %148)
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %193

152:                                              ; preds = %142
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @RAW_YUV, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @WebPWriteYUV(i32* %157, i32* %158)
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %11, align 4
  br label %192

162:                                              ; preds = %152
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @PGM, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @YUV, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @YUVA, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170, %166, %162
  %175 = load i32*, i32** %8, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @WebPWritePGM(i32* %175, i32* %176)
  %178 = load i32, i32* %11, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %11, align 4
  br label %191

180:                                              ; preds = %170
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* @ALPHA_PLANE_ONLY, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @WebPWriteAlphaPlane(i32* %185, i32* %186)
  %188 = load i32, i32* %11, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %184, %180
  br label %191

191:                                              ; preds = %190, %174
  br label %192

192:                                              ; preds = %191, %156
  br label %193

193:                                              ; preds = %192, %146
  br label %194

194:                                              ; preds = %193, %136
  br label %195

195:                                              ; preds = %194, %126
  br label %196

196:                                              ; preds = %195, %108
  br label %197

197:                                              ; preds = %196, %90
  br label %198

198:                                              ; preds = %197, %78
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32*, i32** %8, align 8
  %203 = load i32*, i32** @stdout, align 8
  %204 = icmp ne i32* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @fclose(i32* %206)
  br label %208

208:                                              ; preds = %205, %201, %198
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %44, %27
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @WSTRCMP(i8*, i8*) #1

declare dso_local i32* @ImgIoUtilSetBinaryMode(i32*) #1

declare dso_local i32* @WFOPEN(i8*, i8*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @WebPWritePNG(i8*, i32, ...) #1

declare dso_local i32 @WebPWritePAM(i32*, i32*) #1

declare dso_local i32 @WebPWritePPM(i32*, i32*) #1

declare dso_local i32 @WebPWrite16bAsPGM(i32*, i32*) #1

declare dso_local i32 @WebPWriteBMP(i32*, i32*) #1

declare dso_local i32 @WebPWriteTIFF(i32*, i32*) #1

declare dso_local i32 @WebPWriteYUV(i32*, i32*) #1

declare dso_local i32 @WebPWritePGM(i32*, i32*) #1

declare dso_local i32 @WebPWriteAlphaPlane(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
