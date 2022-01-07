; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_ctype_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_ctype_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i16*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i64 }

@MAX_CP_LEN = common dso_local global i32 0, align 4
@_STLP_LOC_NO_MEMORY = common dso_local global i32 0, align 4
@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@CT_CTYPE1 = common dso_local global i32 0, align 4
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_SEPCHARS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVARIANT_LCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @_Locale_ctype_create(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca [256 x i16], align 16
  %21 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32, i32* @MAX_CP_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = call i64 @malloc(i32 24)
  %28 = inttoptr i64 %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %17, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

35:                                               ; preds = %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %37 = call i32 @memset(%struct.TYPE_15__* %36, i32 0, i32 24)
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @__GetLCIDFromName(i8* %38, i32* %41, i8* %26, i32* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %47 = call i32 @free(%struct.TYPE_15__* %46)
  %48 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

50:                                               ; preds = %35
  %51 = call i64 @atoi(i8* %26)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__GetDefaultCP(i32 %57)
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %68, %50
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %66
  store i8 %64, i8* %67, align 1
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %59

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @GetCPInfo(i32 %72, %struct.TYPE_17__* %13)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %77 = call i32 @free(%struct.TYPE_15__* %76)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %12, align 8
  br label %86

86:                                               ; preds = %118, %82
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi i1 [ false, %86 ], [ %96, %91 ]
  br i1 %98, label %99, label %121

99:                                               ; preds = %97
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %114, %99
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp sle i32 %104, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %112
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %103

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  store i8* %120, i8** %12, align 8
  br label %86

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121, %78
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %285

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 16, i32* %130, align 8
  %131 = call i32 @GetVersionEx(%struct.TYPE_16__* %19)
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %129
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* @MB_PRECOMPOSED, align 4
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %143 = call i32 @MultiByteToWideChar(i32 %140, i32 %141, i8* %142, i32 256, %struct.TYPE_15__* null, i32 0)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %148 = call i32 @free(%struct.TYPE_15__* %147)
  %149 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

151:                                              ; preds = %136
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 24
  %155 = trunc i64 %154 to i32
  %156 = call i64 @malloc(i32 %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %15, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %159 = icmp ne %struct.TYPE_15__* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %151
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %162 = call i32 @free(%struct.TYPE_15__* %161)
  %163 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %164 = load i32*, i32** %7, align 8
  store i32 %163, i32* %164, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

165:                                              ; preds = %151
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @MB_PRECOMPOSED, align 4
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @MultiByteToWideChar(i32 %169, i32 %170, i8* %171, i32 256, %struct.TYPE_15__* %172, i32 %173)
  %175 = load i32, i32* @CT_CTYPE1, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i16*, i16** %178, align 8
  %180 = call i32 @GetStringTypeW(i32 %175, %struct.TYPE_15__* %176, i32 256, i16* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i16*, i16** %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i16*, i16** %185, align 8
  %187 = getelementptr inbounds i16, i16* %186, i64 256
  %188 = call i32 @MapCtypeMasks(i16* %183, i16* %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %190 = call i32 @free(%struct.TYPE_15__* %189)
  br label %284

191:                                              ; preds = %129
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CT_CTYPE1, align 4
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %198 = getelementptr inbounds [256 x i16], [256 x i16]* %20, i64 0, i64 0
  %199 = call i32 @GetStringTypeA(i32 %195, i32 %196, i8* %197, i32 256, i16* %198)
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @MB_PRECOMPOSED, align 4
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %203 = call i32 @MultiByteToWideChar(i32 %200, i32 %201, i8* %202, i32 256, %struct.TYPE_15__* null, i32 0)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %191
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %208 = call i32 @free(%struct.TYPE_15__* %207)
  %209 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %210 = load i32*, i32** %7, align 8
  store i32 %209, i32* %210, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

211:                                              ; preds = %191
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 24
  %215 = trunc i64 %214 to i32
  %216 = call i64 @malloc(i32 %215)
  %217 = inttoptr i64 %216 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %217, %struct.TYPE_15__** %15, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %219 = icmp ne %struct.TYPE_15__* %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %211
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %222 = call i32 @free(%struct.TYPE_15__* %221)
  %223 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %224 = load i32*, i32** %7, align 8
  store i32 %223, i32* %224, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

225:                                              ; preds = %211
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @MB_PRECOMPOSED, align 4
  %228 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @MultiByteToWideChar(i32 %226, i32 %227, i8* %228, i32 256, %struct.TYPE_15__* %229, i32 %230)
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %237 = load i32, i32* @WC_SEPCHARS, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %240 = load i32, i32* %16, align 4
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %242 = load i32, i32* @FALSE, align 4
  %243 = call i32 @WideCharToMultiByte(i32 %235, i32 %238, %struct.TYPE_15__* %239, i32 %240, i8* %241, i32 256, i32* null, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %225
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %247 = call i32 @free(%struct.TYPE_15__* %246)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %249 = call i32 @free(%struct.TYPE_15__* %248)
  %250 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %251 = load i32*, i32** %7, align 8
  store i32 %250, i32* %251, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

252:                                              ; preds = %225
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %254 = call i32 @free(%struct.TYPE_15__* %253)
  store i32 0, i32* %14, align 4
  br label %255

255:                                              ; preds = %280, %252
  %256 = load i32, i32* %14, align 4
  %257 = icmp slt i32 %256, 256
  br i1 %257, label %258, label %283

258:                                              ; preds = %255
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = icmp ne i8 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %258
  br label %280

265:                                              ; preds = %258
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [256 x i16], [256 x i16]* %20, i64 0, i64 %267
  %269 = load i16, i16* %268, align 2
  %270 = call zeroext i16 @MapCtypeMask(i16 zeroext %269)
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i16*, i16** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds i16, i16* %273, i64 %278
  store i16 %270, i16* %279, align 2
  br label %280

280:                                              ; preds = %265, %264
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %14, align 4
  br label %255

283:                                              ; preds = %255
  br label %284

284:                                              ; preds = %283, %165
  br label %304

285:                                              ; preds = %122
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @CT_CTYPE1, align 4
  %291 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load i16*, i16** %293, align 8
  %295 = call i32 @GetStringTypeA(i32 %289, i32 %290, i8* %291, i32 256, i16* %294)
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  %298 = load i16*, i16** %297, align 8
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 1
  %301 = load i16*, i16** %300, align 8
  %302 = getelementptr inbounds i16, i16* %301, i64 256
  %303 = call i32 @MapCtypeMasks(i16* %298, i16* %302)
  br label %304

304:                                              ; preds = %285, %284
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %305, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %306

306:                                              ; preds = %304, %245, %220, %206, %160, %146, %75, %45, %31
  %307 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %308
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @__GetLCIDFromName(i8*, i32*, i8*, i32*) #2

declare dso_local i32 @free(%struct.TYPE_15__*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i32 @__GetDefaultCP(i32) #2

declare dso_local i32 @GetCPInfo(i32, %struct.TYPE_17__*) #2

declare dso_local i32 @GetVersionEx(%struct.TYPE_16__*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @GetStringTypeW(i32, %struct.TYPE_15__*, i32, i16*) #2

declare dso_local i32 @MapCtypeMasks(i16*, i16*) #2

declare dso_local i32 @GetStringTypeA(i32, i32, i8*, i32, i16*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, %struct.TYPE_15__*, i32, i8*, i32, i32*, i32) #2

declare dso_local zeroext i16 @MapCtypeMask(i16 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
