; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalNextRow.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalNextRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTSQUERY_PHRASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_11__*, i32*)* @fts3EvalNextRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3EvalNextRow(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %486

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %466 [
    i32 130, label %38
    i32 131, label %38
    i32 128, label %263
    i32 129, label %393
  ]

38:                                               ; preds = %23, %23
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %9, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %38
  %56 = phi i1 [ true, %38 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %64, %struct.TYPE_11__* %65, i32* %66)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %262

77:                                               ; preds = %55
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %83, %struct.TYPE_11__* %84, i32* %85)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %261

96:                                               ; preds = %77
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %97, %struct.TYPE_11__* %98, i32* %99)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %100, %struct.TYPE_11__* %101, i32* %102)
  br label %103

103:                                              ; preds = %142, %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SQLITE_OK, align 4
  %117 = icmp eq i32 %115, %116
  br label %118

118:                                              ; preds = %113, %108, %103
  %119 = phi i1 [ false, %108 ], [ false, %103 ], [ %117, %113 ]
  br i1 %119, label %120, label %143

120:                                              ; preds = %118
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @DOCID_CMP(i32 %123, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %143

131:                                              ; preds = %120
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %135, %struct.TYPE_11__* %136, i32* %137)
  br label %142

138:                                              ; preds = %131
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %141 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %139, %struct.TYPE_11__* %140, i32* %141)
  br label %142

142:                                              ; preds = %138, %134
  br label %103

143:                                              ; preds = %130, %118
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %143
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %153, %143
  %159 = phi i1 [ true, %143 ], [ %157, %153 ]
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 130
  br i1 %167, label %168, label %260

168:                                              ; preds = %158
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %260

173:                                              ; preds = %168
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %217

188:                                              ; preds = %173
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  store %struct.TYPE_12__* %192, %struct.TYPE_12__** %11, align 8
  br label %193

193:                                              ; preds = %205, %188
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i1 [ false, %193 ], [ %202, %198 ]
  br i1 %204, label %205, label %216

205:                                              ; preds = %203
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @memset(i32 %208, i32 0, i32 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %215 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %213, %struct.TYPE_11__* %214, i32* %215)
  br label %193

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216, %173
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = icmp ne %struct.TYPE_10__* %220, null
  br i1 %221, label %222, label %259

222:                                              ; preds = %217
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %222
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store %struct.TYPE_12__* %234, %struct.TYPE_12__** %12, align 8
  br label %235

235:                                              ; preds = %247, %230
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @SQLITE_OK, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br label %245

245:                                              ; preds = %240, %235
  %246 = phi i1 [ false, %235 ], [ %244, %240 ]
  br i1 %246, label %247, label %258

247:                                              ; preds = %245
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @memset(i32 %250, i32 0, i32 %253)
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %257 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %255, %struct.TYPE_11__* %256, i32* %257)
  br label %235

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %258, %222, %217
  br label %260

260:                                              ; preds = %259, %168, %158
  br label %261

261:                                              ; preds = %260, %82
  br label %262

262:                                              ; preds = %261, %63
  br label %485

263:                                              ; preds = %23
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  store %struct.TYPE_11__* %266, %struct.TYPE_11__** %13, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  store %struct.TYPE_11__* %269, %struct.TYPE_11__** %14, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @DOCID_CMP(i32 %272, i32 %275)
  store i32 %276, i32* %15, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %263
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %284, %287
  br label %289

289:                                              ; preds = %281, %263
  %290 = phi i1 [ true, %263 ], [ %288, %281 ]
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %289
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %300, %303
  br label %305

305:                                              ; preds = %297, %289
  %306 = phi i1 [ true, %289 ], [ %304, %297 ]
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %305
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load i32, i32* %15, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %318, %305
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %324 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %322, %struct.TYPE_11__* %323, i32* %324)
  br label %345

325:                                              ; preds = %318, %313
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %325
  %331 = load i32, i32* %15, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330, %325
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %336 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %334, %struct.TYPE_11__* %335, i32* %336)
  br label %344

