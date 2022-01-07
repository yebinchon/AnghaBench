; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32, float*, i8*, i32, i32, i64, i8*, i8*, i64, i32 }
%struct.TYPE_45__ = type { float*, i32, i32, i32, i32, i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_48__ = type { i8*, i8** }
%struct.TYPE_47__ = type { i32 }

@OPJ_PATH_LEN = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@__const.main.comment = private unnamed_addr constant [29 x i8] c"Created by OpenJPEG version \00", align 16
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Folder is empty\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"skipping file...\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to load pgx file\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to load pnm file\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Unable to load bmp file\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Unable to load raw file\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Unable to load tga file\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Unable to load file: got no image\0A\00", align 1
@J2K_CFMT = common dso_local global i64 0, align 8
@CODEC_J2K = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"failed to encode image\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to open %s for writing\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to write %d (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Generated outfile %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Failed to output index file into [%s]\0A\00", align 1
@CODEC_JP2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Failed to output index file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_46__, align 8
  %8 = alloca %struct.TYPE_45__, align 8
  %9 = alloca %struct.TYPE_45__, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_48__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [29 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_47__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_47__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %14, align 8
  %33 = load i32, i32* @OPJ_PATH_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %17, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %37 = call i32 @memset(%struct.TYPE_45__* %9, i32 0, i32 32)
  %38 = load i32, i32* @error_callback, align 4
  %39 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %9, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @warning_callback, align 4
  %41 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %9, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @info_callback, align 4
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %9, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = call i32 @opj_set_default_encoder_parameters(%struct.TYPE_46__* %7)
  store i8 0, i8* %36, align 16
  %45 = call i32 @memset(%struct.TYPE_45__* %8, i32 0, i32 32)
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call i32 @parse_cmdline_encoder(i32 %46, i8** %47, %struct.TYPE_46__* %7, %struct.TYPE_45__* %8, i32* %15, i8* %36)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to float*
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 0
  store float* %61, float** %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %80, %55
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 1
  %70 = load float*, float** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  store float %74, float* %79, align 4
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %63

83:                                               ; preds = %63
  %84 = call i32 @cinema_parameters(%struct.TYPE_46__* %7)
  br label %85

85:                                               ; preds = %83, %51
  %86 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = bitcast [29 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %90, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.main.comment, i32 0, i32 0), i64 29, i1 false)
  %91 = getelementptr inbounds [29 x i8], [29 x i8]* %20, i64 0, i64 0
  %92 = call i64 @strlen(i8* %91)
  store i64 %92, i64* %21, align 8
  %93 = call i8* (...) @opj_version()
  store i8* %93, i8** %22, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i8*, i8** %22, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = add i64 %94, %96
  %98 = add i64 %97, 1
  %99 = call i64 @malloc(i64 %98)
  %100 = inttoptr i64 %99 to i8*
  %101 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [29 x i8], [29 x i8]* %20, i64 0, i64 0
  %105 = load i8*, i8** %22, align 8
  %106 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %89, %85
  %108 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %179

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_num_images(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = call i64 @malloc(i64 16)
  %116 = inttoptr i64 %115 to %struct.TYPE_48__*
  store %struct.TYPE_48__* %116, %struct.TYPE_48__** %14, align 8
  %117 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %118 = icmp ne %struct.TYPE_48__* %117, null
  br i1 %118, label %119, label %165

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @OPJ_PATH_LEN, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 1
  %125 = call i64 @malloc(i64 %124)
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = call i64 @malloc(i64 %131)
  %133 = inttoptr i64 %132 to i8**
  %134 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %134, i32 0, i32 1
  store i8** %133, i8*** %135, align 8
  %136 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

141:                                              ; preds = %119
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %161, %141
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @OPJ_PATH_LEN, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  br label %161

161:                                              ; preds = %146
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %142

164:                                              ; preds = %142
  br label %165

165:                                              ; preds = %164, %111
  %166 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @load_images(%struct.TYPE_48__* %166, i32 %168)
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

172:                                              ; preds = %165
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @stdout, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

178:                                              ; preds = %172
  br label %180

179:                                              ; preds = %107
  store i32 1, i32* %12, align 4
  br label %180

180:                                              ; preds = %179, %178
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %474, %180
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %477

185:                                              ; preds = %181
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %188 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %8, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %194 = call i64 @get_next_file(i32 %192, %struct.TYPE_48__* %193, %struct.TYPE_45__* %8, %struct.TYPE_46__* %7)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* @stderr, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %474

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199, %185
  %201 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %210 [
    i32 133, label %203
    i32 131, label %204
    i32 134, label %205
    i32 128, label %206
    i32 130, label %207
    i32 129, label %208
    i32 132, label %209
  ]

203:                                              ; preds = %200
  br label %213

204:                                              ; preds = %200
  br label %213

205:                                              ; preds = %200
  br label %213

206:                                              ; preds = %200
  br label %213

207:                                              ; preds = %200
  br label %213

208:                                              ; preds = %200
  br label %213

209:                                              ; preds = %200
  br label %213

210:                                              ; preds = %200
  %211 = load i32, i32* @stderr, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %474

213:                                              ; preds = %209, %208, %207, %206, %205, %204, %203
  %214 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %266 [
    i32 133, label %216
    i32 131, label %226
    i32 134, label %236
    i32 130, label %246
    i32 129, label %256
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = call %struct.TYPE_44__* @pgxtoimage(i32 %218, %struct.TYPE_46__* %7)
  store %struct.TYPE_44__* %219, %struct.TYPE_44__** %10, align 8
  %220 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %221 = icmp ne %struct.TYPE_44__* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = load i32, i32* @stderr, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

225:                                              ; preds = %216
  br label %266

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 9
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.TYPE_44__* @pnmtoimage(i32 %228, %struct.TYPE_46__* %7)
  store %struct.TYPE_44__* %229, %struct.TYPE_44__** %10, align 8
  %230 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %231 = icmp ne %struct.TYPE_44__* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* @stderr, align 4
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

235:                                              ; preds = %226
  br label %266

236:                                              ; preds = %213
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 9
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.TYPE_44__* @bmptoimage(i32 %238, %struct.TYPE_46__* %7)
  store %struct.TYPE_44__* %239, %struct.TYPE_44__** %10, align 8
  %240 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %241 = icmp ne %struct.TYPE_44__* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* @stderr, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

245:                                              ; preds = %236
  br label %266

246:                                              ; preds = %213
  %247 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 9
  %248 = load i32, i32* %247, align 8
  %249 = call %struct.TYPE_44__* @rawtoimage(i32 %248, %struct.TYPE_46__* %7, i32* %15)
  store %struct.TYPE_44__* %249, %struct.TYPE_44__** %10, align 8
  %250 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %251 = icmp ne %struct.TYPE_44__* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = load i32, i32* @stderr, align 4
  %254 = call i32 (i32, i8*, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

255:                                              ; preds = %246
  br label %266

256:                                              ; preds = %213
  %257 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 9
  %258 = load i32, i32* %257, align 8
  %259 = call %struct.TYPE_44__* @tgatoimage(i32 %258, %struct.TYPE_46__* %7)
  store %struct.TYPE_44__* %259, %struct.TYPE_44__** %10, align 8
  %260 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %261 = icmp ne %struct.TYPE_44__* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %256
  %263 = load i32, i32* @stderr, align 4
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %213, %265, %255, %245, %235, %225
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %268 = icmp ne %struct.TYPE_44__* %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @stderr, align 4
  %271 = call i32 (i32, i8*, ...) @fprintf(i32 %270, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

272:                                              ; preds = %266
  %273 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 3
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i32 1, i32 0
  %279 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 4
  store i32 %278, i32* %279, align 4
  %280 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %272
  %284 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %285 = call i32 @cinema_setup_encoder(%struct.TYPE_46__* %7, %struct.TYPE_44__* %284, %struct.TYPE_45__* %8)
  br label %286

286:                                              ; preds = %283, %272
  %287 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @J2K_CFMT, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %381

291:                                              ; preds = %286
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %25, align 8
  store i32* null, i32** %26, align 8
  %292 = load i32, i32* @CODEC_J2K, align 4
  %293 = call i32* @opj_create_compress(i32 %292)
  store i32* %293, i32** %27, align 8
  %294 = load i32*, i32** %27, align 8
  %295 = ptrtoint i32* %294 to i32
  %296 = load i32, i32* @stderr, align 4
  %297 = call i32 @opj_set_event_mgr(i32 %295, %struct.TYPE_45__* %9, i32 %296)
  %298 = load i32*, i32** %27, align 8
  %299 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %300 = call i32 @opj_setup_encoder(i32* %298, %struct.TYPE_46__* %7, %struct.TYPE_44__* %299)
  %301 = load i32*, i32** %27, align 8
  %302 = ptrtoint i32* %301 to i32
  %303 = call %struct.TYPE_47__* @opj_cio_open(i32 %302, i32* null, i32 0)
  store %struct.TYPE_47__* %303, %struct.TYPE_47__** %25, align 8
  %304 = load i8, i8* %36, align 16
  %305 = icmp ne i8 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %291
  %307 = load i32*, i32** %27, align 8
  %308 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %309 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %310 = call i32 @opj_encode_with_info(i32* %307, %struct.TYPE_47__* %308, %struct.TYPE_44__* %309, i32* %16)
  store i32 %310, i32* %6, align 4
  br label %316

311:                                              ; preds = %291
  %312 = load i32*, i32** %27, align 8
  %313 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %314 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %315 = call i32 @opj_encode(i32* %312, %struct.TYPE_47__* %313, %struct.TYPE_44__* %314, i32* null)
  store i32 %315, i32* %6, align 4
  br label %316

316:                                              ; preds = %311, %306
  %317 = load i32, i32* %6, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %316
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %321 = call i32 @opj_cio_close(%struct.TYPE_47__* %320)
  %322 = load i32, i32* @stderr, align 4
  %323 = call i32 (i32, i8*, ...) @fprintf(i32 %322, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

324:                                              ; preds = %316
  %325 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %326 = call i32 @cio_tell(%struct.TYPE_47__* %325)
  store i32 %326, i32* %23, align 4
  %327 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %328 = load i8*, i8** %327, align 8
  %329 = call i32* @fopen(i8* %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %329, i32** %26, align 8
  %330 = load i32*, i32** %26, align 8
  %331 = icmp ne i32* %330, null
  br i1 %331, label %337, label %332

332:                                              ; preds = %324
  %333 = load i32, i32* @stderr, align 4
  %334 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 (i32, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %335)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

337:                                              ; preds = %324
  %338 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %339 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %23, align 4
  %342 = load i32*, i32** %26, align 8
  %343 = call i64 @fwrite(i32 %340, i32 1, i32 %341, i32* %342)
  store i64 %343, i64* %24, align 8
  %344 = load i64, i64* %24, align 8
  %345 = load i32, i32* %23, align 4
  %346 = sext i32 %345 to i64
  %347 = icmp ult i64 %344, %346
  br i1 %347, label %348, label %354

348:                                              ; preds = %337
  %349 = load i32, i32* @stderr, align 4
  %350 = load i32, i32* %23, align 4
  %351 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (i32, i8*, ...) @fprintf(i32 %349, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %350, i8* %352)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

354:                                              ; preds = %337
  %355 = load i32*, i32** %26, align 8
  %356 = call i32 @fclose(i32* %355)
  %357 = load i32, i32* @stderr, align 4
  %358 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i32, i8*, ...) @fprintf(i32 %357, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %359)
  %361 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %362 = call i32 @opj_cio_close(%struct.TYPE_47__* %361)
  %363 = load i8, i8* %36, align 16
  %364 = icmp ne i8 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %354
  %366 = call i32 @write_index_file(i32* %16, i8* %36)
  store i32 %366, i32* %6, align 4
  %367 = load i32, i32* %6, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load i32, i32* @stderr, align 4
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %370, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %36)
  br label %372

372:                                              ; preds = %369, %365
  br label %373

373:                                              ; preds = %372, %354
  %374 = load i32*, i32** %27, align 8
  %375 = call i32 @opj_destroy_compress(i32* %374)
  %376 = load i8, i8* %36, align 16
  %377 = icmp ne i8 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = call i32 @opj_destroy_cstr_info(i32* %16)
  br label %380

380:                                              ; preds = %378, %373
  br label %471

381:                                              ; preds = %286
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %30, align 8
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  %382 = load i32, i32* @CODEC_JP2, align 4
  %383 = call i32* @opj_create_compress(i32 %382)
  store i32* %383, i32** %32, align 8
  %384 = load i32*, i32** %32, align 8
  %385 = ptrtoint i32* %384 to i32
  %386 = load i32, i32* @stderr, align 4
  %387 = call i32 @opj_set_event_mgr(i32 %385, %struct.TYPE_45__* %9, i32 %386)
  %388 = load i32*, i32** %32, align 8
  %389 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %390 = call i32 @opj_setup_encoder(i32* %388, %struct.TYPE_46__* %7, %struct.TYPE_44__* %389)
  %391 = load i32*, i32** %32, align 8
  %392 = ptrtoint i32* %391 to i32
  %393 = call %struct.TYPE_47__* @opj_cio_open(i32 %392, i32* null, i32 0)
  store %struct.TYPE_47__* %393, %struct.TYPE_47__** %30, align 8
  %394 = load i8, i8* %36, align 16
  %395 = icmp ne i8 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %381
  %397 = load i32*, i32** %32, align 8
  %398 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %399 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %400 = call i32 @opj_encode_with_info(i32* %397, %struct.TYPE_47__* %398, %struct.TYPE_44__* %399, i32* %16)
  store i32 %400, i32* %6, align 4
  br label %406

401:                                              ; preds = %381
  %402 = load i32*, i32** %32, align 8
  %403 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %404 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %405 = call i32 @opj_encode(i32* %402, %struct.TYPE_47__* %403, %struct.TYPE_44__* %404, i32* null)
  store i32 %405, i32* %6, align 4
  br label %406

406:                                              ; preds = %401, %396
  %407 = load i32, i32* %6, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %414, label %409

409:                                              ; preds = %406
  %410 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %411 = call i32 @opj_cio_close(%struct.TYPE_47__* %410)
  %412 = load i32, i32* @stderr, align 4
  %413 = call i32 (i32, i8*, ...) @fprintf(i32 %412, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

414:                                              ; preds = %406
  %415 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %416 = call i32 @cio_tell(%struct.TYPE_47__* %415)
  store i32 %416, i32* %28, align 4
  %417 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %418 = load i8*, i8** %417, align 8
  %419 = call i32* @fopen(i8* %418, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %419, i32** %31, align 8
  %420 = load i32*, i32** %31, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %427, label %422

422:                                              ; preds = %414
  %423 = load i32, i32* @stderr, align 4
  %424 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 (i32, i8*, ...) @fprintf(i32 %423, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %425)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

427:                                              ; preds = %414
  %428 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %429 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %28, align 4
  %432 = load i32*, i32** %31, align 8
  %433 = call i64 @fwrite(i32 %430, i32 1, i32 %431, i32* %432)
  store i64 %433, i64* %29, align 8
  %434 = load i64, i64* %29, align 8
  %435 = load i32, i32* %28, align 4
  %436 = sext i32 %435 to i64
  %437 = icmp ult i64 %434, %436
  br i1 %437, label %438, label %444

438:                                              ; preds = %427
  %439 = load i32, i32* @stderr, align 4
  %440 = load i32, i32* %28, align 4
  %441 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %442 = load i8*, i8** %441, align 8
  %443 = call i32 (i32, i8*, ...) @fprintf(i32 %439, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %440, i8* %442)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

444:                                              ; preds = %427
  %445 = load i32*, i32** %31, align 8
  %446 = call i32 @fclose(i32* %445)
  %447 = load i32, i32* @stderr, align 4
  %448 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 6
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 (i32, i8*, ...) @fprintf(i32 %447, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %449)
  %451 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %452 = call i32 @opj_cio_close(%struct.TYPE_47__* %451)
  %453 = load i8, i8* %36, align 16
  %454 = icmp ne i8 %453, 0
  br i1 %454, label %455, label %463

455:                                              ; preds = %444
  %456 = call i32 @write_index_file(i32* %16, i8* %36)
  store i32 %456, i32* %6, align 4
  %457 = load i32, i32* %6, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %455
  %460 = load i32, i32* @stderr, align 4
  %461 = call i32 (i32, i8*, ...) @fprintf(i32 %460, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %462

462:                                              ; preds = %459, %455
  br label %463

463:                                              ; preds = %462, %444
  %464 = load i32*, i32** %32, align 8
  %465 = call i32 @opj_destroy_compress(i32* %464)
  %466 = load i8, i8* %36, align 16
  %467 = icmp ne i8 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %463
  %469 = call i32 @opj_destroy_cstr_info(i32* %16)
  br label %470

470:                                              ; preds = %468, %463
  br label %471

471:                                              ; preds = %470, %380
  %472 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %473 = call i32 @opj_image_destroy(%struct.TYPE_44__* %472)
  br label %474

474:                                              ; preds = %471, %210, %196
  %475 = load i32, i32* %13, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %13, align 4
  br label %181

477:                                              ; preds = %181
  %478 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 2
  %479 = load i8*, i8** %478, align 8
  %480 = icmp ne i8* %479, null
  br i1 %480, label %481, label %485

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 2
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 @free(i8* %483)
  br label %485

485:                                              ; preds = %481, %477
  %486 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 7
  %487 = load i8*, i8** %486, align 8
  %488 = icmp ne i8* %487, null
  br i1 %488, label %489, label %493

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 7
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @free(i8* %491)
  br label %493

493:                                              ; preds = %489, %485
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %494

494:                                              ; preds = %493, %438, %422, %409, %348, %332, %319, %269, %262, %252, %242, %232, %222, %175, %171, %140, %50
  %495 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %495)
  %496 = load i32, i32* %3, align 4
  ret i32 %496
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_45__*, i32, i32) #2

declare dso_local i32 @opj_set_default_encoder_parameters(%struct.TYPE_46__*) #2

declare dso_local i32 @parse_cmdline_encoder(i32, i8**, %struct.TYPE_46__*, %struct.TYPE_45__*, i32*, i8*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @cinema_parameters(%struct.TYPE_46__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @opj_version(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @get_num_images(i32) #2

declare dso_local i32 @load_images(%struct.TYPE_48__*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @get_next_file(i32, %struct.TYPE_48__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_44__* @pgxtoimage(i32, %struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_44__* @pnmtoimage(i32, %struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_44__* @bmptoimage(i32, %struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_44__* @rawtoimage(i32, %struct.TYPE_46__*, i32*) #2

declare dso_local %struct.TYPE_44__* @tgatoimage(i32, %struct.TYPE_46__*) #2

declare dso_local i32 @cinema_setup_encoder(%struct.TYPE_46__*, %struct.TYPE_44__*, %struct.TYPE_45__*) #2

declare dso_local i32* @opj_create_compress(i32) #2

declare dso_local i32 @opj_set_event_mgr(i32, %struct.TYPE_45__*, i32) #2

declare dso_local i32 @opj_setup_encoder(i32*, %struct.TYPE_46__*, %struct.TYPE_44__*) #2

declare dso_local %struct.TYPE_47__* @opj_cio_open(i32, i32*, i32) #2

declare dso_local i32 @opj_encode_with_info(i32*, %struct.TYPE_47__*, %struct.TYPE_44__*, i32*) #2

declare dso_local i32 @opj_encode(i32*, %struct.TYPE_47__*, %struct.TYPE_44__*, i32*) #2

declare dso_local i32 @opj_cio_close(%struct.TYPE_47__*) #2

declare dso_local i32 @cio_tell(%struct.TYPE_47__*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @write_index_file(i32*, i8*) #2

declare dso_local i32 @opj_destroy_compress(i32*) #2

declare dso_local i32 @opj_destroy_cstr_info(i32*) #2

declare dso_local i32 @opj_image_destroy(%struct.TYPE_44__*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
