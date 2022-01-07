; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_win_iconv.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_win_iconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32*, i64)*, i32, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i64)*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32*, i64, i32*, i32*)*, i8*, %struct.TYPE_7__* }

@MB_CHAR_MAX = common dso_local global i32 0, align 4
@FLAG_IGNORE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@COMPAT_IN = common dso_local global i32 0, align 4
@COMPAT_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8**, i64*, i8**, i64*)* @win_iconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @win_iconv(i64 %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %12, align 8
  %26 = load i32, i32* @MB_CHAR_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %105

36:                                               ; preds = %32, %5
  %37 = load i8**, i8*** %10, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = load i8**, i8*** %10, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_8__*, i32*, i64)*, i32 (%struct.TYPE_8__*, i32*, i64)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_8__*, i32*, i64)* %47, null
  br i1 %48, label %49, label %98

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %19, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_8__*, i32*, i64)*, i32 (%struct.TYPE_8__*, i32*, i64)** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %10, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 %57(%struct.TYPE_8__* %59, i32* %62, i64 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %87

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FLAG_IGNORE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @E2BIG, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %16, align 4
  br label %86

81:                                               ; preds = %76, %68
  %82 = load i8*, i8** %19, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %336

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32, i32* %16, align 4
  %89 = load i8**, i8*** %10, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %89, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64*, i64** %11, align 8
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, %94
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %87, %43, %39, %36
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i8* null, i8** %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i8* null, i8** %104, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %336

105:                                              ; preds = %32
  br label %106

106:                                              ; preds = %314, %156, %105
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %335

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %18, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %19, align 8
  %119 = load i32, i32* @MB_CHAR_MAX, align 4
  store i32 %119, i32* %17, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_9__*, i32*, i64, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i64, i32*, i32*)** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %8, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i64*, i64** %9, align 8
  %130 = load i64, i64* %129, align 8
  %131 = call i32 %123(%struct.TYPE_9__* %125, i32* %128, i64 %130, i32* %29, i32* %17)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %153

134:                                              ; preds = %110
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FLAG_IGNORE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load i8*, i8** %18, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %152

147:                                              ; preds = %134
  %148 = load i8*, i8** %18, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %336

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %110
  %154 = load i32, i32* %17, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i32, i32* %15, align 4
  %158 = load i8**, i8*** %8, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = sext i32 %157 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %158, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** %9, align 8
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 %165, %163
  store i64 %166, i64* %164, align 8
  br label %106

167:                                              ; preds = %153
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %173, label %219

173:                                              ; preds = %167
  %174 = call i64 @utf16_to_ucs4(i32* %29)
  store i64 %174, i64* %20, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %179

179:                                              ; preds = %215, %173
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %218

187:                                              ; preds = %179
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %189 = load i32, i32* %22, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @COMPAT_IN, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %187
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %199 = load i32, i32* %22, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %20, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %197
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %208 = load i32, i32* %22, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @ucs4_to_utf16(i64 %212, i32* %29, i32* %17)
  br label %218

214:                                              ; preds = %197, %187
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  br label %179

218:                                              ; preds = %206, %179
  br label %219

219:                                              ; preds = %218, %167
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = icmp ne %struct.TYPE_7__* %223, null
  br i1 %224, label %225, label %271

225:                                              ; preds = %219
  %226 = call i64 @utf16_to_ucs4(i32* %29)
  store i64 %226, i64* %20, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %231

231:                                              ; preds = %267, %225
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %233 = load i32, i32* %22, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %270

239:                                              ; preds = %231
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %241 = load i32, i32* %22, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @COMPAT_OUT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %239
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %251 = load i32, i32* %22, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %20, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %249
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %260 = load i32, i32* %22, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @ucs4_to_utf16(i64 %264, i32* %29, i32* %17)
  br label %270

266:                                              ; preds = %249, %239
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %22, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %22, align 4
  br label %231

270:                                              ; preds = %258, %231
  br label %271

271:                                              ; preds = %270, %219
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  %275 = load i32 (%struct.TYPE_8__*, i32*, i32, i32*, i64)*, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i64)** %274, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %17, align 4
  %279 = load i8**, i8*** %10, align 8
  %280 = load i8*, i8** %279, align 8
  %281 = bitcast i8* %280 to i32*
  %282 = load i64*, i64** %11, align 8
  %283 = load i64, i64* %282, align 8
  %284 = call i32 %275(%struct.TYPE_8__* %277, i32* %29, i32 %278, i32* %281, i64 %283)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %287, label %314

287:                                              ; preds = %271
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @FLAG_IGNORE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %287
  %296 = load i64, i64* @errno, align 8
  %297 = load i64, i64* @E2BIG, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = load i8*, i8** %19, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 3
  store i8* %300, i8** %303, align 8
  store i32 0, i32* %16, align 4
  br label %313

304:                                              ; preds = %295, %287
  %305 = load i8*, i8** %18, align 8
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  store i8* %305, i8** %308, align 8
  %309 = load i8*, i8** %19, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 3
  store i8* %309, i8** %312, align 8
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %336

313:                                              ; preds = %299
  br label %314

314:                                              ; preds = %313, %271
  %315 = load i32, i32* %15, align 4
  %316 = load i8**, i8*** %8, align 8
  %317 = load i8*, i8** %316, align 8
  %318 = sext i32 %315 to i64
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8* %319, i8** %316, align 8
  %320 = load i32, i32* %16, align 4
  %321 = load i8**, i8*** %10, align 8
  %322 = load i8*, i8** %321, align 8
  %323 = sext i32 %320 to i64
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8* %324, i8** %321, align 8
  %325 = load i32, i32* %15, align 4
  %326 = sext i32 %325 to i64
  %327 = load i64*, i64** %9, align 8
  %328 = load i64, i64* %327, align 8
  %329 = sub i64 %328, %326
  store i64 %329, i64* %327, align 8
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = load i64*, i64** %11, align 8
  %333 = load i64, i64* %332, align 8
  %334 = sub i64 %333, %331
  store i64 %334, i64* %332, align 8
  br label %106

335:                                              ; preds = %106
  store i64 0, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %336

336:                                              ; preds = %335, %304, %147, %98, %81
  %337 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %337)
  %338 = load i64, i64* %6, align 8
  ret i64 %338
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @utf16_to_ucs4(i32*) #2

declare dso_local i32 @ucs4_to_utf16(i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
