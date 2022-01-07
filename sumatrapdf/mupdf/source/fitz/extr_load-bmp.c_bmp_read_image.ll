; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"premature end in bitmap core header in bmp image\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid header size (%d) in bmp image\00", align 1
@SHRT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"dimensions (%d x %d) out of range in bmp image\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@BI_RLE8 = common dso_local global i32 0, align 4
@BI_RLE4 = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i32 0, align 4
@BI_JPEG = common dso_local global i32 0, align 4
@BI_PNG = common dso_local global i32 0, align 4
@BI_ALPHABITS = common dso_local global i32 0, align 4
@BI_RLE24 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"unsupported compression method (%d) in bmp image\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"invalid bits per pixel (%d) for compression (%d) in bmp image\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unsupported %d bit red mask in bmp image\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"unsupported %d bit green mask in bmp image\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"unsupported %d bit blue mask in bmp image\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"unsupported %d bit alpha mask in bmp image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.info*, i8*, i64, i32)* @bmp_read_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bmp_read_image(i32* %0, %struct.info* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.info* %1, %struct.info** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load %struct.info*, %struct.info** %8, align 8
  %21 = call i32 @memset(%struct.info* %20, i32 0, i32 96)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.info*, %struct.info** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i8* @bmp_read_file_header(i32* %22, %struct.info* %23, i8* %24, i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.info*, %struct.info** %8, align 8
  %28 = getelementptr inbounds %struct.info, %struct.info* %27, i32 0, i32 18
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @fz_mini(i32 %29, i32 %31)
  %33 = load %struct.info*, %struct.info** %8, align 8
  %34 = getelementptr inbounds %struct.info, %struct.info* %33, i32 0, i32 18
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = icmp slt i64 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %42, i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %5
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = call i32 @read32(i8* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 12
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.info*, %struct.info** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i8* @bmp_read_bitmap_core_header(i32* %52, %struct.info* %53, i8* %54, i8* %55)
  store i8* %56, i8** %9, align 8
  br label %108

57:                                               ; preds = %45
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 40
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 52
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 56
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 108
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 124
  br i1 %71, label %72, label %89

72:                                               ; preds = %69, %66, %63, %60, %57
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.info*, %struct.info** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i8* @bmp_read_bitmap_info_header(i32* %73, %struct.info* %74, i8* %75, i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load %struct.info*, %struct.info** %8, align 8
  %79 = getelementptr inbounds %struct.info, %struct.info* %78, i32 0, i32 17
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.info*, %struct.info** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i8* @bmp_read_extra_masks(i32* %83, %struct.info* %84, i8* %85, i8* %86)
  store i8* %87, i8** %9, align 8
  br label %88

88:                                               ; preds = %82, %72
  br label %107

89:                                               ; preds = %69
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 64
  br i1 %94, label %95, label %101

95:                                               ; preds = %92, %89
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.info*, %struct.info** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i8* @bmp_read_bitmap_os2_header(i32* %96, %struct.info* %97, i8* %98, i8* %99)
  store i8* %100, i8** %9, align 8
  br label %106

101:                                              ; preds = %92
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %102, i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %51
  %109 = load %struct.info*, %struct.info** %8, align 8
  %110 = getelementptr inbounds %struct.info, %struct.info* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.info*, %struct.info** %8, align 8
  %113 = getelementptr inbounds %struct.info, %struct.info* %112, i32 0, i32 15
  %114 = load %struct.info*, %struct.info** %8, align 8
  %115 = getelementptr inbounds %struct.info, %struct.info* %114, i32 0, i32 0
  %116 = call i32 @maskinfo(i32 %111, i32* %113, i32* %115)
  %117 = load %struct.info*, %struct.info** %8, align 8
  %118 = getelementptr inbounds %struct.info, %struct.info* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.info*, %struct.info** %8, align 8
  %121 = getelementptr inbounds %struct.info, %struct.info* %120, i32 0, i32 13
  %122 = load %struct.info*, %struct.info** %8, align 8
  %123 = getelementptr inbounds %struct.info, %struct.info* %122, i32 0, i32 1
  %124 = call i32 @maskinfo(i32 %119, i32* %121, i32* %123)
  %125 = load %struct.info*, %struct.info** %8, align 8
  %126 = getelementptr inbounds %struct.info, %struct.info* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.info*, %struct.info** %8, align 8
  %129 = getelementptr inbounds %struct.info, %struct.info* %128, i32 0, i32 11
  %130 = load %struct.info*, %struct.info** %8, align 8
  %131 = getelementptr inbounds %struct.info, %struct.info* %130, i32 0, i32 2
  %132 = call i32 @maskinfo(i32 %127, i32* %129, i32* %131)
  %133 = load %struct.info*, %struct.info** %8, align 8
  %134 = getelementptr inbounds %struct.info, %struct.info* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.info*, %struct.info** %8, align 8
  %137 = getelementptr inbounds %struct.info, %struct.info* %136, i32 0, i32 9
  %138 = load %struct.info*, %struct.info** %8, align 8
  %139 = getelementptr inbounds %struct.info, %struct.info* %138, i32 0, i32 3
  %140 = call i32 @maskinfo(i32 %135, i32* %137, i32* %139)
  %141 = load %struct.info*, %struct.info** %8, align 8
  %142 = getelementptr inbounds %struct.info, %struct.info* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %108
  %146 = load %struct.info*, %struct.info** %8, align 8
  %147 = getelementptr inbounds %struct.info, %struct.info* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SHRT_MAX, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %145
  %152 = load %struct.info*, %struct.info** %8, align 8
  %153 = getelementptr inbounds %struct.info, %struct.info* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.info*, %struct.info** %8, align 8
  %158 = getelementptr inbounds %struct.info, %struct.info* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SHRT_MAX, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %156, %151, %145, %108
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %165 = load %struct.info*, %struct.info** %8, align 8
  %166 = getelementptr inbounds %struct.info, %struct.info* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.info*, %struct.info** %8, align 8
  %169 = getelementptr inbounds %struct.info, %struct.info* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %163, i32 %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %167, i64 %170)
  br label %172

172:                                              ; preds = %162, %156
  %173 = load %struct.info*, %struct.info** %8, align 8
  %174 = getelementptr inbounds %struct.info, %struct.info* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @BI_RGB, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %227

178:                                              ; preds = %172
  %179 = load %struct.info*, %struct.info** %8, align 8
  %180 = getelementptr inbounds %struct.info, %struct.info* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @BI_RLE8, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %178
  %185 = load %struct.info*, %struct.info** %8, align 8
  %186 = getelementptr inbounds %struct.info, %struct.info* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BI_RLE4, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %227

190:                                              ; preds = %184
  %191 = load %struct.info*, %struct.info** %8, align 8
  %192 = getelementptr inbounds %struct.info, %struct.info* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @BI_BITFIELDS, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %227

196:                                              ; preds = %190
  %197 = load %struct.info*, %struct.info** %8, align 8
  %198 = getelementptr inbounds %struct.info, %struct.info* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @BI_JPEG, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %196
  %203 = load %struct.info*, %struct.info** %8, align 8
  %204 = getelementptr inbounds %struct.info, %struct.info* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @BI_PNG, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %202
  %209 = load %struct.info*, %struct.info** %8, align 8
  %210 = getelementptr inbounds %struct.info, %struct.info* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @BI_ALPHABITS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %208
  %215 = load %struct.info*, %struct.info** %8, align 8
  %216 = getelementptr inbounds %struct.info, %struct.info* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @BI_RLE24, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %223 = load %struct.info*, %struct.info** %8, align 8
  %224 = getelementptr inbounds %struct.info, %struct.info* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %221, i32 %222, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %220, %214, %208, %202, %196, %190, %184, %178, %172
  %228 = load %struct.info*, %struct.info** %8, align 8
  %229 = getelementptr inbounds %struct.info, %struct.info* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @BI_RGB, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %268

233:                                              ; preds = %227
  %234 = load %struct.info*, %struct.info** %8, align 8
  %235 = getelementptr inbounds %struct.info, %struct.info* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 1
  br i1 %237, label %238, label %268

238:                                              ; preds = %233
  %239 = load %struct.info*, %struct.info** %8, align 8
  %240 = getelementptr inbounds %struct.info, %struct.info* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 2
  br i1 %242, label %243, label %268

243:                                              ; preds = %238
  %244 = load %struct.info*, %struct.info** %8, align 8
  %245 = getelementptr inbounds %struct.info, %struct.info* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 4
  br i1 %247, label %248, label %268

248:                                              ; preds = %243
  %249 = load %struct.info*, %struct.info** %8, align 8
  %250 = getelementptr inbounds %struct.info, %struct.info* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 8
  br i1 %252, label %253, label %268

253:                                              ; preds = %248
  %254 = load %struct.info*, %struct.info** %8, align 8
  %255 = getelementptr inbounds %struct.info, %struct.info* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 16
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load %struct.info*, %struct.info** %8, align 8
  %260 = getelementptr inbounds %struct.info, %struct.info* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 24
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.info*, %struct.info** %8, align 8
  %265 = getelementptr inbounds %struct.info, %struct.info* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 32
  br i1 %267, label %355, label %268

268:                                              ; preds = %263, %258, %253, %248, %243, %238, %233, %227
  %269 = load %struct.info*, %struct.info** %8, align 8
  %270 = getelementptr inbounds %struct.info, %struct.info* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @BI_RLE8, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load %struct.info*, %struct.info** %8, align 8
  %276 = getelementptr inbounds %struct.info, %struct.info* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 8
  br i1 %278, label %355, label %279

279:                                              ; preds = %274, %268
  %280 = load %struct.info*, %struct.info** %8, align 8
  %281 = getelementptr inbounds %struct.info, %struct.info* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @BI_RLE4, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = load %struct.info*, %struct.info** %8, align 8
  %287 = getelementptr inbounds %struct.info, %struct.info* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 4
  br i1 %289, label %355, label %290

290:                                              ; preds = %285, %279
  %291 = load %struct.info*, %struct.info** %8, align 8
  %292 = getelementptr inbounds %struct.info, %struct.info* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @BI_BITFIELDS, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load %struct.info*, %struct.info** %8, align 8
  %298 = getelementptr inbounds %struct.info, %struct.info* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 16
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.info*, %struct.info** %8, align 8
  %303 = getelementptr inbounds %struct.info, %struct.info* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 32
  br i1 %305, label %355, label %306

306:                                              ; preds = %301, %296, %290
  %307 = load %struct.info*, %struct.info** %8, align 8
  %308 = getelementptr inbounds %struct.info, %struct.info* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @BI_JPEG, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %306
  %313 = load %struct.info*, %struct.info** %8, align 8
  %314 = getelementptr inbounds %struct.info, %struct.info* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %355, label %317

317:                                              ; preds = %312, %306
  %318 = load %struct.info*, %struct.info** %8, align 8
  %319 = getelementptr inbounds %struct.info, %struct.info* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @BI_PNG, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %317
  %324 = load %struct.info*, %struct.info** %8, align 8
  %325 = getelementptr inbounds %struct.info, %struct.info* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %355, label %328

328:                                              ; preds = %323, %317
  %329 = load %struct.info*, %struct.info** %8, align 8
  %330 = getelementptr inbounds %struct.info, %struct.info* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @BI_ALPHABITS, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %328
  %335 = load %struct.info*, %struct.info** %8, align 8
  %336 = getelementptr inbounds %struct.info, %struct.info* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 16
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.info*, %struct.info** %8, align 8
  %341 = getelementptr inbounds %struct.info, %struct.info* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 32
  br i1 %343, label %355, label %344

344:                                              ; preds = %339, %334, %328
  %345 = load %struct.info*, %struct.info** %8, align 8
  %346 = getelementptr inbounds %struct.info, %struct.info* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @BI_RLE24, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %365

350:                                              ; preds = %344
  %351 = load %struct.info*, %struct.info** %8, align 8
  %352 = getelementptr inbounds %struct.info, %struct.info* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 24
  br i1 %354, label %355, label %365

355:                                              ; preds = %350, %339, %323, %312, %301, %285, %274, %263
  %356 = load i32*, i32** %7, align 8
  %357 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %358 = load %struct.info*, %struct.info** %8, align 8
  %359 = getelementptr inbounds %struct.info, %struct.info* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.info*, %struct.info** %8, align 8
  %362 = getelementptr inbounds %struct.info, %struct.info* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %356, i32 %357, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %355, %350, %344
  %366 = load %struct.info*, %struct.info** %8, align 8
  %367 = getelementptr inbounds %struct.info, %struct.info* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %365
  %371 = load %struct.info*, %struct.info** %8, align 8
  %372 = getelementptr inbounds %struct.info, %struct.info* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.info*, %struct.info** %8, align 8
  %375 = getelementptr inbounds %struct.info, %struct.info* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = icmp sgt i32 %373, %376
  br i1 %377, label %378, label %385

378:                                              ; preds = %370, %365
  %379 = load i32*, i32** %7, align 8
  %380 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %381 = load %struct.info*, %struct.info** %8, align 8
  %382 = getelementptr inbounds %struct.info, %struct.info* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %379, i32 %380, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %383)
  br label %385

385:                                              ; preds = %378, %370
  %386 = load %struct.info*, %struct.info** %8, align 8
  %387 = getelementptr inbounds %struct.info, %struct.info* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %398, label %390

390:                                              ; preds = %385
  %391 = load %struct.info*, %struct.info** %8, align 8
  %392 = getelementptr inbounds %struct.info, %struct.info* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.info*, %struct.info** %8, align 8
  %395 = getelementptr inbounds %struct.info, %struct.info* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 4
  %397 = icmp sgt i32 %393, %396
  br i1 %397, label %398, label %405

398:                                              ; preds = %390, %385
  %399 = load i32*, i32** %7, align 8
  %400 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %401 = load %struct.info*, %struct.info** %8, align 8
  %402 = getelementptr inbounds %struct.info, %struct.info* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %399, i32 %400, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %398, %390
  %406 = load %struct.info*, %struct.info** %8, align 8
  %407 = getelementptr inbounds %struct.info, %struct.info* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %418, label %410

410:                                              ; preds = %405
  %411 = load %struct.info*, %struct.info** %8, align 8
  %412 = getelementptr inbounds %struct.info, %struct.info* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.info*, %struct.info** %8, align 8
  %415 = getelementptr inbounds %struct.info, %struct.info* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 4
  %417 = icmp sgt i32 %413, %416
  br i1 %417, label %418, label %425

418:                                              ; preds = %410, %405
  %419 = load i32*, i32** %7, align 8
  %420 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %421 = load %struct.info*, %struct.info** %8, align 8
  %422 = getelementptr inbounds %struct.info, %struct.info* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %419, i32 %420, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %423)
  br label %425

