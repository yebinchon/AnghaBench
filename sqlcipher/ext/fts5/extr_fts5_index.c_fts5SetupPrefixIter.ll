; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SetupPrefixIter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SetupPrefixIter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_58__ = type { i64, %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i64 }
%struct.TYPE_59__ = type { %struct.TYPE_57__, i32 (%struct.TYPE_59__*, %struct.TYPE_52__*)*, %struct.TYPE_55__*, %struct.TYPE_52__* }
%struct.TYPE_57__ = type { i64, i64 }
%struct.TYPE_55__ = type { i64 }
%struct.TYPE_52__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32, i32* }
%struct.TYPE_60__ = type { i64, i32 }
%struct.TYPE_53__ = type { i32, i32, i32* }

@FTS5_DETAIL_NONE = common dso_local global i64 0, align 8
@FTS5INDEX_QUERY_SCAN = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_SKIPEMPTY = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_NOOUTPUT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_DATA_ZERO_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_58__*, i32, i32*, i32, i32*, %struct.TYPE_59__**)* @fts5SetupPrefixIter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SetupPrefixIter(%struct.TYPE_58__* %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_59__** %5) #0 {
  %7 = alloca %struct.TYPE_58__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_59__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_60__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)*, align 8
  %17 = alloca void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_59__*, align 8
  %22 = alloca %struct.TYPE_53__*, align 8
  %23 = alloca %struct.TYPE_60__, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_52__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_58__* %0, %struct.TYPE_58__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_59__** %5, %struct.TYPE_59__*** %12, align 8
  store i32 32, i32* %15, align 4
  %28 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_54__*, %struct.TYPE_54__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)* @fts5MergeRowidLists, void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)** %16, align 8
  store void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)* @fts5AppendRowid, void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)** %17, align 8
  br label %37

36:                                               ; preds = %6
  store void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)* @fts5MergePrefixLists, void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)** %16, align 8
  store void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)* @fts5AppendPoslist, void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)** %17, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %39 = call %struct.TYPE_53__* @fts5IdxMalloc(%struct.TYPE_58__* %38, i32 512)
  %40 = bitcast %struct.TYPE_53__* %39 to %struct.TYPE_60__*
  store %struct.TYPE_60__* %40, %struct.TYPE_60__** %14, align 8
  %41 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %42 = call i32* @fts5StructureRead(%struct.TYPE_58__* %41)
  store i32* %42, i32** %13, align 8
  %43 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %44 = icmp ne %struct.TYPE_60__* %43, null
  br i1 %44, label %45, label %278

45:                                               ; preds = %37
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %278

48:                                               ; preds = %45
  %49 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  %50 = load i32, i32* @FTS5INDEX_QUERY_SKIPEMPTY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FTS5INDEX_QUERY_NOOUTPUT, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %18, align 4
  store i64 0, i64* %20, align 8
  store %struct.TYPE_59__* null, %struct.TYPE_59__** %21, align 8
  store i32 1, i32* %24, align 4
  %54 = call i32 @memset(%struct.TYPE_60__* %23, i32 0, i32 16)
  %55 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @fts5MultiIterNew(%struct.TYPE_58__* %55, i32* %56, i32 %57, i32* %58, i32* %59, i32 %60, i32 -1, i32 0, %struct.TYPE_59__** %21)
  %62 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %65 = call i32 @fts5IterSetOutputCb(i64* %63, %struct.TYPE_59__* %64)
  br label %66

66:                                               ; preds = %200, %48
  %67 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %68 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %69 = call i64 @fts5MultiIterEof(%struct.TYPE_58__* %67, %struct.TYPE_59__* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %204

71:                                               ; preds = %66
  %72 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_52__*, %struct.TYPE_52__** %73, align 8
  %75 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_55__*, %struct.TYPE_55__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %74, i64 %80
  store %struct.TYPE_52__* %81, %struct.TYPE_52__** %25, align 8
  %82 = load %struct.TYPE_52__*, %struct.TYPE_52__** %25, align 8
  %83 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %26, align 4
  %86 = load %struct.TYPE_52__*, %struct.TYPE_52__** %25, align 8
  %87 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %27, align 8
  %90 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_59__*, %struct.TYPE_52__*)*, i32 (%struct.TYPE_59__*, %struct.TYPE_52__*)** %91, align 8
  %93 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %94 = load %struct.TYPE_52__*, %struct.TYPE_52__** %25, align 8
  %95 = call i32 %92(%struct.TYPE_59__* %93, %struct.TYPE_52__* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %27, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %26, align 4
  %100 = call i32 @MIN(i32 %98, i32 %99)
  %101 = call i64 @memcmp(i32* %96, i32* %97, i32 %100)
  %102 = icmp sle i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert_nc(i32 %103)
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %71
  %108 = load i32, i32* %26, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %27, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @memcmp(i32* %112, i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %107
  br label %204

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %71
  %120 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %200

126:                                              ; preds = %119
  %127 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %20, align 8
  %132 = icmp sle i64 %130, %131
  br i1 %132, label %133, label %186

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %186

137:                                              ; preds = %133
  store i32 0, i32* %19, align 4
  br label %138

138:                                              ; preds = %182, %137
  %139 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SQLITE_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %144, %138
  %149 = phi i1 [ false, %138 ], [ %147, %144 ]
  br i1 %149, label %150, label %185

150:                                              ; preds = %148
  %151 = load i32, i32* %19, align 4
  %152 = icmp slt i32 %151, 32
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %150
  %163 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %163, i64 %165
  %167 = call i32 @fts5BufferSwap(%struct.TYPE_60__* %23, %struct.TYPE_60__* %166)
  %168 = call i32 @fts5BufferZero(%struct.TYPE_60__* %23)
  br label %181

169:                                              ; preds = %150
  %170 = load void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)*, void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)** %16, align 8
  %171 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %172 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %172, i64 %174
  call void %170(%struct.TYPE_58__* %171, %struct.TYPE_60__* %23, %struct.TYPE_60__* %175)
  %176 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %176, i64 %178
  %180 = call i32 @fts5BufferZero(%struct.TYPE_60__* %179)
  br label %181

