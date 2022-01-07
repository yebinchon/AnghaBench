; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@__const.main.elfhdr = private unnamed_addr constant [4 x i8] c"\7FELF", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: rsym [-s <sources>] <input> <output>\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"An error occured loading '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@TRUE = common dso_local global i32 0, align 4
@E_SYMNMLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for strings table\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for .rossym section\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Cannot open output file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca [4 x i8], align 1
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i8* null, i8** %26, align 8
  store i64 0, i64* %27, align 8
  store i8* null, i8** %28, align 8
  store i64 0, i64* %29, align 8
  store i8* null, i8** %30, align 8
  %42 = bitcast [4 x i8]* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.elfhdr, i32 0, i32 0), i64 4, i1 false)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %38, align 4
  store i32 0, i32* %40, align 4
  store i8* null, i8** %41, align 8
  store i32 1, i32* %39, align 4
  br label %44

44:                                               ; preds = %85, %2
  %45 = load i32, i32* %39, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load i32, i32* %40, align 4
  switch i32 %49, label %50 [
    i32 0, label %51
    i32 1, label %68
    i32 2, label %77
  ]

50:                                               ; preds = %48
  store i32 -1, i32* %40, align 4
  br label %84

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %39, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 1, i32* %40, align 4
  br label %67

60:                                               ; preds = %51
  store i32 2, i32* %40, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %39, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @convert_path(i8* %65)
  store i8* %66, i8** %20, align 8
  br label %67

67:                                               ; preds = %60, %59
  br label %84

68:                                               ; preds = %48
  %69 = load i8*, i8** %41, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %39, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @strdup(i8* %75)
  store i8* %76, i8** %41, align 8
  store i32 0, i32* %40, align 4
  br label %84

77:                                               ; preds = %48
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %39, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @convert_path(i8* %82)
  store i8* %83, i8** %21, align 8
  store i32 3, i32* %40, align 4
  br label %84

84:                                               ; preds = %77, %68, %67, %50
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %39, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %39, align 4
  br label %44

88:                                               ; preds = %44
  %89 = load i32, i32* %40, align 4
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i32 @exit(i32 1) #4
  unreachable

95:                                               ; preds = %88
  %96 = load i8*, i8** %20, align 8
  %97 = call i8* @load_file(i8* %96, i64* %31)
  store i8* %97, i8** %32, align 8
  %98 = load i8*, i8** %32, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #4
  unreachable

