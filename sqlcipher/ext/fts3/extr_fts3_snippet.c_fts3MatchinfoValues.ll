; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoValues.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i8, i32*, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS3_MATCHINFO_HITS = common dso_local global i8 0, align 1
@fts3ExprGlobalHitsCb = common dso_local global i32 0, align 4
@fts3ExprLocalHitsCb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i8*)* @fts3MatchinfoValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3MatchinfoValues(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8* %3, i8** %8, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %276, %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i1 [ false, %31 ], [ %42, %35 ]
  br i1 %44, label %45, label %279

45:                                               ; preds = %43
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i8 %50, i8* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %205 [
    i32 128, label %59
    i32 130, label %71
    i32 129, label %83
    i32 135, label %95
    i32 133, label %136
    i32 134, label %174
    i32 131, label %185
    i32 132, label %185
  ]

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %59
  br label %263

71:                                               ; preds = %45
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %71
  br label %263

83:                                               ; preds = %45
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @fts3MatchinfoSelectDoctotal(i32* %87, i32** %12, i32* %13, i8** null)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %83
  br label %263

95:                                               ; preds = %45
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %135

98:                                               ; preds = %95
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @fts3MatchinfoSelectDoctotal(i32* %99, i32** %12, i32* %14, i8** %15)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %130, %104
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @sqlite3Fts3GetVarint(i8* %112, i32* %18)
  %114 = load i8*, i8** %15, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %15, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %14, align 4
  %119 = sdiv i32 %118, 2
  %120 = add nsw i32 %117, %119
  %121 = load i32, i32* %14, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %105

133:                                              ; preds = %105
  br label %134

134:                                              ; preds = %133, %98
  br label %135

135:                                              ; preds = %134, %95
  br label %263

136:                                              ; preds = %45
  store i32* null, i32** %19, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @sqlite3Fts3SelectDocsize(i32* %137, i32 %140, i32** %19)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %136
  %146 = load i32*, i32** %19, align 8
  %147 = call i8* @sqlite3_column_blob(i32* %146, i32 0)
  store i8* %147, i8** %21, align 8
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %167, %145
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load i8*, i8** %21, align 8
  %156 = call i32 @sqlite3Fts3GetVarint(i8* %155, i32* %22)
  %157 = load i8*, i8** %21, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %21, align 8
  %160 = load i32, i32* %22, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  br label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %20, align 4
  br label %148

170:                                              ; preds = %148
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i32*, i32** %19, align 8
  %173 = call i32 @sqlite3_reset(i32* %172)
  br label %263

174:                                              ; preds = %45
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = call i32 @fts3ExprLoadDoclists(%struct.TYPE_14__* %175, i32 0, i32 0)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SQLITE_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = call i32 @fts3MatchinfoLcs(%struct.TYPE_14__* %181, %struct.TYPE_13__* %182)
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %180, %174
  br label %263

185:                                              ; preds = %45, %45
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @fts3MatchinfoSize(%struct.TYPE_13__* %186, i8 signext %191)
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  store i64 %194, i64* %23, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %23, align 8
  %199 = call i32 @memset(i32* %197, i32 0, i64 %198)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %204 = call i32 @fts3ExprLHitGather(i32* %202, %struct.TYPE_13__* %203)
  store i32 %204, i32* %9, align 4
  br label %263

205:                                              ; preds = %45
  %206 = load i8*, i8** %8, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8, i8* @FTS3_MATCHINFO_HITS, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %211, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %24, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = call i32 @fts3ExprLoadDoclists(%struct.TYPE_14__* %220, i32 0, i32 0)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @SQLITE_OK, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %205
  br label %263

226:                                              ; preds = %205
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %257

229:                                              ; preds = %226
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32*, i32** %11, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = call i32 @fts3MatchinfoSelectDoctotal(i32* %235, i32** %12, i32* %237, i8** null)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @SQLITE_OK, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %263

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %229
  %245 = load i32*, i32** %24, align 8
  %246 = load i32, i32* @fts3ExprGlobalHitsCb, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %248 = bitcast %struct.TYPE_13__* %247 to i8*
  %249 = call i32 @fts3ExprIterate(i32* %245, i32 %246, i8* %248)
  store i32 %249, i32* %9, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %251 = call i32 @sqlite3Fts3EvalTestDeferred(%struct.TYPE_14__* %250, i32* %9)
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @SQLITE_OK, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %244
  br label %263

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256, %226
  %258 = load i32*, i32** %24, align 8
  %259 = load i32, i32* @fts3ExprLocalHitsCb, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %261 = bitcast %struct.TYPE_13__* %260 to i8*
  %262 = call i32 @fts3ExprIterate(i32* %258, i32 %259, i8* %261)
  br label %263

263:                                              ; preds = %257, %255, %242, %225, %185, %184, %171, %135, %94, %82, %70
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %265 = load i8*, i8** %8, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = call i32 @fts3MatchinfoSize(%struct.TYPE_13__* %264, i8 signext %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = sext i32 %270 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %272, align 8
  br label %276

276:                                              ; preds = %263
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  br label %31

279:                                              ; preds = %43
  %280 = load i32*, i32** %12, align 8
  %281 = call i32 @sqlite3_reset(i32* %280)
  %282 = load i32, i32* %9, align 4
  ret i32 %282
}

declare dso_local i32 @fts3MatchinfoSelectDoctotal(i32*, i32**, i32*, i8**) #1

declare dso_local i32 @sqlite3Fts3GetVarint(i8*, i32*) #1

declare dso_local i32 @sqlite3Fts3SelectDocsize(i32*, i32, i32**) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @fts3ExprLoadDoclists(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @fts3MatchinfoLcs(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fts3MatchinfoSize(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @fts3ExprLHitGather(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3ExprIterate(i32*, i32, i8*) #1

declare dso_local i32 @sqlite3Fts3EvalTestDeferred(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
