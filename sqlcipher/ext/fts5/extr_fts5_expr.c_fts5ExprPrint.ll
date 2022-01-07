; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPrint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@FTS5_STRING = common dso_local global i32 0, align 4
@FTS5_TERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NEAR(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c", %d)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" NOT \00", align 1
@FTS5_OR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" OR \00", align 1
@FTS5_EOF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%s%s%z%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, %struct.TYPE_10__*)* @fts5ExprPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fts5ExprPrint(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* null, i8** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %3, align 8
  br label %251

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTS5_STRING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FTS5_TERM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %161

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %36
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %251

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %251

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %65
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %142, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %145

84:                                               ; preds = %78
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load i8*, i8** %6, align 8
  %96 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i8* null, i8** %3, align 8
  br label %251

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %84
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %138, %101
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i8* @fts5ExprTermPrint(i32* %114)
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %124 = load i8*, i8** %12, align 8
  %125 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %123, i8* %124)
  store i8* %125, i8** %6, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @sqlite3_free(i8* %126)
  br label %128

128:                                              ; preds = %118, %108
  %129 = load i8*, i8** %12, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131, %128
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @sqlite3_free(i8* %135)
  store i8* null, i8** %3, align 8
  br label %251

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %102

141:                                              ; preds = %102
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %78

145:                                              ; preds = %78
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i8*, i8** %6, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  store i8* %155, i8** %6, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i8* null, i8** %3, align 8
  br label %251

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %145
  br label %248

161:                                              ; preds = %30
  store i8* null, i8** %13, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %167 [
    i32 129, label %165
    i32 128, label %166
  ]

165:                                              ; preds = %161
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %175

166:                                              ; preds = %161
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %175

167:                                              ; preds = %161
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FTS5_OR, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %175

175:                                              ; preds = %167, %166, %165
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %244, %175
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %247

182:                                              ; preds = %176
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %186, i64 %188
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = call i8* @fts5ExprPrint(%struct.TYPE_12__* %183, %struct.TYPE_10__* %190)
  store i8* %191, i8** %15, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @sqlite3_free(i8* %195)
  store i8* null, i8** %6, align 8
  br label %239

197:                                              ; preds = %182
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %200, i64 %202
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* @FTS5_STRING, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %197
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* @FTS5_TERM, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* @FTS5_EOF, align 4
  %217 = icmp ne i32 %215, %216
  br label %218

218:                                              ; preds = %214, %210, %197
  %219 = phi i1 [ false, %210 ], [ false, %197 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %17, align 4
  %221 = load i8*, i8** %6, align 8
  %222 = load i32, i32* %14, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %227

225:                                              ; preds = %218
  %226 = load i8*, i8** %13, align 8
  br label %227

227:                                              ; preds = %225, %224
  %228 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %224 ], [ %226, %225 ]
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %233 = load i8*, i8** %15, align 8
  %234 = load i32, i32* %17, align 4
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %238 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %228, i8* %232, i8* %233, i8* %237)
  store i8* %238, i8** %6, align 8
  br label %239

239:                                              ; preds = %227, %194
  %240 = load i8*, i8** %6, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  br label %247

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %176

247:                                              ; preds = %242, %176
  br label %248

248:                                              ; preds = %247, %160
  br label %249

249:                                              ; preds = %248
  %250 = load i8*, i8** %6, align 8
  store i8* %250, i8** %3, align 8
  br label %251

251:                                              ; preds = %249, %158, %134, %99, %75, %63, %22
  %252 = load i8*, i8** %3, align 8
  ret i8* %252
}

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i8* @fts5PrintfAppend(i8*, i8*, ...) #1

declare dso_local i8* @fts5ExprTermPrint(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