337:                                              ; preds = %330
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %340 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %338, %struct.TYPE_11__* %339, i32* %340)
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %343 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %341, %struct.TYPE_11__* %342, i32* %343)
  br label %344

344:                                              ; preds = %337, %333
  br label %345

345:                                              ; preds = %344, %321
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br label %355

355:                                              ; preds = %350, %345
  %356 = phi i1 [ false, %345 ], [ %354, %350 ]
  %357 = zext i1 %356 to i32
  %358 = sext i32 %357 to i64
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 0
  store i64 %358, i64* %360, align 8
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @DOCID_CMP(i32 %363, i32 %366)
  store i32 %367, i32* %15, align 4
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %380, label %372

372:                                              ; preds = %355
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %372
  %378 = load i32, i32* %15, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %377, %355
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 3
  store i32 %383, i32* %385, align 8
  br label %392

386:                                              ; preds = %377, %372
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 3
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %386, %380
  br label %485

393:                                              ; preds = %23
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 6
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %395, align 8
  store %struct.TYPE_11__* %396, %struct.TYPE_11__** %16, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 5
  %399 = load %struct.TYPE_11__*, %struct.TYPE_11__** %398, align 8
  store %struct.TYPE_11__* %399, %struct.TYPE_11__** %17, align 8
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %421

404:                                              ; preds = %393
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %407 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %405, %struct.TYPE_11__* %406, i32* %407)
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @SQLITE_OK, align 4
  %411 = icmp ne i32 %409, %410
  br i1 %411, label %417, label %412

412:                                              ; preds = %404
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %415, 0
  br label %417

417:                                              ; preds = %412, %404
  %418 = phi i1 [ true, %404 ], [ %416, %412 ]
  %419 = zext i1 %418 to i32
  %420 = call i32 @assert(i32 %419)
  br label %421

421:                                              ; preds = %417, %393
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %424 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %422, %struct.TYPE_11__* %423, i32* %424)
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %455

429:                                              ; preds = %421
  br label %430

430:                                              ; preds = %450, %429
  %431 = load i32*, i32** %6, align 8
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %448, label %434

434:                                              ; preds = %430
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %448, label %439

439:                                              ; preds = %434
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @DOCID_CMP(i32 %442, i32 %445)
  %447 = icmp sgt i32 %446, 0
  br label %448

448:                                              ; preds = %439, %434, %430
  %449 = phi i1 [ false, %434 ], [ false, %430 ], [ %447, %439 ]
  br i1 %449, label %450, label %454

450:                                              ; preds = %448
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %453 = load i32*, i32** %6, align 8
  call void @fts3EvalNextRow(%struct.TYPE_13__* %451, %struct.TYPE_11__* %452, i32* %453)
  br label %430

454:                                              ; preds = %448
  br label %455

455:                                              ; preds = %454, %421
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 3
  store i32 %458, i32* %460, align 8
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 0
  store i64 %463, i64* %465, align 8
  br label %485

466:                                              ; preds = %23
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 4
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %468, align 8
  store %struct.TYPE_10__* %469, %struct.TYPE_10__** %18, align 8
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %471 = call i32 @fts3EvalInvalidatePoslist(%struct.TYPE_10__* %470)
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %473 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 0
  %476 = bitcast i64* %475 to i32*
  %477 = call i32 @fts3EvalPhraseNext(%struct.TYPE_13__* %472, %struct.TYPE_10__* %473, i32* %476)
  %478 = load i32*, i32** %6, align 8
  store i32 %477, i32* %478, align 4
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i32 0, i32 3
  store i32 %482, i32* %484, align 8
  br label %485

485:                                              ; preds = %466, %455, %392, %262
  br label %486

486:                                              ; preds = %485, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DOCID_CMP(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @fts3EvalInvalidatePoslist(%struct.TYPE_10__*) #1

declare dso_local i32 @fts3EvalPhraseNext(%struct.TYPE_13__*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
