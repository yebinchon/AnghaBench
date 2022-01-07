; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_dump.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dump_\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@PNG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"-folder\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"missing argument after option '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-prefix\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-tiff\00", align 1
@TIFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"tiff\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-pam\00", align 1
@PAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"pam\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"WebP Decoder version: %d.%d.%d\0AWebP Demux version: %d.%d.%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Decoding file: %s as %s/%sxxxx.%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Error decoding file: %s\0A Aborting.\0A\00", align 1
@MODE_RGBA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"%s/%s%.4d.%s\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Error while saving image '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [1024 x i32], align 16
  %18 = alloca %struct.TYPE_15__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = call i32* @TO_W_CHAR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = call i32* @TO_W_CHAR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = call i32* @TO_W_CHAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* @PNG, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @INIT_WARGV(i32 %23, i8** %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = call i32 (...) @Help()
  %30 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %31

31:                                               ; preds = %28, %2
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %262, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %265

41:                                               ; preds = %39
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  store i32 1, i32* %6, align 4
  br label %265

62:                                               ; preds = %49
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = call i8* @GET_WARGV(i8** %63, i32 %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %7, align 8
  br label %261

68:                                               ; preds = %41
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  store i32 1, i32* %6, align 4
  br label %265

89:                                               ; preds = %76
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = call i8* @GET_WARGV(i8** %90, i32 %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %8, align 8
  br label %260

95:                                               ; preds = %68
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @TIFF, align 4
  store i32 %104, i32* %10, align 4
  %105 = call i32* @TO_W_CHAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32* %105, i32** %9, align 8
  br label %259

106:                                              ; preds = %95
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @PAM, align 4
  store i32 %115, i32* %10, align 4
  %116 = call i32* @TO_W_CHAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i32* %116, i32** %9, align 8
  br label %258

117:                                              ; preds = %106
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125, %117
  %134 = call i32 (...) @Help()
  %135 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %257

136:                                              ; preds = %125
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %166, label %144

144:                                              ; preds = %136
  %145 = call i32 @GetAnimatedImageVersions(i32* %12, i32* %13)
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = load i32, i32* %12, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 0
  %154 = and i32 %153, 255
  %155 = load i32, i32* %13, align 4
  %156 = ashr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 %158, 8
  %160 = and i32 %159, 255
  %161 = load i32, i32* %13, align 4
  %162 = ashr i32 %161, 0
  %163 = and i32 %162, 255
  %164 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %148, i32 %151, i32 %154, i32 %157, i32 %160, i32 %163)
  %165 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %256

166:                                              ; preds = %136
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i8* @GET_WARGV(i8** %167, i32 %168)
  %170 = bitcast i8* %169 to i32*
  store i32* %170, i32** %16, align 8
  %171 = call i32 @memset(%struct.TYPE_16__* %15, i32 0, i32 24)
  %172 = load i32*, i32** %16, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @WPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32* %172, i32* %173, i32* %174, i32* %175)
  %177 = load i32*, i32** %16, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = call i32 @ReadAnimatedImage(i8* %178, %struct.TYPE_16__* %15, i32 0, i32* null)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %166
  %182 = load i32, i32* @stderr, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @WFPRINTF(i32 %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32* %183)
  store i32 1, i32* %6, align 4
  br label %265

185:                                              ; preds = %166
  store i64 0, i64* %14, align 8
  br label %186

186:                                              ; preds = %251, %185
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load i64, i64* %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ult i64 %190, %192
  br label %194

194:                                              ; preds = %189, %186
  %195 = phi i1 [ false, %186 ], [ %193, %189 ]
  br i1 %195, label %196, label %254

196:                                              ; preds = %194
  %197 = call i32 @WebPInitDecBuffer(%struct.TYPE_15__* %18)
  %198 = load i32, i32* @MODE_RGBA, align 4
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 4
  store i32 %198, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i32 1, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  store i32 %202, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store i32 %205, i32* %206, align 4
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = load i64, i64* %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  store i32 %212, i32* %215, align 4
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 8
  %220 = trunc i64 %219 to i32
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %227, %229
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 4
  %234 = getelementptr inbounds [1024 x i32], [1024 x i32]* %17, i64 0, i64 0
  %235 = load i32*, i32** %7, align 8
  %236 = load i32*, i32** %8, align 8
  %237 = load i64, i64* %14, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @WSNPRINTF(i32* %234, i32 4096, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %235, i32* %236, i64 %237, i32* %238)
  %240 = load i32, i32* %10, align 4
  %241 = getelementptr inbounds [1024 x i32], [1024 x i32]* %17, i64 0, i64 0
  %242 = bitcast i32* %241 to i8*
  %243 = call i32 @WebPSaveImage(%struct.TYPE_15__* %18, i32 %240, i8* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %196
  %246 = load i32, i32* @stderr, align 4
  %247 = getelementptr inbounds [1024 x i32], [1024 x i32]* %17, i64 0, i64 0
  %248 = call i32 @WFPRINTF(i32 %246, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32* %247)
  store i32 1, i32* %6, align 4
  br label %249

249:                                              ; preds = %245, %196
  %250 = call i32 @WebPFreeDecBuffer(%struct.TYPE_15__* %18)
  br label %251

251:                                              ; preds = %249
  %252 = load i64, i64* %14, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %14, align 8
  br label %186

254:                                              ; preds = %194
  %255 = call i32 @ClearAnimatedImage(%struct.TYPE_16__* %15)
  br label %256

256:                                              ; preds = %254, %144
  br label %257

257:                                              ; preds = %256, %133
  br label %258

258:                                              ; preds = %257, %114
  br label %259

259:                                              ; preds = %258, %103
  br label %260

260:                                              ; preds = %259, %89
  br label %261

261:                                              ; preds = %260, %62
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %32

265:                                              ; preds = %181, %81, %54, %39
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = call i32 @FREE_WARGV_AND_RETURN(i32 %269)
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32* @TO_W_CHAR(i8*) #1

declare dso_local i32 @INIT_WARGV(i32, i8**) #1

declare dso_local i32 @Help(...) #1

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @GET_WARGV(i8**, i32) #1

declare dso_local i32 @GetAnimatedImageVersions(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @WPRINTF(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ReadAnimatedImage(i8*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @WebPInitDecBuffer(%struct.TYPE_15__*) #1

declare dso_local i32 @WSNPRINTF(i32*, i32, i8*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @WebPSaveImage(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @WebPFreeDecBuffer(%struct.TYPE_15__*) #1

declare dso_local i32 @ClearAnimatedImage(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
