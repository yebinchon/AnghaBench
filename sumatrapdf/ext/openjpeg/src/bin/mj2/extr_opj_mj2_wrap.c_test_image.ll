; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_wrap.c_test_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_wrap.c_test_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@J2K_CODESTREAM_MAGIC = common dso_local global i32 0, align 4
@CODEC_J2K = common dso_local global i32 0, align 4
@ENUMCS_SYCC = common dso_local global i8* null, align 8
@CLRSPC_SRGB = common dso_local global i64 0, align 8
@ENUMCS_SRGB = common dso_local global i8* null, align 8
@ENUMCS_GRAY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*)* @test_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_image(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %3, align 4
  br label %322

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ftell(i32* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i64, i64* %13, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fread(i8* %31, i32 1, i64 %32, i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @J2K_CODESTREAM_MAGIC, align 4
  %39 = call i64 @memcmp(i8* %37, i32 %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %322

45:                                               ; preds = %19
  %46 = call i32 @memset(i32* %11, i32 0, i32 4)
  %47 = call i32 @opj_set_default_decoder_parameters(i32* %11)
  %48 = load i32, i32* @CODEC_J2K, align 4
  %49 = call i32* @opj_create_decompress(i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @opj_setup_decoder(i32* %50, i32* %11)
  %52 = load i32*, i32** %9, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call %struct.TYPE_13__* @opj_cio_open(i32 %53, i8* %54, i64 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %10, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = call %struct.TYPE_12__* @opj_decode(i32* %57, %struct.TYPE_13__* %58)
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = call i32 @opj_cio_close(%struct.TYPE_13__* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = icmp eq %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %308

69:                                               ; preds = %45
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %286

103:                                              ; preds = %69
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %159

111:                                              ; preds = %103
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %159

119:                                              ; preds = %111
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %159

127:                                              ; preds = %119
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %159

135:                                              ; preds = %127
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load i8*, i8** @ENUMCS_SYCC, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  store i32 2, i32* %156, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  store i32 2, i32* %158, align 8
  br label %285

159:                                              ; preds = %143, %135, %127, %119, %111, %103
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %215

167:                                              ; preds = %159
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %215

175:                                              ; preds = %167
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %215

183:                                              ; preds = %175
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %215

191:                                              ; preds = %183
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %215

199:                                              ; preds = %191
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load i8*, i8** @ENUMCS_SYCC, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  store i32 2, i32* %212, align 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i32 1, i32* %214, align 8
  br label %284

215:                                              ; preds = %199, %191, %183, %175, %167, %159
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %282

223:                                              ; preds = %215
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %282

231:                                              ; preds = %223
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 2
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %282

239:                                              ; preds = %231
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %282

247:                                              ; preds = %239
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %282

255:                                              ; preds = %247
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 2
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %282

263:                                              ; preds = %255
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @CLRSPC_SRGB, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i8*, i8** @ENUMCS_SRGB, align 8
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 4
  store i8* %270, i8** %272, align 8
  br label %281

273:                                              ; preds = %263
  %274 = load i8*, i8** @ENUMCS_SYCC, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 4
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  store i32 1, i32* %278, align 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 2
  store i32 1, i32* %280, align 8
  br label %281

281:                                              ; preds = %273, %269
  br label %283

282:                                              ; preds = %255, %247, %239, %231, %223, %215
  br label %308

283:                                              ; preds = %281
  br label %284

284:                                              ; preds = %283, %207
  br label %285

285:                                              ; preds = %284, %151
  br label %290

286:                                              ; preds = %69
  %287 = load i8*, i8** @ENUMCS_GRAY, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 4
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %286, %285
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %304

295:                                              ; preds = %290
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 3
  store i32 2, i32* %297, align 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @free(i8* %300)
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 2
  store i8* null, i8** %303, align 8
  br label %307

304:                                              ; preds = %290
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  store i32 1, i32* %306, align 4
  br label %307

307:                                              ; preds = %304, %295
  store i32 1, i32* %12, align 4
  br label %308

308:                                              ; preds = %307, %282, %68
  %309 = load i32*, i32** %9, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i32*, i32** %9, align 8
  %313 = call i32 @opj_destroy_decompress(i32* %312)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %316 = icmp ne %struct.TYPE_12__* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %319 = call i32 @opj_image_destroy(%struct.TYPE_12__* %318)
  br label %320

320:                                              ; preds = %317, %314
  %321 = load i32, i32* %12, align 4
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %320, %41, %17
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @opj_set_default_decoder_parameters(i32*) #1

declare dso_local i32* @opj_create_decompress(i32) #1

declare dso_local i32 @opj_setup_decoder(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @opj_cio_open(i32, i8*, i64) #1

declare dso_local %struct.TYPE_12__* @opj_decode(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @opj_cio_close(%struct.TYPE_13__*) #1

declare dso_local i32 @opj_destroy_decompress(i32*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
