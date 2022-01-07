; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ConvertCoffs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ConvertCoffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, i64, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.StringHashTable = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for converted COFF symbols\0A\00", align 1
@C_EXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Invalid section number %d in COFF symbols (only %d sections present)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Function name too long\0A\00", align 1
@E_SYMNMLEN = common dso_local global i64 0, align 8
@CompareSymEntry = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__**, i32*, i8*, i32, i8*, i32, i8*, i32, %struct.TYPE_18__*, %struct.TYPE_17__*)* @ConvertCoffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertCoffs(i32* %0, %struct.TYPE_16__** %1, i32* %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i32 %8, %struct.TYPE_18__* %9, %struct.TYPE_17__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_19__*, align 8
  %27 = alloca [256 x i8], align 16
  %28 = alloca [1024 x i8], align 16
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_16__*, align 8
  %31 = alloca %struct.StringHashTable, align 4
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %23, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %26, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %24, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_16__* @malloc(i32 %41)
  %43 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %43, align 8
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = icmp eq %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %11
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %270

50:                                               ; preds = %11
  %51 = load i32*, i32** %13, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %30, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @StringHashTableInit(%struct.StringHashTable* %31, i32 %55, i8* %56)
  store i32 0, i32* %25, align 4
  br label %58

58:                                               ; preds = %248, %50
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %251

62:                                               ; preds = %58
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %64 = load i32, i32* %25, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ISFCN(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = load i64, i64* @C_EXT, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %74 = load i32, i32* %25, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %80, label %237

80:                                               ; preds = %71, %62
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %82 = load i32, i32* %25, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %90 = load i32, i32* %25, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %80
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %101 = load i32, i32* %25, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %96
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = call i32 @free(%struct.TYPE_16__* %109)
  %111 = load i32, i32* @stderr, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %113 = load i32, i32* %25, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120)
  store i32 1, i32* %12, align 4
  br label %270

122:                                              ; preds = %96
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %125 = load i32, i32* %25, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  br label %141

141:                                              ; preds = %122, %80
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %189

153:                                              ; preds = %141
  %154 = load i8*, i8** %20, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %156 = load i32, i32* %25, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %154, i64 %163
  %165 = call i32 @strlen(i8* %164)
  %166 = sext i32 %165 to i64
  %167 = icmp ule i64 256, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %153
  %169 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32 @free(%struct.TYPE_16__* %170)
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %174 = call i32 @StringHashTableFree(%struct.StringHashTable* %31)
  store i32 1, i32* %12, align 4
  br label %270

175:                                              ; preds = %153
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %177 = load i8*, i8** %20, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %179 = load i32, i32* %25, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %177, i64 %186
  %188 = call i32 @strcpy(i8* %176, i8* %187)
  br label %202

189:                                              ; preds = %141
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %192 = load i32, i32* %25, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* @E_SYMNMLEN, align 8
  %199 = call i32 @memcpy(i8* %190, i32 %197, i64 %198)
  %200 = load i64, i64* @E_SYMNMLEN, align 8
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 %200
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %189, %175
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %204 = call i8* @strrchr(i8* %203, i8 signext 64)
  store i8* %204, i8** %29, align 8
  %205 = load i8*, i8** %29, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i8*, i8** %29, align 8
  store i8 0, i8* %208, align 1
  br label %209

209:                                              ; preds = %207, %202
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %211 = load i8, i8* %210, align 16
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 95, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %216 = load i8, i8* %215, align 16
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 64, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %209
  %220 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  br label %224

222:                                              ; preds = %214
  %223 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi i8* [ %221, %219 ], [ %223, %222 ]
  store i8* %225, i8** %29, align 8
  %226 = load i8*, i8** %29, align 8
  %227 = load i32*, i32** %15, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 @FindOrAddString(%struct.StringHashTable* %31, i8* %226, i32* %227, i8* %228)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 1
  store %struct.TYPE_16__* %235, %struct.TYPE_16__** %30, align 8
  %236 = call i32 @memset(%struct.TYPE_16__* %235, i32 0, i32 32)
  br label %237

237:                                              ; preds = %224, %71
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %239 = load i32, i32* %25, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %25, align 4
  br label %248

248:                                              ; preds = %237
  %249 = load i32, i32* %25, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %25, align 4
  br label %58

251:                                              ; preds = %58
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %253 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = ptrtoint %struct.TYPE_16__* %252 to i64
  %256 = ptrtoint %struct.TYPE_16__* %254 to i64
  %257 = sub i64 %255, %256
  %258 = sdiv exact i64 %257, 32
  %259 = add nsw i64 %258, 1
  %260 = trunc i64 %259 to i32
  %261 = load i32*, i32** %13, align 8
  store i32 %260, i32* %261, align 4
  %262 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %264, align 4
  %266 = load i64, i64* @CompareSymEntry, align 8
  %267 = inttoptr i64 %266 to i32 (i8*, i8*)*
  %268 = call i32 @qsort(%struct.TYPE_16__* %263, i32 %265, i32 4, i32 (i8*, i8*)* %267)
  %269 = call i32 @StringHashTableFree(%struct.StringHashTable* %31)
  store i32 0, i32* %12, align 4
  br label %270

270:                                              ; preds = %251, %168, %107, %47
  %271 = load i32, i32* %12, align 4
  ret i32 %271
}

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @StringHashTableInit(%struct.StringHashTable*, i32, i8*) #1

declare dso_local i64 @ISFCN(i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @StringHashTableFree(%struct.StringHashTable*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @FindOrAddString(%struct.StringHashTable*, i8*, i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_16__*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
