; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_upsert.c_sqlite3UpsertAnalyzeTarget.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_upsert.c_sqlite3UpsertAnalyzeTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64*, %struct.TYPE_29__*, i64*, %struct.TYPE_34__*, %struct.TYPE_24__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, i64, i32, %struct.TYPE_34__*, %struct.TYPE_27__, %struct.TYPE_33__*, i32* }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_31__ = type { %struct.TYPE_24__*, %struct.TYPE_34__*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }

@TK_COLUMN = common dso_local global i64 0, align 8
@XN_ROWID = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@TK_COLLATE = common dso_local global i64 0, align 8
@XN_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"ON CONFLICT clause does not match any PRIMARY KEY or UNIQUE constraint\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3UpsertAnalyzeTarget(i32* %0, %struct.TYPE_33__* %1, %struct.TYPE_31__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_34__, align 8
  %15 = alloca [2 x %struct.TYPE_34__], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_34__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %7, align 8
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %32 = icmp ne %struct.TYPE_32__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %36 = icmp ne %struct.TYPE_31__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = icmp ne %struct.TYPE_25__* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @memset(%struct.TYPE_34__* %14, i32 0, i32 56)
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 6
  store i32* %46, i32** %47, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 5
  store %struct.TYPE_33__* %48, %struct.TYPE_33__** %49, align 8
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = call i32 @sqlite3ResolveExprListNames(%struct.TYPE_34__* %14, %struct.TYPE_25__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %311

58:                                               ; preds = %3
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %60, align 8
  %62 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_34__* %14, %struct.TYPE_34__* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %311

67:                                               ; preds = %58
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %72, align 8
  store %struct.TYPE_32__* %73, %struct.TYPE_32__** %8, align 8
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %75, align 8
  store %struct.TYPE_25__* %76, %struct.TYPE_25__** %12, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %84 = call i64 @HasRowid(%struct.TYPE_32__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %67
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %96, align 8
  store %struct.TYPE_34__* %97, %struct.TYPE_34__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TK_COLUMN, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %91
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XN_ROWID, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = icmp eq %struct.TYPE_24__* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* @SQLITE_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %311

116:                                              ; preds = %102, %91, %86, %67
  %117 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %118 = call i32 @memset(%struct.TYPE_34__* %117, i32 0, i32 112)
  %119 = load i64, i64* @TK_COLLATE, align 8
  %120 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 16
  %122 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 1
  %123 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 3
  store %struct.TYPE_34__* %122, %struct.TYPE_34__** %124, align 8
  %125 = load i64, i64* @TK_COLUMN, align 8
  %126 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 1
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 1
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  store %struct.TYPE_24__* %138, %struct.TYPE_24__** %11, align 8
  br label %139

139:                                              ; preds = %303, %116
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %141 = icmp ne %struct.TYPE_24__* %140, null
  br i1 %141, label %142, label %307

142:                                              ; preds = %139
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %144 = call i32 @IsUniqueIndex(%struct.TYPE_24__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  br label %303

147:                                              ; preds = %142
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %303

156:                                              ; preds = %147
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %158, align 8
  %160 = icmp ne %struct.TYPE_34__* %159, null
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %163, align 8
  %165 = icmp eq %struct.TYPE_34__* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %303

167:                                              ; preds = %161
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %170, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @sqlite3ExprCompare(i32* %168, %struct.TYPE_34__* %171, %struct.TYPE_34__* %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %303

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %156
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %184

184:                                              ; preds = %290, %180
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %293

188:                                              ; preds = %184
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  store i8* %196, i8** %199, align 16
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @XN_EXPR, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %246

209:                                              ; preds = %188
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %211, align 8
  %213 = icmp ne %struct.TYPE_29__* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = icmp sgt i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  store %struct.TYPE_34__* %234, %struct.TYPE_34__** %19, align 8
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @TK_COLLATE, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %209
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %242 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 3
  store %struct.TYPE_34__* %241, %struct.TYPE_34__** %243, align 8
  %244 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  store %struct.TYPE_34__* %244, %struct.TYPE_34__** %19, align 8
  br label %245

245:                                              ; preds = %240, %209
  br label %260

246:                                              ; preds = %188
  %247 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 1
  %248 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 3
  store %struct.TYPE_34__* %247, %struct.TYPE_34__** %249, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %16, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 1
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 1
  store i64 %256, i64* %258, align 8
  %259 = getelementptr inbounds [2 x %struct.TYPE_34__], [2 x %struct.TYPE_34__]* %15, i64 0, i64 0
  store %struct.TYPE_34__* %259, %struct.TYPE_34__** %19, align 8
  br label %260

260:                                              ; preds = %246, %245
  store i32 0, i32* %17, align 4
  br label %261

261:                                              ; preds = %281, %260
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %18, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %284

265:                                              ; preds = %261
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %273, align 8
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @sqlite3ExprCompare(i32* %266, %struct.TYPE_34__* %274, %struct.TYPE_34__* %275, i32 %276)
  %278 = icmp slt i32 %277, 2
  br i1 %278, label %279, label %280

279:                                              ; preds = %265
  br label %284

280:                                              ; preds = %265
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %261

284:                                              ; preds = %279, %261
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %18, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %293

289:                                              ; preds = %284
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %16, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %16, align 4
  br label %184

293:                                              ; preds = %288, %184
  %294 = load i32, i32* %16, align 4
  %295 = load i32, i32* %18, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  br label %303

298:                                              ; preds = %293
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 0
  store %struct.TYPE_24__* %299, %struct.TYPE_24__** %301, align 8
  %302 = load i32, i32* @SQLITE_OK, align 4
  store i32 %302, i32* %4, align 4
  br label %311

303:                                              ; preds = %297, %178, %166, %155, %146
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  store %struct.TYPE_24__* %306, %struct.TYPE_24__** %11, align 8
  br label %139

307:                                              ; preds = %139
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 @sqlite3ErrorMsg(i32* %308, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %310 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %307, %298, %108, %65, %56
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @sqlite3ResolveExprListNames(%struct.TYPE_34__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_32__*) #1

declare dso_local i32 @IsUniqueIndex(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3ExprCompare(i32*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
