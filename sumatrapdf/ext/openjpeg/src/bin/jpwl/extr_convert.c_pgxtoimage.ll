; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_pgxtoimage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_pgxtoimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CLRSPC_GRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to open %s for reading !\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"PG%[ \09]%c%c%[ \09+-]%d%[ \09]%d%[ \09]%d\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"ERROR: Failed to read the right number of element from the fscanf() function!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Bad pgx header, please check input file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @pgxtoimage(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [32 x i8], align 16
  %24 = alloca [32 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %26, align 8
  store i32 1, i32* %11, align 4
  %28 = load i32, i32* @CLRSPC_GRAY, align 4
  store i32 %28, i32* %13, align 4
  %29 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 36)
  store i32 0, i32* %12, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %344

38:                                               ; preds = %2
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @fseek(i32* %39, i32 0, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %47 = call i32 @fscanf(i32* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %20, i8* %21, i8* %44, i32* %9, i8* %45, i32* %7, i8* %46, i32* %8)
  %48 = icmp ne i32 %47, 9
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fclose(i32* %52)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %344

54:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  store i8 43, i8* %22, align 1
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i8 45, i8* %22, align 1
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @fgetc(i32* %74)
  %76 = load i8, i8* %20, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8, i8* %21, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 76
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %25, align 4
  br label %99

84:                                               ; preds = %79, %73
  %85 = load i8, i8* %21, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 77
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8, i8* %20, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 76
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %25, align 4
  br label %98

93:                                               ; preds = %88, %84
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @fclose(i32* %96)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %344

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = add nsw i32 %117, 1
  br label %130

119:                                              ; preds = %99
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = add nsw i32 %121, %127
  %129 = add nsw i32 %128, 1
  br label %130

130:                                              ; preds = %119, %111
  %131 = phi i32 [ %118, %111 ], [ %129, %119 ]
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = add nsw i32 %142, 1
  br label %155

144:                                              ; preds = %130
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = add nsw i32 %146, %152
  %154 = add nsw i32 %153, 1
  br label %155

155:                                              ; preds = %144, %136
  %156 = phi i32 [ %143, %136 ], [ %154, %144 ]
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %156, i32* %157, align 4
  %158 = load i8, i8* %22, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 45
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i32 1, i32* %162, align 4
  br label %165

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 8
  br i1 %167, label %168, label %184

168:                                              ; preds = %165
  store i32 1, i32* %19, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sub nsw i32 8, %169
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %18, align 4
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load i32, i32* %9, align 4
  %179 = sub nsw i32 %178, 1
  %180 = shl i32 1, %179
  store i32 %180, i32* %16, align 4
  br label %182

181:                                              ; preds = %168
  store i32 0, i32* %16, align 4
  br label %182

182:                                              ; preds = %181, %177
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i32 0, i32* %183, align 4
  store i32 8, i32* %9, align 4
  br label %185

184:                                              ; preds = %165
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %185

185:                                              ; preds = %184, %182
  %186 = load i32, i32* %9, align 4
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %9, align 4
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  store i32 %188, i32* %189, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  store i32 %192, i32* %193, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call %struct.TYPE_10__* @opj_image_create(i32 %198, %struct.TYPE_12__* %14, i32 %199)
  store %struct.TYPE_10__* %200, %struct.TYPE_10__** %15, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %202 = icmp ne %struct.TYPE_10__* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %185
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @fclose(i32* %204)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %344

206:                                              ; preds = %185
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 0
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %26, align 8
  store i32 0, i32* %10, align 4
  br label %227

227:                                              ; preds = %332, %206
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = mul nsw i32 %229, %230
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %335

233:                                              ; preds = %227
  %234 = load i32, i32* %19, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %233
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @readuchar(i32* %237)
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %238, %239
  store i32 %240, i32* %27, align 4
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* %17, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* %27, align 4
  %245 = load i32, i32* %18, align 4
  %246 = ashr i32 %244, %245
  %247 = add nsw i32 %243, %246
  store i32 %247, i32* %27, align 4
  %248 = load i32, i32* %27, align 4
  %249 = trunc i32 %248 to i8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  store i8 %249, i8* %255, align 1
  %256 = load i32, i32* %27, align 4
  %257 = load i32, i32* %12, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %236
  %260 = load i32, i32* %27, align 4
  store i32 %260, i32* %12, align 4
  br label %261

261:                                              ; preds = %259, %236
  br label %332

262:                                              ; preds = %233
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 8
  br i1 %266, label %267, label %281

267:                                              ; preds = %262
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = load i32*, i32** %6, align 8
  %274 = call i32 @readuchar(i32* %273)
  store i32 %274, i32* %27, align 4
  br label %280

275:                                              ; preds = %267
  %276 = load i32*, i32** %6, align 8
  %277 = call i32 @readuchar(i32* %276)
  %278 = trunc i32 %277 to i8
  %279 = sext i8 %278 to i32
  store i32 %279, i32* %27, align 4
  br label %280

280:                                              ; preds = %275, %272
  br label %317

281:                                              ; preds = %262
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp sle i32 %284, 16
  br i1 %285, label %286, label %302

286:                                              ; preds = %281
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %286
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %25, align 4
  %294 = call i32 @readushort(i32* %292, i32 %293)
  store i32 %294, i32* %27, align 4
  br label %301

295:                                              ; preds = %286
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* %25, align 4
  %298 = call i32 @readushort(i32* %296, i32 %297)
  %299 = trunc i32 %298 to i16
  %300 = sext i16 %299 to i32
  store i32 %300, i32* %27, align 4
  br label %301

301:                                              ; preds = %295, %291
  br label %316

302:                                              ; preds = %281
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %302
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %25, align 4
  %310 = call i32 @readuint(i32* %308, i32 %309)
  store i32 %310, i32* %27, align 4
  br label %315

311:                                              ; preds = %302
  %312 = load i32*, i32** %6, align 8
  %313 = load i32, i32* %25, align 4
  %314 = call i32 @readuint(i32* %312, i32 %313)
  store i32 %314, i32* %27, align 4
  br label %315

315:                                              ; preds = %311, %307
  br label %316

316:                                              ; preds = %315, %301
  br label %317

317:                                              ; preds = %316, %280
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = load i32, i32* %27, align 4
  store i32 %322, i32* %12, align 4
  br label %323

323:                                              ; preds = %321, %317
  %324 = load i32, i32* %27, align 4
  %325 = trunc i32 %324 to i8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  store i8 %325, i8* %331, align 1
  br label %332

332:                                              ; preds = %323, %261
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %10, align 4
  br label %227

335:                                              ; preds = %227
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 @fclose(i32* %336)
  %338 = load i32, i32* %12, align 4
  %339 = call i64 @int_floorlog2(i32 %338)
  %340 = add nsw i64 %339, 1
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  store i64 %340, i64* %342, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %343, %struct.TYPE_10__** %3, align 8
  br label %344

344:                                              ; preds = %335, %203, %93, %49, %34
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %345
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local %struct.TYPE_10__* @opj_image_create(i32, %struct.TYPE_12__*, i32) #1

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