425:                                              ; preds = %418, %410
  %426 = load %struct.info*, %struct.info** %8, align 8
  %427 = getelementptr inbounds %struct.info, %struct.info* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %438, label %430

430:                                              ; preds = %425
  %431 = load %struct.info*, %struct.info** %8, align 8
  %432 = getelementptr inbounds %struct.info, %struct.info* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.info*, %struct.info** %8, align 8
  %435 = getelementptr inbounds %struct.info, %struct.info* %434, i32 0, i32 7
  %436 = load i32, i32* %435, align 4
  %437 = icmp sgt i32 %433, %436
  br i1 %437, label %438, label %445

438:                                              ; preds = %430, %425
  %439 = load i32*, i32** %7, align 8
  %440 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %441 = load %struct.info*, %struct.info** %8, align 8
  %442 = getelementptr inbounds %struct.info, %struct.info* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %439, i32 %440, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %443)
  br label %445

445:                                              ; preds = %438, %430
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32* null, i32** %6, align 8
  br label %565

449:                                              ; preds = %445
  %450 = load %struct.info*, %struct.info** %8, align 8
  %451 = getelementptr inbounds %struct.info, %struct.info* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @BI_JPEG, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %483

455:                                              ; preds = %449
  %456 = load i8*, i8** %9, align 8
  %457 = load i8*, i8** %12, align 8
  %458 = ptrtoint i8* %456 to i64
  %459 = ptrtoint i8* %457 to i64
  %460 = sub i64 %458, %459
  %461 = load %struct.info*, %struct.info** %8, align 8
  %462 = getelementptr inbounds %struct.info, %struct.info* %461, i32 0, i32 8
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = icmp slt i64 %460, %464
  br i1 %465, label %466, label %473

