; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_bintovolume.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_bintovolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32*, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CLRSPC_GRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"[ERROR] Failed to open %s for reading !!\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Bpp\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%*s%*[ \09]%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Dim\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%*s%*[ \09]%d%*[ \09]%d%*[ \09]%d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[ERROR] Unable to create volume\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @bintovolume(i8* %0, i8* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [100 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_12__, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %26, align 8
  store i32 0, i32* %20, align 4
  %38 = load i32, i32* @CLRSPC_GRAY, align 4
  store i32 %38, i32* %23, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %22, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @stdout, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %288

47:                                               ; preds = %3
  %48 = load i32*, i32** %22, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @fseek(i32* %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %82, %47
  %52 = load i32*, i32** %22, align 8
  %53 = call i32 @feof(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %58 = load i32*, i32** %22, align 8
  %59 = call i32 @fgets(i8* %57, i32 100, i32* %58)
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %65 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  br label %82

66:                                               ; preds = %56
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %72 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %23)
  br label %81

73:                                               ; preds = %66
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %79 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %13, i32* %14, i32* %15)
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %63
  br label %51

83:                                               ; preds = %51
  %84 = load i32*, i32** %22, align 8
  %85 = call i32 @fclose(i32* %84)
  %86 = call i32 @memset(%struct.TYPE_12__* %24, i32 0, i32 48)
  %87 = load i32, i32* %17, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 10
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %20, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 9
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 5
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 6
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 7
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 8
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %23, align 4
  %112 = call %struct.TYPE_10__* @opj_volume_create(i32 %110, %struct.TYPE_12__* %24, i32 %111)
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %25, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %114 = icmp ne %struct.TYPE_10__* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %83
  %116 = load i32, i32* @stdout, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32*, i32** %21, align 8
  %119 = call i32 @fclose(i32* %118)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %288

120:                                              ; preds = %83
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 7
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 6
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %138, %143
  %145 = add nsw i64 %144, 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %150, %155
  %157 = add nsw i64 %156, 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load i32, i32* %10, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %162, %167
  %169 = add nsw i64 %168, 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i32* @fopen(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %173, i32** %21, align 8
  %174 = load i32*, i32** %21, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %120
  %177 = load i32, i32* @stdout, align 4
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %178)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %288

180:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %281, %180
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %284

187:                                              ; preds = %181
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %15, align 4
  %192 = mul nsw i32 %190, %191
  store i32 %192, i32* %27, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %197
  store %struct.TYPE_11__* %198, %struct.TYPE_11__** %26, align 8
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %272, %187
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %27, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %275

203:                                              ; preds = %199
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sle i32 %206, 8
  br i1 %207, label %208, label %222

208:                                              ; preds = %203
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = load i32*, i32** %21, align 8
  %215 = call i32 @readuchar(i32* %214)
  store i32 %215, i32* %28, align 4
  br label %221

216:                                              ; preds = %208
  %217 = load i32*, i32** %21, align 8
  %218 = call i32 @readuchar(i32* %217)
  %219 = trunc i32 %218 to i8
  %220 = sext i8 %219 to i32
  store i32 %220, i32* %28, align 4
  br label %221

221:                                              ; preds = %216, %213
  br label %258

222:                                              ; preds = %203
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sle i32 %225, 16
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = load i32*, i32** %21, align 8
  %234 = load i32, i32* %20, align 4
  %235 = call i32 @readushort(i32* %233, i32 %234)
  store i32 %235, i32* %28, align 4
  br label %242

236:                                              ; preds = %227
  %237 = load i32*, i32** %21, align 8
  %238 = load i32, i32* %20, align 4
  %239 = call i32 @readushort(i32* %237, i32 %238)
  %240 = trunc i32 %239 to i16
  %241 = sext i16 %240 to i32
  store i32 %241, i32* %28, align 4
  br label %242

242:                                              ; preds = %236, %232
  br label %257

243:                                              ; preds = %222
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = load i32*, i32** %21, align 8
  %250 = load i32, i32* %20, align 4
  %251 = call i32 @readuint(i32* %249, i32 %250)
  store i32 %251, i32* %28, align 4
  br label %256

252:                                              ; preds = %243
  %253 = load i32*, i32** %21, align 8
  %254 = load i32, i32* %20, align 4
  %255 = call i32 @readuint(i32* %253, i32 %254)
  store i32 %255, i32* %28, align 4
  br label %256

256:                                              ; preds = %252, %248
  br label %257

257:                                              ; preds = %256, %242
  br label %258

258:                                              ; preds = %257, %221
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* %28, align 4
  store i32 %263, i32* %18, align 4
  br label %264

264:                                              ; preds = %262, %258
  %265 = load i32, i32* %28, align 4
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %265, i32* %271, align 4
  br label %272

272:                                              ; preds = %264
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %199

275:                                              ; preds = %199
  %276 = load i32, i32* %18, align 4
  %277 = call i64 @int_floorlog2(i32 %276)
  %278 = add nsw i64 %277, 1
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  br label %281

281:                                              ; preds = %275
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %181

284:                                              ; preds = %181
  %285 = load i32*, i32** %21, align 8
  %286 = call i32 @fclose(i32* %285)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %287, %struct.TYPE_10__** %4, align 8
  br label %288

288:                                              ; preds = %284, %176, %115, %43
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %289
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @opj_volume_create(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @readuchar(i32*) #1

declare dso_local i32 @readushort(i32*, i32) #1

declare dso_local i32 @readuint(i32*, i32) #1

declare dso_local i64 @int_floorlog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
