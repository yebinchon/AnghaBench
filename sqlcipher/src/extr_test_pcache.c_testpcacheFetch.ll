; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_pcache.c_testpcacheFetch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_pcache.c_testpcacheFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__ }

@TESTPCACHE_VALID = common dso_local global i64 0, align 8
@testpcacheGlobal = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TESTPCACHE_NPAGE = common dso_local global i32 0, align 4
@TESTPCACHE_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32, i32)* @testpcacheFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @testpcacheFetch(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TESTPCACHE_VALID, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @testpcacheGlobal, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @testpcacheGlobal, i32 0, i32 1), align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %85, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %32
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %43
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = icmp sle i32 %60, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %53, %43
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %4, align 8
  br label %338

84:                                               ; preds = %32
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %28

88:                                               ; preds = %28
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

92:                                               ; preds = %88
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

99:                                               ; preds = %92
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %104 = load i32, i32* @TESTPCACHE_RESERVE, align 4
  %105 = sub nsw i32 %103, %104
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

111:                                              ; preds = %107, %99
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @testpcacheGlobal, i32 0, i32 2), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

118:                                              ; preds = %114, %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TESTPCACHE_RESERVE, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %229

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %229

132:                                              ; preds = %127, %118
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = call i32 @testpcacheRandom(%struct.TYPE_8__* %133)
  %135 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %136 = srem i32 %134, %135
  store i32 %136, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %220, %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %227

141:                                              ; preds = %137
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %219

151:                                              ; preds = %141
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i32 %152, i32* %159, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @memset(i32 %175, i32 0, i32 %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @memset(i32 %188, i32 0, i32 %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = icmp sle i32 %203, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  store %struct.TYPE_9__* %218, %struct.TYPE_9__** %4, align 8
  br label %338

219:                                              ; preds = %141
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %226 = srem i32 %224, %225
  store i32 %226, i32* %10, align 4
  br label %137

227:                                              ; preds = %137
  %228 = call i32 @assert(i32 0)
  br label %229

229:                                              ; preds = %227, %127, %124
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

235:                                              ; preds = %229
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = call i32 @testpcacheRandom(%struct.TYPE_8__* %236)
  %238 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %239 = srem i32 %237, %238
  store i32 %239, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %240

240:                                              ; preds = %329, %235
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %336

244:                                              ; preds = %240
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp ugt i32 %252, 0
  br i1 %253, label %254, label %328

254:                                              ; preds = %244
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %328

264:                                              ; preds = %254
  %265 = load i32, i32* %6, align 4
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 %265, i32* %272, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @memset(i32 %288, i32 0, i32 %291)
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @memset(i32 %301, i32 0, i32 %304)
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 8
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 %313, %316
  %318 = icmp sle i32 %312, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 4
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 2
  store %struct.TYPE_9__* %327, %struct.TYPE_9__** %4, align 8
  br label %338

328:                                              ; preds = %254, %244
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %9, align 4
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %332, 1
  %334 = load i32, i32* @TESTPCACHE_NPAGE, align 4
  %335 = srem i32 %333, %334
  store i32 %335, i32* %10, align 4
  br label %240

336:                                              ; preds = %240
  %337 = call i32 @assert(i32 0)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %338

338:                                              ; preds = %336, %264, %234, %151, %117, %110, %98, %91, %76
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %339
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testpcacheRandom(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