466:                                              ; preds = %455
  %467 = load i8*, i8** %12, align 8
  %468 = load %struct.info*, %struct.info** %8, align 8
  %469 = getelementptr inbounds %struct.info, %struct.info* %468, i32 0, i32 8
  %470 = load i32, i32* %469, align 8
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %467, i64 %471
  store i8* %472, i8** %9, align 8
  br label %473

473:                                              ; preds = %466, %455
  %474 = load i32*, i32** %7, align 8
  %475 = load i8*, i8** %9, align 8
  %476 = load i8*, i8** %13, align 8
  %477 = load i8*, i8** %9, align 8
  %478 = ptrtoint i8* %476 to i64
  %479 = ptrtoint i8* %477 to i64
  %480 = sub i64 %478, %479
  %481 = trunc i64 %480 to i32
  %482 = call i32* @fz_load_jpeg(i32* %474, i8* %475, i32 %481)
  store i32* %482, i32** %6, align 8
  br label %565

483:                                              ; preds = %449
  %484 = load %struct.info*, %struct.info** %8, align 8
  %485 = getelementptr inbounds %struct.info, %struct.info* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @BI_PNG, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %517

489:                                              ; preds = %483
  %490 = load i8*, i8** %9, align 8
  %491 = load i8*, i8** %12, align 8
  %492 = ptrtoint i8* %490 to i64
  %493 = ptrtoint i8* %491 to i64
  %494 = sub i64 %492, %493
  %495 = load %struct.info*, %struct.info** %8, align 8
  %496 = getelementptr inbounds %struct.info, %struct.info* %495, i32 0, i32 8
  %497 = load i32, i32* %496, align 8
  %498 = sext i32 %497 to i64
  %499 = icmp slt i64 %494, %498
  br i1 %499, label %500, label %507

