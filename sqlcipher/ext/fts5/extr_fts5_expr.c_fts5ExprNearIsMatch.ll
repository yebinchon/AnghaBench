; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNearIsMatch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNearIsMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*)* @fts5ExprNearIsMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNearIsMatch(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca [4 x %struct.TYPE_16__], align 16
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %6, i64 0, i64 0
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %7, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  store %struct.TYPE_18__** %24, %struct.TYPE_18__*** %8, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %37 = call i32 @ArraySize(%struct.TYPE_16__* %36)
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 32, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @sqlite3Fts5MallocZero(i32* %10, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %7, align 8
  br label %52

49:                                               ; preds = %2
  %50 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %51 = call i32 @memset(%struct.TYPE_16__* %50, i32 0, i32 128)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %4, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %287

59:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %67, i64 %69
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %13, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = call i32 @fts5LookaheadReaderInit(i32 %75, i64 %78, %struct.TYPE_17__* %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %92, align 8
  br label %93

93:                                               ; preds = %66
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %60

96:                                               ; preds = %60
  br label %97

97:                                               ; preds = %96, %267
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %16, align 8
  br label %103

103:                                              ; preds = %171, %97
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %167, %103
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %170

110:                                              ; preds = %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %17, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %119, i64 %121
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %116, %125
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  store i64 %130, i64* %15, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %110
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %16, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %136, %110
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %154, %142
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %151 = call i64 @fts5LookaheadReaderNext(%struct.TYPE_17__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %268

154:                                              ; preds = %149
  br label %143

155:                                              ; preds = %143
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %16, align 8
  %160 = icmp sgt i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %136
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %104

170:                                              ; preds = %104
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %103, label %174

174:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %220, %174
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %223

181:                                              ; preds = %175
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %18, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  store %struct.TYPE_15__* %193, %struct.TYPE_15__** %19, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %181
  %204 = load i64, i64* %18, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %204, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203, %181
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %217 = load i64, i64* %18, align 8
  %218 = call i32 @sqlite3Fts5PoslistWriterAppend(%struct.TYPE_20__* %215, %struct.TYPE_15__* %216, i64 %217)
  br label %219

219:                                              ; preds = %209, %203
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %175

223:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %255, %223
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %229
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %15, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %235
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %15, align 8
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %245, %235
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %229

258:                                              ; preds = %229
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = call i64 @fts5LookaheadReaderNext(%struct.TYPE_17__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %268

267:                                              ; preds = %258
  br label %97

268:                                              ; preds = %266, %153
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %274, 0
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %20, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32*, i32** %4, align 8
  store i32 %277, i32* %278, align 4
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %280 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %6, i64 0, i64 0
  %281 = icmp ne %struct.TYPE_16__* %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %268
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = call i32 @sqlite3_free(%struct.TYPE_16__* %283)
  br label %285

285:                                              ; preds = %282, %268
  %286 = load i32, i32* %20, align 4
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %285, %56
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(%struct.TYPE_16__*) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @fts5LookaheadReaderInit(i32, i64, %struct.TYPE_17__*) #1

declare dso_local i64 @fts5LookaheadReaderNext(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3Fts5PoslistWriterAppend(%struct.TYPE_20__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
