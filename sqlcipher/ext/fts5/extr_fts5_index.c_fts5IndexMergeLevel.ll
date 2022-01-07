; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexMergeLevel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexMergeLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_52__ = type { i32, i64, %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i32, i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i32, i64, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_49__*, %struct.TYPE_54__* }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_48__, i32, i64 }
%struct.TYPE_48__ = type { i64, i32 }

@FTS5INDEX_QUERY_NOOUTPUT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_DETAIL_NONE = common dso_local global i32 0, align 4
@fts5MergeChunkCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_46__*, %struct.TYPE_52__**, i32, i32*)* @fts5IndexMergeLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5IndexMergeLevel(%struct.TYPE_46__* %0, %struct.TYPE_52__** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca %struct.TYPE_52__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_52__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca %struct.TYPE_51__*, align 8
  %12 = alloca %struct.TYPE_55__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_53__, align 8
  %16 = alloca %struct.TYPE_50__*, align 8
  %17 = alloca %struct.TYPE_53__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_54__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %5, align 8
  store %struct.TYPE_52__** %1, %struct.TYPE_52__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %29 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %6, align 8
  %30 = load %struct.TYPE_52__*, %struct.TYPE_52__** %29, align 8
  store %struct.TYPE_52__* %30, %struct.TYPE_52__** %9, align 8
  %31 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %33, i64 %35
  store %struct.TYPE_51__* %36, %struct.TYPE_51__** %10, align 8
  store %struct.TYPE_55__* null, %struct.TYPE_55__** %12, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_47__*, %struct.TYPE_47__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* @FTS5INDEX_QUERY_NOOUTPUT, align 4
  store i32 %50, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = call i32 @memset(%struct.TYPE_53__* %15, i32 0, i32 40)
  %68 = call i32 @memset(%struct.TYPE_53__* %17, i32 0, i32 40)
  %69 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %43
  %74 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_51__*, %struct.TYPE_51__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %76, i64 %79
  store %struct.TYPE_51__* %80, %struct.TYPE_51__** %11, align 8
  %81 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %91, align 8
  %93 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i64 %97
  store %struct.TYPE_50__* %98, %struct.TYPE_50__** %16, align 8
  %99 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %100 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @fts5WriteInit(%struct.TYPE_46__* %99, %struct.TYPE_53__* %15, i32 %102)
  %104 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 4
  store i64 0, i64* %110, align 8
  br label %181

111:                                              ; preds = %43
  %112 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %113 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %114 = call i32 @fts5AllocateSegid(%struct.TYPE_46__* %112, %struct.TYPE_52__* %113)
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = icmp eq i32 %115, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %6, align 8
  %125 = call i32 @fts5StructureAddLevel(i64* %123, %struct.TYPE_52__** %124)
  %126 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %6, align 8
  %127 = load %struct.TYPE_52__*, %struct.TYPE_52__** %126, align 8
  store %struct.TYPE_52__* %127, %struct.TYPE_52__** %9, align 8
  br label %128

128:                                              ; preds = %121, %111
  %129 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @fts5StructureExtendLevel(i64* %130, %struct.TYPE_52__* %131, i32 %133, i32 1, i32 0)
  %135 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %441

140:                                              ; preds = %128
  %141 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_51__*, %struct.TYPE_51__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %143, i64 %145
  store %struct.TYPE_51__* %146, %struct.TYPE_51__** %10, align 8
  %147 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_51__*, %struct.TYPE_51__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %149, i64 %152
  store %struct.TYPE_51__* %153, %struct.TYPE_51__** %11, align 8
  %154 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %155 = load i32, i32* %22, align 4
  %156 = call i32 @fts5WriteInit(%struct.TYPE_46__* %154, %struct.TYPE_53__* %15, i32 %155)
  %157 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_50__*, %struct.TYPE_50__** %158, align 8
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %159, i64 %163
  store %struct.TYPE_50__* %164, %struct.TYPE_50__** %16, align 8
  %165 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %140, %73
  %182 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 2
  %192 = icmp eq i32 %189, %191
  br label %193

193:                                              ; preds = %186, %181
  %194 = phi i1 [ false, %181 ], [ %192, %186 ]
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp sge i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %201 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @fts5MultiIterNew(%struct.TYPE_46__* %200, %struct.TYPE_52__* %201, i32 %202, i32 0, i32 0, i32 0, i32 %203, i32 %204, %struct.TYPE_55__** %12)
  br label %206

206:                                              ; preds = %330, %193
  %207 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %208 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %209 = call i64 @fts5MultiIterEof(%struct.TYPE_46__* %207, %struct.TYPE_55__* %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %334

211:                                              ; preds = %206
  %212 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_54__*, %struct.TYPE_54__** %213, align 8
  %215 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_49__*, %struct.TYPE_49__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %214, i64 %220
  store %struct.TYPE_54__* %221, %struct.TYPE_54__** %23, align 8
  %222 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %223 = call i32* @fts5MultiIterTerm(%struct.TYPE_55__* %222, i32* %25)
  store i32* %223, i32** %26, align 8
  %224 = load i32, i32* %25, align 4
  %225 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %17, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %235, label %228

228:                                              ; preds = %211
  %229 = load i32*, i32** %26, align 8
  %230 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %17, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %25, align 4
  %233 = call i64 @fts5Memcmp(i32* %229, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %228, %211
  %236 = load i32*, i32** %8, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %334

244:                                              ; preds = %238, %235
  %245 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %245, i32 0, i32 0
  %247 = load i32, i32* %25, align 4
  %248 = load i32*, i32** %26, align 8
  %249 = call i32 @fts5BufferSet(i64* %246, %struct.TYPE_53__* %17, i32 %247, i32* %248)
  store i32 0, i32* %21, align 4
  br label %250

250:                                              ; preds = %244, %228
  %251 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258, %255
  br label %330

264:                                              ; preds = %258, %250
  %265 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @SQLITE_OK, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %264
  %271 = load i32, i32* %21, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %275 = load i32, i32* %25, align 4
  %276 = load i32*, i32** %26, align 8
  %277 = call i32 @fts5WriteAppendTerm(%struct.TYPE_46__* %274, %struct.TYPE_53__* %15, i32 %275, i32* %276)
  store i32 1, i32* %21, align 4
  br label %278

278:                                              ; preds = %273, %270, %264
  %279 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %280 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %281 = call i32 @fts5MultiIterRowid(%struct.TYPE_55__* %280)
  %282 = call i32 @fts5WriteAppendRowid(%struct.TYPE_46__* %279, %struct.TYPE_53__* %15, i32 %281)
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* @FTS5_DETAIL_NONE, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %309

286:                                              ; preds = %278
  %287 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %288 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %308

291:                                              ; preds = %286
  %292 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %294, i32 0, i32 1
  %296 = call i32 @fts5BufferAppendVarint(i64* %293, i32* %295, i32 0)
  %297 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %298 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %291
  %302 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %304, i32 0, i32 1
  %306 = call i32 @fts5BufferAppendVarint(i64* %303, i32* %305, i32 0)
  br label %307

307:                                              ; preds = %301, %291
  br label %308

308:                                              ; preds = %307, %286
  br label %329

309:                                              ; preds = %278
  %310 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %311 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %312, 2
  %314 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %315 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %313, %316
  store i32 %317, i32* %24, align 4
  %318 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %320, i32 0, i32 1
  %322 = load i32, i32* %24, align 4
  %323 = call i32 @fts5BufferAppendVarint(i64* %319, i32* %321, i32 %322)
  %324 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %325 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %326 = bitcast %struct.TYPE_53__* %15 to i8*
  %327 = load i32, i32* @fts5MergeChunkCallback, align 4
  %328 = call i32 @fts5ChunkIterate(%struct.TYPE_46__* %324, %struct.TYPE_54__* %325, i8* %326, i32 %327)
  br label %329

329:                                              ; preds = %309, %308
  br label %330

330:                                              ; preds = %329, %263
  %331 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %332 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %333 = call i32 @fts5MultiIterNext(%struct.TYPE_46__* %331, %struct.TYPE_55__* %332, i32 0, i32 0)
  br label %206

334:                                              ; preds = %243, %206
  %335 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %336 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %336, i32 0, i32 1
  %338 = call i32 @fts5WriteFinish(%struct.TYPE_46__* %335, %struct.TYPE_53__* %15, i64* %337)
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %340 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %341 = call i64 @fts5MultiIterEof(%struct.TYPE_46__* %339, %struct.TYPE_55__* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %416

343:                                              ; preds = %334
  store i32 0, i32* %27, align 4
  br label %344

344:                                              ; preds = %359, %343
  %345 = load i32, i32* %27, align 4
  %346 = load i32, i32* %14, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %362

348:                                              ; preds = %344
  %349 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %350 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_50__*, %struct.TYPE_50__** %351, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @fts5DataRemoveSegment(%struct.TYPE_46__* %349, i32 %357)
  br label %359

359:                                              ; preds = %348
  %360 = load i32, i32* %27, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %27, align 4
  br label %344

362:                                              ; preds = %344
  %363 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %14, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %362
  %369 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %14, align 4
  %373 = sub nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 24
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %28, align 4
  %377 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %377, i32 0, i32 2
  %379 = load %struct.TYPE_50__*, %struct.TYPE_50__** %378, align 8
  %380 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_50__*, %struct.TYPE_50__** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %382, i64 %384
  %386 = load i32, i32* %28, align 4
  %387 = call i32 @memmove(%struct.TYPE_50__* %379, %struct.TYPE_50__* %385, i32 %386)
  br label %388

388:                                              ; preds = %368, %362
  %389 = load i32, i32* %14, align 4
  %390 = sext i32 %389 to i64
  %391 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = sub nsw i64 %393, %390
  store i64 %394, i64* %392, align 8
  %395 = load i32, i32* %14, align 4
  %396 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %397 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %398, %395
  store i32 %399, i32* %397, align 4
  %400 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %400, i32 0, i32 0
  store i32 0, i32* %401, align 8
  %402 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %403 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %388
  %407 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, -1
  store i32 %410, i32* %408, align 4
  %411 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %413, -1
  store i64 %414, i64* %412, align 8
  br label %415

415:                                              ; preds = %406, %388
  br label %429

416:                                              ; preds = %334
  %417 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp sgt i64 %419, 0
  %421 = zext i1 %420 to i32
  %422 = call i32 @assert(i32 %421)
  %423 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %424 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %425 = call i32 @fts5TrimSegments(%struct.TYPE_46__* %423, %struct.TYPE_55__* %424)
  %426 = load i32, i32* %14, align 4
  %427 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %416, %415
  %430 = load %struct.TYPE_55__*, %struct.TYPE_55__** %12, align 8
  %431 = call i32 @fts5MultiIterFree(%struct.TYPE_55__* %430)
  %432 = call i32 @fts5BufferFree(%struct.TYPE_53__* %17)
  %433 = load i32*, i32** %8, align 8
  %434 = icmp ne i32* %433, null
  br i1 %434, label %435, label %441

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %15, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %8, align 8
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 %439, %437
  store i32 %440, i32* %438, align 4
  br label %441

441:                                              ; preds = %139, %435, %429
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_53__*, i32, i32) #1

declare dso_local i32 @fts5WriteInit(%struct.TYPE_46__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @fts5AllocateSegid(%struct.TYPE_46__*, %struct.TYPE_52__*) #1

declare dso_local i32 @fts5StructureAddLevel(i64*, %struct.TYPE_52__**) #1

declare dso_local i32 @fts5StructureExtendLevel(i64*, %struct.TYPE_52__*, i32, i32, i32) #1

declare dso_local i32 @fts5MultiIterNew(%struct.TYPE_46__*, %struct.TYPE_52__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_55__**) #1

declare dso_local i64 @fts5MultiIterEof(%struct.TYPE_46__*, %struct.TYPE_55__*) #1

declare dso_local i32* @fts5MultiIterTerm(%struct.TYPE_55__*, i32*) #1

declare dso_local i64 @fts5Memcmp(i32*, i32, i32) #1

declare dso_local i32 @fts5BufferSet(i64*, %struct.TYPE_53__*, i32, i32*) #1

declare dso_local i32 @fts5WriteAppendTerm(%struct.TYPE_46__*, %struct.TYPE_53__*, i32, i32*) #1

declare dso_local i32 @fts5WriteAppendRowid(%struct.TYPE_46__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @fts5MultiIterRowid(%struct.TYPE_55__*) #1

declare dso_local i32 @fts5BufferAppendVarint(i64*, i32*, i32) #1

declare dso_local i32 @fts5ChunkIterate(%struct.TYPE_46__*, %struct.TYPE_54__*, i8*, i32) #1

declare dso_local i32 @fts5MultiIterNext(%struct.TYPE_46__*, %struct.TYPE_55__*, i32, i32) #1

declare dso_local i32 @fts5WriteFinish(%struct.TYPE_46__*, %struct.TYPE_53__*, i64*) #1

declare dso_local i32 @fts5DataRemoveSegment(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_50__*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @fts5TrimSegments(%struct.TYPE_46__*, %struct.TYPE_55__*) #1

declare dso_local i32 @fts5MultiIterFree(%struct.TYPE_55__*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_53__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