500:                                              ; preds = %489
  %501 = load i8*, i8** %12, align 8
  %502 = load %struct.info*, %struct.info** %8, align 8
  %503 = getelementptr inbounds %struct.info, %struct.info* %502, i32 0, i32 8
  %504 = load i32, i32* %503, align 8
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %501, i64 %505
  store i8* %506, i8** %9, align 8
  br label %507

507:                                              ; preds = %500, %489
  %508 = load i32*, i32** %7, align 8
  %509 = load i8*, i8** %9, align 8
  %510 = load i8*, i8** %13, align 8
  %511 = load i8*, i8** %9, align 8
  %512 = ptrtoint i8* %510 to i64
  %513 = ptrtoint i8* %511 to i64
  %514 = sub i64 %512, %513
  %515 = trunc i64 %514 to i32
  %516 = call i32* @fz_load_png(i32* %508, i8* %509, i32 %515)
  store i32* %516, i32** %6, align 8
  br label %565

517:                                              ; preds = %483
  %518 = load i8*, i8** %12, align 8
  %519 = load %struct.info*, %struct.info** %8, align 8
  %520 = getelementptr inbounds %struct.info, %struct.info* %519, i32 0, i32 8
  %521 = load i32, i32* %520, align 8
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %518, i64 %522
  store i8* %523, i8** %15, align 8
  %524 = load i8*, i8** %13, align 8
  %525 = load i8*, i8** %12, align 8
  %526 = ptrtoint i8* %524 to i64
  %527 = ptrtoint i8* %525 to i64
  %528 = sub i64 %526, %527
  %529 = load %struct.info*, %struct.info** %8, align 8
  %530 = getelementptr inbounds %struct.info, %struct.info* %529, i32 0, i32 8
  %531 = load i32, i32* %530, align 8
  %532 = sext i32 %531 to i64
  %533 = icmp slt i64 %528, %532
  br i1 %533, label %534, label %536

