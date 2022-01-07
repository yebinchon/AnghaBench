; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPrintTcl.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPrintTcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_9__**, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i32*, i32 }

@FTS5_STRING = common dso_local global i32 0, align 4
@FTS5_TERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-col %d \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-col {%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-near %d \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@FTS5_OR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" [%z]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, %struct.TYPE_10__*)* @fts5ExprPrintTcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fts5ExprPrintTcl(i32* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i8* null, i8** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FTS5_STRING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTS5_TERM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %193

30:                                               ; preds = %24, %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i8* null, i8** %4, align 8
  br label %248

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %97

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %12, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %8, align 8
  br label %92

64:                                               ; preds = %45
  %65 = load i8*, i8** %8, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i8* %69, i8** %8, align 8
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %86, %64
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load i8*, i8** %8, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i8*, i8** %8, align 8
  %91 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %89, %58
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8* null, i8** %4, align 8
  br label %248

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %40
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  store i8* %107, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i8* null, i8** %4, align 8
  br label %248

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i8*, i8** %8, align 8
  %114 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i8* null, i8** %4, align 8
  br label %248

118:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %189, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %192

125:                                              ; preds = %119
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %128, i64 %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %14, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %134, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %175, %125
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br label %144

144:                                              ; preds = %138, %135
  %145 = phi i1 [ false, %135 ], [ %143, %138 ]
  br i1 %145, label %146, label %178

146:                                              ; preds = %144
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %15, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %160 = load i8*, i8** %15, align 8
  %161 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %159, i8* %160)
  store i8* %161, i8** %8, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %146
  %172 = load i8*, i8** %8, align 8
  %173 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i8* %173, i8** %8, align 8
  br label %174

174:                                              ; preds = %171, %146
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %135

178:                                              ; preds = %144
  %179 = load i8*, i8** %8, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8*, i8** %8, align 8
  %183 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i8* %183, i8** %8, align 8
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i8*, i8** %8, align 8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i8* null, i8** %4, align 8
  br label %248

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %119

192:                                              ; preds = %119
  br label %246

193:                                              ; preds = %24
  store i8* null, i8** %16, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %199 [
    i32 129, label %197
    i32 128, label %198
  ]

197:                                              ; preds = %193
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %207

198:                                              ; preds = %193
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8
  br label %207

199:                                              ; preds = %193
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @FTS5_OR, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  br label %207

207:                                              ; preds = %199, %198, %197
  %208 = load i8*, i8** %16, align 8
  %209 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %208)
  store i8* %209, i8** %8, align 8
  store i32 0, i32* %17, align 4
  br label %210

210:                                              ; preds = %242, %207
  %211 = load i8*, i8** %8, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %214, %217
  br label %219

219:                                              ; preds = %213, %210
  %220 = phi i1 [ false, %210 ], [ %218, %213 ]
  br i1 %220, label %221, label %245

221:                                              ; preds = %219
  %222 = load i32*, i32** %5, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %225, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %226, i64 %228
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = call i8* @fts5ExprPrintTcl(i32* %222, i8* %223, %struct.TYPE_10__* %230)
  store i8* %231, i8** %18, align 8
  %232 = load i8*, i8** %18, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %221
  %235 = load i8*, i8** %8, align 8
  %236 = call i32 @sqlite3_free(i8* %235)
  store i8* null, i8** %8, align 8
  br label %241

237:                                              ; preds = %221
  %238 = load i8*, i8** %8, align 8
  %239 = load i8*, i8** %18, align 8
  %240 = call i8* (i8*, i8*, ...) @fts5PrintfAppend(i8* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %239)
  store i8* %240, i8** %8, align 8
  br label %241

241:                                              ; preds = %237, %234
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %17, align 4
  br label %210

245:                                              ; preds = %219
  br label %246

246:                                              ; preds = %245, %192
  %247 = load i8*, i8** %8, align 8
  store i8* %247, i8** %4, align 8
  br label %248

248:                                              ; preds = %246, %187, %117, %110, %95, %39
  %249 = load i8*, i8** %4, align 8
  ret i8* %249
}

declare dso_local i8* @fts5PrintfAppend(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
