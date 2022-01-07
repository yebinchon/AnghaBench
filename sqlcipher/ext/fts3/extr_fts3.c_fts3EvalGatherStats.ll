; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalGatherStats.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalGatherStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTSQUERY_PHRASE = common dso_local global i64 0, align 8
@FTSQUERY_NEAR = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @fts3EvalGatherStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalGatherStats(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FTSQUERY_PHRASE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %249

26:                                               ; preds = %2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %8, align 8
  br label %36

36:                                               ; preds = %51, %26
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FTSQUERY_NEAR, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %41, %36
  %50 = phi i1 [ false, %36 ], [ %48, %41 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %8, align 8
  br label %36

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %9, align 8
  br label %67

67:                                               ; preds = %121, %55
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = icmp ne %struct.TYPE_15__* %68, null
  br i1 %69, label %70, label %125

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FTSQUERY_PHRASE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  br label %82

82:                                               ; preds = %78, %76
  %83 = phi %struct.TYPE_15__* [ %77, %76 ], [ %81, %78 ]
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %13, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i64 @sqlite3_malloc64(i32 %96)
  %98 = inttoptr i64 %97 to i32*
  %99 = ptrtoint i32* %98 to i64
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %82
  %107 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %107, i32* %3, align 4
  br label %251

108:                                              ; preds = %82
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(i32* %112, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %108
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %9, align 8
  br label %67

125:                                              ; preds = %67
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = call i32 @fts3EvalRestart(%struct.TYPE_16__* %126, %struct.TYPE_15__* %127, i32* %6)
  br label %129

129:                                              ; preds = %208, %125
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SQLITE_OK, align 4
  %137 = icmp eq i32 %135, %136
  br label %138

138:                                              ; preds = %134, %129
  %139 = phi i1 [ false, %129 ], [ %137, %134 ]
  br i1 %139, label %140, label %209

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %191, %140
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @sqlite3_reset(i32 %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @sqlite3_data_count(i32 %154)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = call i32 @fts3EvalNextRow(%struct.TYPE_16__* %159, %struct.TYPE_15__* %160, i32* %6)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  store i32 1, i32* %168, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 3
  store i32 1, i32* %170, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %151
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FTSQUERY_NEAR, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = call i64 @sqlite3Fts3EvalTestDeferred(%struct.TYPE_16__* %188, i32* %6)
  %190 = icmp ne i64 %189, 0
  br label %191

191:                                              ; preds = %187, %181, %176
  %192 = phi i1 [ false, %181 ], [ false, %176 ], [ %190, %187 ]
  br i1 %192, label %141, label %193

193:                                              ; preds = %191
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @SQLITE_OK, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @fts3EvalUpdateCounts(%struct.TYPE_15__* %203, i32 %206)
  br label %208

208:                                              ; preds = %202, %197, %193
  br label %129

209:                                              ; preds = %138
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %12, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  %218 = load i64, i64* %12, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 3
  store i64 %218, i64* %220, align 8
  br label %248

221:                                              ; preds = %209
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = call i32 @fts3EvalRestart(%struct.TYPE_16__* %222, %struct.TYPE_15__* %223, i32* %6)
  br label %225

225:                                              ; preds = %245, %221
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %228 = call i32 @fts3EvalNextRow(%struct.TYPE_16__* %226, %struct.TYPE_15__* %227, i32* %6)
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  br label %235

235:                                              ; preds = %225
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @SQLITE_OK, align 4
  %244 = icmp eq i32 %242, %243
  br label %245

245:                                              ; preds = %241, %235
  %246 = phi i1 [ false, %235 ], [ %244, %241 ]
  br i1 %246, label %225, label %247

247:                                              ; preds = %245
  br label %248

248:                                              ; preds = %247, %217
  br label %249

249:                                              ; preds = %248, %2
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %106
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fts3EvalRestart(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i64 @sqlite3_data_count(i32) #1

declare dso_local i32 @fts3EvalNextRow(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @sqlite3Fts3EvalTestDeferred(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @fts3EvalUpdateCounts(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
