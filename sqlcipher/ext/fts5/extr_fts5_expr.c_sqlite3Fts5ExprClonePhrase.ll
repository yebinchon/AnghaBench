; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ExprClonePhrase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ExprClonePhrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__**, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i8*, i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@FTS5_TERM = common dso_local global i32 0, align 4
@fts5ExprNodeNext_TERM = common dso_local global i32 0, align 4
@FTS5_STRING = common dso_local global i32 0, align 4
@fts5ExprNodeNext_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ExprClonePhrase(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_20__** %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %6, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %7, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %19 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %22, i64 %24
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 32)
  %28 = bitcast %struct.TYPE_17__* %27 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 8)
  %34 = bitcast %struct.TYPE_17__* %33 to %struct.TYPE_17__**
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  store %struct.TYPE_17__** %34, %struct.TYPE_17__*** %36, align 8
  br label %37

37:                                               ; preds = %32, %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 16)
  %43 = bitcast %struct.TYPE_17__* %42 to %struct.TYPE_18__*
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %45, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 32)
  %52 = bitcast %struct.TYPE_17__* %51 to %struct.TYPE_19__*
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %56, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  store %struct.TYPE_21__* %68, %struct.TYPE_21__** %11, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %61
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 4, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 %80)
  %82 = bitcast %struct.TYPE_17__* %81 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %13, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %84 = icmp ne %struct.TYPE_21__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @memcpy(%struct.TYPE_21__* %86, %struct.TYPE_21__* %87, i64 %89)
  br label %91

91:                                               ; preds = %85, %71
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %98, align 8
  br label %99

99:                                               ; preds = %91, %61
  br label %100

100:                                              ; preds = %99, %57
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %189, %105
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br label %116

116:                                              ; preds = %110, %106
  %117 = phi i1 [ false, %106 ], [ %115, %110 ]
  br i1 %117, label %118, label %192

118:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  store %struct.TYPE_16__* %124, %struct.TYPE_16__** %16, align 8
  br label %125

125:                                              ; preds = %146, %118
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %127 = icmp ne %struct.TYPE_16__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @SQLITE_OK, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %134, label %151

134:                                              ; preds = %132
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %17, align 8
  %138 = bitcast %struct.TYPE_15__* %10 to i8*
  %139 = load i32, i32* %15, align 4
  %140 = load i8*, i8** %17, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = trunc i64 %142 to i32
  %144 = call i32 @fts5ParseTokenize(i8* %138, i32 %139, i8* %140, i32 %143, i32 0, i32 0)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %134
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %16, align 8
  br label %125

151:                                              ; preds = %132
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %151
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  store i32 %163, i32* %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  store i64 %179, i64* %187, align 8
  br label %188

188:                                              ; preds = %155, %151
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %106

192:                                              ; preds = %116
  br label %196

193:                                              ; preds = %100
  %194 = call %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32* %7, i32 24)
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store %struct.TYPE_17__* %194, %struct.TYPE_17__** %195, align 8
  br label %196

196:                                              ; preds = %193, %192
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @SQLITE_OK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %284

200:                                              ; preds = %196
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %217, i64 0
  store %struct.TYPE_17__* %214, %struct.TYPE_17__** %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %227, i64 0
  store %struct.TYPE_17__* %220, %struct.TYPE_17__** %228, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  store %struct.TYPE_18__* %237, %struct.TYPE_18__** %240, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %272

245:                                              ; preds = %200
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %272

253:                                              ; preds = %245
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %253
  %262 = load i32, i32* @FTS5_TERM, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* @fts5ExprNodeNext_TERM, align 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  store i32 %267, i32* %271, align 8
  br label %283

272:                                              ; preds = %253, %245, %200
  %273 = load i32, i32* @FTS5_STRING, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load i32, i32* @fts5ExprNodeNext_STRING, align 4
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 8
  br label %283

283:                                              ; preds = %272, %261
  br label %290

284:                                              ; preds = %196
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %286 = call i32 @sqlite3Fts5ExprFree(%struct.TYPE_20__* %285)
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %287, align 8
  %289 = call i32 @fts5ExprPhraseFree(%struct.TYPE_17__* %288)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  br label %290

290:                                              ; preds = %284, %283
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %292 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* %291, %struct.TYPE_20__** %292, align 8
  %293 = load i32, i32* %7, align 4
  ret i32 %293
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_17__* @sqlite3Fts5MallocZero(i32*, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_21__*, i64) #2

declare dso_local i32 @fts5ParseTokenize(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sqlite3Fts5ExprFree(%struct.TYPE_20__*) #2

declare dso_local i32 @fts5ExprPhraseFree(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
