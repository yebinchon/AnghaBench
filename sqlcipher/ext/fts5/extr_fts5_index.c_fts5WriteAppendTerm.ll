; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteAppendTerm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteAppendTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_22__*, i64, i64, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_19__, %struct.TYPE_26__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_DATA_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32*)* @fts5WriteAppendTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5WriteAppendTerm(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 5
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %10, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 4
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %11, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MIN(i64 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SQLITE_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 4
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %49, label %44

44:                                               ; preds = %4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %4
  %50 = phi i1 [ true, %4 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = add nsw i64 %64, 2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %65, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %49
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 4
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = call i32 @fts5WriteFlushLeaf(%struct.TYPE_25__* %79, %struct.TYPE_23__* %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SQLITE_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %247

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @FTS5_DATA_PADDING, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @fts5BufferGrow(i64* %91, %struct.TYPE_19__* %93, i64 %97)
  br label %99

99:                                               ; preds = %89, %49
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %110, %113
  %115 = call i64 @sqlite3Fts5PutVarint(i32* %106, i32 %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %166

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @fts5PrefixCompress(i32 %143, i32 %147, i32* %148)
  %150 = add nsw i32 1, %149
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %142, %135
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @fts5WriteBtreeTerm(%struct.TYPE_25__* %152, %struct.TYPE_23__* %153, i32 %154, i32* %155)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SQLITE_OK, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %247

163:                                              ; preds = %151
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 5
  store %struct.TYPE_24__* %165, %struct.TYPE_24__** %10, align 8
  br label %166

166:                                              ; preds = %163, %130
  br label %181

167:                                              ; preds = %99
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @fts5PrefixCompress(i32 %168, i32 %172, i32* %173)
  store i32 %174, i32* %9, align 4
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 3
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @fts5BufferAppendVarint(i64* %176, %struct.TYPE_19__* %178, i32 %179)
  br label %181

181:                                              ; preds = %167, %166
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 3
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @fts5BufferAppendVarint(i64* %183, %struct.TYPE_19__* %185, i32 %188)
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %9, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = call i32 @fts5BufferAppendBlob(i64* %191, %struct.TYPE_19__* %193, i32 %196, i32* %200)
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load i32, i32* %7, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = call i32 @fts5BufferSet(i64* %203, %struct.TYPE_18__* %205, i32 %206, i32* %207)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 4
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %181
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  br label %233

233:                                              ; preds = %224, %219
  %234 = phi i1 [ false, %219 ], [ %232, %224 ]
  br label %235

235:                                              ; preds = %233, %181
  %236 = phi i1 [ true, %181 ], [ %234, %233 ]
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  store i32 %241, i32* %246, align 8
  br label %247

247:                                              ; preds = %235, %162, %87
  ret void
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5WriteFlushLeaf(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @fts5BufferGrow(i64*, %struct.TYPE_19__*, i64) #1

declare dso_local i64 @sqlite3Fts5PutVarint(i32*, i32) #1

declare dso_local i32 @fts5PrefixCompress(i32, i32, i32*) #1

declare dso_local i32 @fts5WriteBtreeTerm(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @fts5BufferAppendVarint(i64*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @fts5BufferAppendBlob(i64*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @fts5BufferSet(i64*, %struct.TYPE_18__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