105:                                              ; preds = %95
  %106 = load i8*, i8** %20, align 8
  %107 = call i8* @fopen(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %107, i8** %36, align 8
  %108 = load i8*, i8** %32, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %105
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115, %105
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 0
  %123 = call i32 @memcmp(%struct.TYPE_16__* %121, i8* %122, i32 4)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = call i32 @exit(i32 0) #4
  unreachable

127:                                              ; preds = %120
  %128 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i8*, i8** %32, align 8
  %130 = call i32 @free(i8* %129)
  %131 = call i32 @exit(i32 1) #4
  unreachable

132:                                              ; preds = %115
  %133 = load i8*, i8** %32, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = getelementptr inbounds i8, i8* %137, i64 8
  %139 = bitcast i8* %138 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %8, align 8
  %140 = call i32 @assert(i32 0)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 1
  %143 = bitcast %struct.TYPE_15__* %142 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %9, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %11, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %148 = bitcast %struct.TYPE_14__* %147 to i8*
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = ptrtoint i8* %153 to i64
  store i64 %154, i64* %10, align 8
  %155 = load i8*, i8** %32, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i64 @GetStabInfo(i8* %155, %struct.TYPE_15__* %156, i64 %157, i64* %13, i8** %12, i64* %15, i8** %14)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %132
  %161 = load i8*, i8** %32, align 8
  %162 = call i32 @free(i8* %161)
  %163 = call i32 @exit(i32 1) #4
  unreachable

164:                                              ; preds = %132
  %165 = load i64, i64* %13, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %193

167:                                              ; preds = %164
  %168 = call i32 @SymSetOptions(i32 8454224)
  %169 = load i8*, i8** %32, align 8
  %170 = call i32 @SymInitialize(i8* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %171 = load i8*, i8** %32, align 8
  %172 = load i8*, i8** %36, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = load i8*, i8** %20, align 8
  %175 = load i64, i64* %31, align 8
  %176 = call i32 @SymLoadModule(i8* %171, i8* %172, i8* %173, i8* %174, i32 0, i64 %175)
  store i32 %176, i32* %35, align 4
  %177 = load i8*, i8** %32, align 8
  %178 = load i32, i32* %35, align 4
  %179 = load i8*, i8** %41, align 8
  %180 = call i64 @ConvertDbgHelp(i8* %177, i32 %178, i8* %179, i64* %25, i8** %26, i64* %24, i8** %23)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %167
  %183 = load i8*, i8** %32, align 8
  %184 = call i32 @free(i8* %183)
  %185 = call i32 @exit(i32 1) #4
  unreachable

186:                                              ; preds = %167
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %38, align 4
  %188 = load i8*, i8** %32, align 8
  %189 = load i32, i32* %35, align 4
  %190 = call i32 @SymUnloadModule(i8* %188, i32 %189)
  %191 = load i8*, i8** %32, align 8
  %192 = call i32 @SymCleanup(i8* %191)
  br label %193

193:                                              ; preds = %186, %164
  %194 = load i8*, i8** %32, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i64 @GetCoffInfo(i8* %194, %struct.TYPE_15__* %195, i64 %196, i64* %17, i8** %16, i64* %19, i8** %18)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i8*, i8** %32, align 8
  %201 = call i32 @free(i8* %200)
  %202 = call i32 @exit(i32 1) #4
  unreachable

203:                                              ; preds = %193
  %204 = load i32, i32* %38, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %248, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* %24, align 8
  %208 = add nsw i64 1, %207
  %209 = load i64, i64* %19, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i64, i64* %17, align 8
  %212 = udiv i64 %211, 4
  %213 = load i32, i32* @E_SYMNMLEN, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = mul i64 %212, %215
  %217 = add i64 %210, %216
  %218 = call i8* @malloc(i64 %217)
  store i8* %218, i8** %23, align 8
  %219 = load i8*, i8** %23, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %206
  %222 = load i8*, i8** %32, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i32, i32* @stderr, align 4
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %226 = call i32 @exit(i32 1) #4
  unreachable

227:                                              ; preds = %206
  %228 = load i8*, i8** %23, align 8
  store i8 0, i8* %228, align 1
  store i64 1, i64* %24, align 8
  %229 = load i8*, i8** %23, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load i8*, i8** %14, align 8
  %234 = load i64, i64* %11, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %236 = load i64, i64* %10, align 8
  %237 = call i64 @ConvertStabs(i64* %25, i8** %26, i64* %24, i8* %229, i64 %230, i8* %231, i64 %232, i8* %233, i64 %234, %struct.TYPE_15__* %235, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %227
  %240 = load i8*, i8** %23, align 8
  %241 = call i32 @free(i8* %240)
  %242 = load i8*, i8** %32, align 8
  %243 = call i32 @free(i8* %242)
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %246 = call i32 @exit(i32 1) #4
  unreachable

247:                                              ; preds = %227
  br label %263

248:                                              ; preds = %203
  %249 = load i8*, i8** %23, align 8
  %250 = load i64, i64* %24, align 8
  %251 = load i64, i64* %19, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i8* @realloc(i8* %249, i64 %252)
  store i8* %253, i8** %23, align 8
  %254 = load i8*, i8** %23, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %248
  %257 = load i8*, i8** %32, align 8
  %258 = call i32 @free(i8* %257)
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %261 = call i32 @exit(i32 1) #4
  unreachable

262:                                              ; preds = %248
  br label %263

263:                                              ; preds = %262, %247
  %264 = load i8*, i8** %23, align 8
  %265 = load i64, i64* %17, align 8
  %266 = load i8*, i8** %16, align 8
  %267 = load i64, i64* %19, align 8
  %268 = load i8*, i8** %18, align 8
  %269 = load i64, i64* %11, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %271 = load i64, i64* %10, align 8
  %272 = call i64 @ConvertCoffs(i64* %27, i8** %28, i64* %24, i8* %264, i64 %265, i8* %266, i64 %267, i8* %268, i64 %269, %struct.TYPE_15__* %270, i64 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %263
  %275 = load i8*, i8** %26, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i8*, i8** %26, align 8
  %279 = call i32 @free(i8* %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i8*, i8** %23, align 8
  %282 = call i32 @free(i8* %281)
  %283 = load i8*, i8** %32, align 8
  %284 = call i32 @free(i8* %283)
  %285 = call i32 @exit(i32 1) #4
  unreachable

286:                                              ; preds = %263
  %287 = load i64, i64* %25, align 8
  %288 = load i8*, i8** %26, align 8
  %289 = load i64, i64* %27, align 8
  %290 = load i8*, i8** %28, align 8
  %291 = call i64 @MergeStabsAndCoffs(i64* %29, i8** %30, i64 %287, i8* %288, i64 %289, i8* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %311

293:                                              ; preds = %286
  %294 = load i8*, i8** %28, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i8*, i8** %28, align 8
  %298 = call i32 @free(i8* %297)
  br label %299

299:                                              ; preds = %296, %293
  %300 = load i8*, i8** %26, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i8*, i8** %26, align 8
  %304 = call i32 @free(i8* %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i8*, i8** %23, align 8
  %307 = call i32 @free(i8* %306)
  %308 = load i8*, i8** %32, align 8
  %309 = call i32 @free(i8* %308)
  %310 = call i32 @exit(i32 1) #4
  unreachable

311:                                              ; preds = %286
  %312 = load i8*, i8** %28, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i8*, i8** %28, align 8
  %316 = call i32 @free(i8* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i8*, i8** %26, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i8*, i8** %26, align 8
  %322 = call i32 @free(i8* %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i64, i64* %29, align 8
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  store i64 0, i64* %33, align 8
  store i8* null, i8** %34, align 8
  br label %397

327:                                              ; preds = %323
  %328 = load i64, i64* %29, align 8
  %329 = mul i64 %328, 4
  %330 = add i64 4, %329
  %331 = load i64, i64* %24, align 8
  %332 = add i64 %330, %331
  store i64 %332, i64* %33, align 8
  %333 = load i64, i64* %33, align 8
  %334 = call i8* @malloc(i64 %333)
  store i8* %334, i8** %34, align 8
  %335 = load i8*, i8** %34, align 8
  %336 = icmp eq i8* %335, null
  br i1 %336, label %337, label %347

337:                                              ; preds = %327
  %338 = load i8*, i8** %30, align 8
  %339 = call i32 @free(i8* %338)
  %340 = load i8*, i8** %23, align 8
  %341 = call i32 @free(i8* %340)
  %342 = load i8*, i8** %32, align 8
  %343 = call i32 @free(i8* %342)
  %344 = load i32, i32* @stderr, align 4
  %345 = call i32 (i32, i8*, ...) @fprintf(i32 %344, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %346 = call i32 @exit(i32 1) #4
  unreachable

347:                                              ; preds = %327
  %348 = load i8*, i8** %34, align 8
  %349 = load i64, i64* %33, align 8
  %350 = call i32 @memset(i8* %348, i8 signext 0, i64 %349)
  %351 = load i8*, i8** %34, align 8
  %352 = bitcast i8* %351 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %352, %struct.TYPE_13__** %6, align 8
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 0
  store i32 4, i32* %354, align 8
  %355 = load i64, i64* %29, align 8
  %356 = mul i64 %355, 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 3
  store i64 %356, i64* %358, align 8
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %362, %365
  %367 = trunc i64 %366 to i32
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 1
  store i32 %367, i32* %369, align 4
  %370 = load i64, i64* %24, align 8
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 2
  store i64 %370, i64* %372, align 8
  %373 = load i8*, i8** %34, align 8
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %373, i64 %377
  %379 = load i8*, i8** %30, align 8
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @memcpy(i8* %378, i8* %379, i64 %382)
  %384 = load i8*, i8** %34, align 8
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %384, i64 %388
  %390 = load i8*, i8** %23, align 8
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @memcpy(i8* %389, i8* %390, i64 %393)
  %395 = load i8*, i8** %30, align 8
  %396 = call i32 @free(i8* %395)
  br label %397

397:                                              ; preds = %347, %326
  %398 = load i8*, i8** %23, align 8
  %399 = call i32 @free(i8* %398)
  %400 = load i8*, i8** %21, align 8
  %401 = call i8* @fopen(i8* %400, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %402 = bitcast i8* %401 to i32*
  store i32* %402, i32** %22, align 8
  %403 = load i32*, i32** %22, align 8
  %404 = icmp eq i32* %403, null
  br i1 %404, label %405, label %412

405:                                              ; preds = %397
  %406 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %407 = load i8*, i8** %34, align 8
  %408 = call i32 @free(i8* %407)
  %409 = load i8*, i8** %32, align 8
  %410 = call i32 @free(i8* %409)
  %411 = call i32 @exit(i32 1) #4
  unreachable

412:                                              ; preds = %397
  %413 = load i32*, i32** %22, align 8
  %414 = load i8*, i8** %32, align 8
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %418 = load i64, i64* %10, align 8
  %419 = load i64, i64* %33, align 8
  %420 = load i8*, i8** %34, align 8
  %421 = call i64 @CreateOutputFile(i32* %413, i8* %414, %struct.TYPE_16__* %415, %struct.TYPE_15__* %416, %struct.TYPE_14__* %417, i64 %418, i64 %419, i8* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %435

423:                                              ; preds = %412
  %424 = load i32*, i32** %22, align 8
  %425 = call i32 @fclose(i32* %424)
  %426 = load i8*, i8** %34, align 8
  %427 = icmp ne i8* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = load i8*, i8** %34, align 8
  %430 = call i32 @free(i8* %429)
  br label %431

431:                                              ; preds = %428, %423
  %432 = load i8*, i8** %32, align 8
  %433 = call i32 @free(i8* %432)
  %434 = call i32 @exit(i32 1) #4
  unreachable

435:                                              ; preds = %412
  %436 = load i32*, i32** %22, align 8
  %437 = call i32 @fclose(i32* %436)
  %438 = load i8*, i8** %34, align 8
  %439 = icmp ne i8* %438, null
  br i1 %439, label %440, label %443

440:                                              ; preds = %435
  %441 = load i8*, i8** %34, align 8
  %442 = call i32 @free(i8* %441)
  br label %443

443:                                              ; preds = %440, %435
  %444 = load i8*, i8** %32, align 8
  %445 = call i32 @free(i8* %444)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @convert_path(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @load_file(i8*, i64*) #2

declare dso_local i8* @fopen(i8*, i8*) #2

declare dso_local i32 @memcmp(%struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @GetStabInfo(i8*, %struct.TYPE_15__*, i64, i64*, i8**, i64*, i8**) #2

declare dso_local i32 @SymSetOptions(i32) #2

declare dso_local i32 @SymInitialize(i8*, i8*, i32) #2

declare dso_local i32 @SymLoadModule(i8*, i8*, i8*, i8*, i32, i64) #2

declare dso_local i64 @ConvertDbgHelp(i8*, i32, i8*, i64*, i8**, i64*, i8**) #2

declare dso_local i32 @SymUnloadModule(i8*, i32) #2

declare dso_local i32 @SymCleanup(i8*) #2

declare dso_local i64 @GetCoffInfo(i8*, %struct.TYPE_15__*, i64, i64*, i8**, i64*, i8**) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @ConvertStabs(i64*, i8**, i64*, i8*, i64, i8*, i64, i8*, i64, %struct.TYPE_15__*, i64) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i64 @ConvertCoffs(i64*, i8**, i64*, i8*, i64, i8*, i64, i8*, i64, %struct.TYPE_15__*, i64) #2

declare dso_local i64 @MergeStabsAndCoffs(i64*, i8**, i64, i8*, i64, i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @CreateOutputFile(i32*, i8*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i64, i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