181:                                              ; preds = %169, %162
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %19, align 4
  br label %138

185:                                              ; preds = %148
  store i64 0, i64* %20, align 8
  br label %186

186:                                              ; preds = %185, %133, %126
  %187 = load void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)*, void (%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*)** %17, align 8
  %188 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %189 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = sub nsw i64 %192, %193
  %195 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  call void %187(%struct.TYPE_58__* %188, i64 %194, %struct.TYPE_59__* %195, %struct.TYPE_60__* %23)
  %196 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %20, align 8
  br label %200

200:                                              ; preds = %186, %125
  %201 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %202 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %203 = call i32 @fts5MultiIterNext2(%struct.TYPE_58__* %201, %struct.TYPE_59__* %202, i32* %24)
  br label %66

204:                                              ; preds = %117, %66
  store i32 0, i32* %19, align 4
  br label %205

205:                                              ; preds = %227, %204
  %206 = load i32, i32* %19, align 4
  %207 = icmp slt i32 %206, 32
  br i1 %207, label %208, label %230

208:                                              ; preds = %205
  %209 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SQLITE_OK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)*, void (%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*)** %16, align 8
  %216 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %217 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %217, i64 %219
  call void %215(%struct.TYPE_58__* %216, %struct.TYPE_60__* %23, %struct.TYPE_60__* %220)
  br label %221

221:                                              ; preds = %214, %208
  %222 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %222, i64 %224
  %226 = call i32 @fts5BufferFree(%struct.TYPE_60__* %225)
  br label %227

227:                                              ; preds = %221
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %205

230:                                              ; preds = %205
  %231 = load %struct.TYPE_59__*, %struct.TYPE_59__** %21, align 8
  %232 = call i32 @fts5MultiIterFree(%struct.TYPE_59__* %231)
  %233 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 16, %235
  %237 = load i32, i32* @FTS5_DATA_ZERO_PADDING, align 4
  %238 = sext i32 %237 to i64
  %239 = add i64 %236, %238
  %240 = trunc i64 %239 to i32
  %241 = call %struct.TYPE_53__* @fts5IdxMalloc(%struct.TYPE_58__* %233, i32 %240)
  store %struct.TYPE_53__* %241, %struct.TYPE_53__** %22, align 8
  %242 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %243 = icmp ne %struct.TYPE_53__* %242, null
  br i1 %243, label %244, label %276

244:                                              ; preds = %230
  %245 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %245, i64 1
  %247 = bitcast %struct.TYPE_53__* %246 to i32*
  %248 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %249 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %248, i32 0, i32 2
  store i32* %247, i32** %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %256 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %255, i32 0, i32 0
  store i32 %252, i32* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %244
  %261 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %262 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %23, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @memcpy(i32* %263, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %260, %244
  %271 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %272 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load %struct.TYPE_59__**, %struct.TYPE_59__*** %12, align 8
  %275 = call i32 @fts5MultiIterNew2(%struct.TYPE_58__* %271, %struct.TYPE_53__* %272, i32 %273, %struct.TYPE_59__** %274)
  br label %276

276:                                              ; preds = %270, %230
  %277 = call i32 @fts5BufferFree(%struct.TYPE_60__* %23)
  br label %278

278:                                              ; preds = %276, %45, %37
  %279 = load i32*, i32** %13, align 8
  %280 = call i32 @fts5StructureRelease(i32* %279)
  %281 = load %struct.TYPE_60__*, %struct.TYPE_60__** %14, align 8
  %282 = call i32 @sqlite3_free(%struct.TYPE_60__* %281)
  ret void
}

declare dso_local void @fts5MergeRowidLists(%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*) #1

declare dso_local void @fts5AppendRowid(%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*) #1

declare dso_local void @fts5MergePrefixLists(%struct.TYPE_58__*, %struct.TYPE_60__*, %struct.TYPE_60__*) #1

declare dso_local void @fts5AppendPoslist(%struct.TYPE_58__*, i64, %struct.TYPE_59__*, %struct.TYPE_60__*) #1

declare dso_local %struct.TYPE_53__* @fts5IdxMalloc(%struct.TYPE_58__*, i32) #1

declare dso_local i32* @fts5StructureRead(%struct.TYPE_58__*) #1

declare dso_local i32 @memset(%struct.TYPE_60__*, i32, i32) #1

declare dso_local i32 @fts5MultiIterNew(%struct.TYPE_58__*, i32*, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_59__**) #1

declare dso_local i32 @fts5IterSetOutputCb(i64*, %struct.TYPE_59__*) #1

declare dso_local i64 @fts5MultiIterEof(%struct.TYPE_58__*, %struct.TYPE_59__*) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5BufferSwap(%struct.TYPE_60__*, %struct.TYPE_60__*) #1

declare dso_local i32 @fts5BufferZero(%struct.TYPE_60__*) #1

declare dso_local i32 @fts5MultiIterNext2(%struct.TYPE_58__*, %struct.TYPE_59__*, i32*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_60__*) #1

declare dso_local i32 @fts5MultiIterFree(%struct.TYPE_59__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @fts5MultiIterNew2(%struct.TYPE_58__*, %struct.TYPE_53__*, i32, %struct.TYPE_59__**) #1

declare dso_local i32 @fts5StructureRelease(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_60__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