534:                                              ; preds = %517
  %535 = load i8*, i8** %13, align 8
  store i8* %535, i8** %15, align 8
  br label %536

536:                                              ; preds = %534, %517
  %537 = load i32*, i32** %7, align 8
  %538 = load %struct.info*, %struct.info** %8, align 8
  %539 = load i8*, i8** %9, align 8
  %540 = load i8*, i8** %15, align 8
  %541 = call i8* @bmp_read_color_table(i32* %537, %struct.info* %538, i8* %539, i8* %540)
  store i8* %541, i8** %9, align 8
  %542 = load i8*, i8** %9, align 8
  %543 = load i8*, i8** %12, align 8
  %544 = ptrtoint i8* %542 to i64
  %545 = ptrtoint i8* %543 to i64
  %546 = sub i64 %544, %545
  %547 = load %struct.info*, %struct.info** %8, align 8
  %548 = getelementptr inbounds %struct.info, %struct.info* %547, i32 0, i32 8
  %549 = load i32, i32* %548, align 8
  %550 = sext i32 %549 to i64
  %551 = icmp slt i64 %546, %550
  br i1 %551, label %552, label %559

552:                                              ; preds = %536
  %553 = load i8*, i8** %12, align 8
  %554 = load %struct.info*, %struct.info** %8, align 8
  %555 = getelementptr inbounds %struct.info, %struct.info* %554, i32 0, i32 8
  %556 = load i32, i32* %555, align 8
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %553, i64 %557
  store i8* %558, i8** %9, align 8
  br label %559

559:                                              ; preds = %552, %536
  %560 = load i32*, i32** %7, align 8
  %561 = load %struct.info*, %struct.info** %8, align 8
  %562 = load i8*, i8** %9, align 8
  %563 = load i8*, i8** %13, align 8
  %564 = call i32* @bmp_read_bitmap(i32* %560, %struct.info* %561, i8* %562, i8* %563)
  store i32* %564, i32** %6, align 8
  br label %565

565:                                              ; preds = %559, %507, %473, %448
  %566 = load i32*, i32** %6, align 8
  ret i32* %566
}

declare dso_local i32 @memset(%struct.info*, i32, i32) #1

declare dso_local i8* @bmp_read_file_header(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @read32(i8*) #1

declare dso_local i8* @bmp_read_bitmap_core_header(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i8* @bmp_read_bitmap_info_header(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i8* @bmp_read_extra_masks(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i8* @bmp_read_bitmap_os2_header(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i32 @maskinfo(i32, i32*, i32*) #1

declare dso_local i32* @fz_load_jpeg(i32*, i8*, i32) #1

declare dso_local i32* @fz_load_png(i32*, i8*, i32) #1

declare dso_local i8* @bmp_read_color_table(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i32* @bmp_read_bitmap(i32*, %struct.info*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
