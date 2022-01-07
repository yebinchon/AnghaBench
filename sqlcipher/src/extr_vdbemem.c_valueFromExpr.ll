; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_valueFromExpr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_valueFromExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i8*, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { double, i32 }
%struct.ValueNewStat4Ctx = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@TK_UPLUS = common dso_local global i32 0, align 4
@TK_SPAN = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@TK_CAST = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@TK_UMINUS = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@TK_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TK_STRING = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_AFF_NUMERIC = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_BLOB = common dso_local global i32 0, align 4
@TK_TRUEFALSE = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_25__*, i32, i32, %struct.TYPE_24__**, %struct.ValueNewStat4Ctx*)* @valueFromExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valueFromExpr(i32* %0, %struct.TYPE_25__* %1, i32 %2, i32 %3, %struct.TYPE_24__** %4, %struct.ValueNewStat4Ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__**, align 8
  %13 = alloca %struct.ValueNewStat4Ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_24__** %4, %struct.TYPE_24__*** %12, align 8
  store %struct.ValueNewStat4Ctx* %5, %struct.ValueNewStat4Ctx** %13, align 8
  store i8* null, i8** %15, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = icmp ne %struct.TYPE_25__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %39, %6
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @TK_UPLUS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @TK_SPAN, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ true, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  store %struct.TYPE_25__* %42, %struct.TYPE_25__** %9, align 8
  br label %27

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @TK_REGISTER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @NEVER(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EP_TokenOnly, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %63 = icmp eq %struct.ValueNewStat4Ctx* %62, null
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i1 [ true, %54 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @TK_CAST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %64
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sqlite3AffinityType(i8* %75, i32 0)
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %84 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %85 = call i32 @valueFromExpr(i32* %77, %struct.TYPE_25__* %80, i32 %81, i32 %82, %struct.TYPE_24__** %83, %struct.ValueNewStat4Ctx* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @testcase(i32 %89)
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = icmp ne %struct.TYPE_24__* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %71
  %95 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @SQLITE_UTF8, align 4
  %99 = call i32 @sqlite3VdbeMemCast(%struct.TYPE_24__* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SQLITE_UTF8, align 4
  %104 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %71
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %7, align 4
  br label %437

107:                                              ; preds = %64
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @TK_UMINUS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TK_INTEGER, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TK_FLOAT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119, %111
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %9, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %134

134:                                              ; preds = %127, %119, %107
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @TK_STRING, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @TK_FLOAT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @TK_INTEGER, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %232

146:                                              ; preds = %142, %138, %134
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %149 = call %struct.TYPE_24__* @valueNew(i32* %147, %struct.ValueNewStat4Ctx* %148)
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %16, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %151 = icmp eq %struct.TYPE_24__* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %419

153:                                              ; preds = %146
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %155 = load i32, i32* @EP_IntValue, align 4
  %156 = call i64 @ExprHasProperty(%struct.TYPE_25__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* %17, align 4
  %166 = mul nsw i32 %164, %165
  %167 = call i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_24__* %159, i32 %166)
  br label %185

168:                                              ; preds = %153
  %169 = load i32*, i32** %8, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @sqlite3MPrintf(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %170, i8* %174)
  store i8* %175, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %419

179:                                              ; preds = %168
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* @SQLITE_UTF8, align 4
  %183 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %184 = call i32 @sqlite3ValueSetStr(%struct.TYPE_24__* %180, i32 -1, i8* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %158
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @TK_INTEGER, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @TK_FLOAT, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %199 = load i32, i32* @SQLITE_AFF_NUMERIC, align 4
  %200 = load i32, i32* @SQLITE_UTF8, align 4
  %201 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %198, i32 %199, i32 %200)
  br label %207

202:                                              ; preds = %193, %189
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @SQLITE_UTF8, align 4
  %206 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MEM_Int, align 4
  %212 = load i32, i32* @MEM_Real, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load i32, i32* @MEM_Str, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %216, %207
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @SQLITE_UTF8, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_24__* %228, i32 %229)
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %227, %223
  br label %415

232:                                              ; preds = %142
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @TK_UMINUS, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %301

236:                                              ; preds = %232
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %245 = call i32 @valueFromExpr(i32* %238, %struct.TYPE_25__* %241, i32 %242, i32 %243, %struct.TYPE_24__** %16, %struct.ValueNewStat4Ctx* %244)
  %246 = icmp eq i32 %237, %245
  br i1 %246, label %247, label %300

247:                                              ; preds = %236
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %249 = icmp ne %struct.TYPE_24__* %248, null
  br i1 %249, label %250, label %300

250:                                              ; preds = %247
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %252 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__* %251)
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @MEM_Real, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %250
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load double, double* %262, align 8
  %264 = fneg double %263
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  store double %264, double* %267, align 8
  br label %295

268:                                              ; preds = %250
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SMALLEST_INT64, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %268
  %276 = load i32, i32* @SMALLEST_INT64, align 4
  %277 = sitofp i32 %276 to double
  %278 = fneg double %277
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  store double %278, double* %281, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %283 = load i32, i32* @MEM_Real, align 4
  %284 = call i32 @MemSetTypeFlag(%struct.TYPE_24__* %282, i32 %283)
  br label %294

285:                                              ; preds = %268
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 0, %289
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  store i32 %290, i32* %293, align 8
  br label %294

294:                                              ; preds = %285, %275
  br label %295

295:                                              ; preds = %294, %259
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %296, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %295, %247, %236
  br label %414

301:                                              ; preds = %232
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* @TK_NULL, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load i32*, i32** %8, align 8
  %307 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %308 = call %struct.TYPE_24__* @valueNew(i32* %306, %struct.ValueNewStat4Ctx* %307)
  store %struct.TYPE_24__* %308, %struct.TYPE_24__** %16, align 8
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %310 = icmp eq %struct.TYPE_24__* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %419

312:                                              ; preds = %305
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %314 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__* %313)
  br label %413

315:                                              ; preds = %301
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* @TK_BLOB, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %384

319:                                              ; preds = %315
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 0
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 120
  br i1 %327, label %337, label %328

328:                                              ; preds = %319
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 0
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 88
  br label %337

337:                                              ; preds = %328, %319
  %338 = phi i1 [ true, %319 ], [ %336, %328 ]
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 1
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 39
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  %351 = load i32*, i32** %8, align 8
  %352 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %353 = call %struct.TYPE_24__* @valueNew(i32* %351, %struct.ValueNewStat4Ctx* %352)
  store %struct.TYPE_24__* %353, %struct.TYPE_24__** %16, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %355 = icmp ne %struct.TYPE_24__* %354, null
  br i1 %355, label %357, label %356

356:                                              ; preds = %337
  br label %419

357:                                              ; preds = %337
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 2
  store i8* %362, i8** %15, align 8
  %363 = load i8*, i8** %15, align 8
  %364 = call i32 @sqlite3Strlen30(i8* %363)
  %365 = sub nsw i32 %364, 1
  store i32 %365, i32* %21, align 4
  %366 = load i8*, i8** %15, align 8
  %367 = load i32, i32* %21, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 39
  %373 = zext i1 %372 to i32
  %374 = call i32 @assert(i32 %373)
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %376 = load i32*, i32** %8, align 8
  %377 = load i8*, i8** %15, align 8
  %378 = load i32, i32* %21, align 4
  %379 = call i32 @sqlite3HexToBlob(i32* %376, i8* %377, i32 %378)
  %380 = load i32, i32* %21, align 4
  %381 = sdiv i32 %380, 2
  %382 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %383 = call i32 @sqlite3VdbeMemSetStr(%struct.TYPE_24__* %375, i32 %379, i32 %381, i32 0, i32 %382)
  br label %412

384:                                              ; preds = %315
  %385 = load i32, i32* %14, align 4
  %386 = load i32, i32* @TK_TRUEFALSE, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %411

388:                                              ; preds = %384
  %389 = load i32*, i32** %8, align 8
  %390 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %391 = call %struct.TYPE_24__* @valueNew(i32* %389, %struct.ValueNewStat4Ctx* %390)
  store %struct.TYPE_24__* %391, %struct.TYPE_24__** %16, align 8
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %393 = icmp ne %struct.TYPE_24__* %392, null
  br i1 %393, label %394, label %410

394:                                              ; preds = %388
  %395 = load i32, i32* @MEM_Int, align 4
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 0
  store i32 %395, i32* %397, align 8
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 4
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 0
  %406 = zext i1 %405 to i32
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 1
  store i32 %406, i32* %409, align 8
  br label %410

410:                                              ; preds = %394, %388
  br label %411

411:                                              ; preds = %410, %384
  br label %412

412:                                              ; preds = %411, %357
  br label %413

413:                                              ; preds = %412, %312
  br label %414

414:                                              ; preds = %413, %300
  br label %415

415:                                              ; preds = %414, %231
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %417 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  store %struct.TYPE_24__* %416, %struct.TYPE_24__** %417, align 8
  %418 = load i32, i32* %19, align 4
  store i32 %418, i32* %7, align 4
  br label %437

419:                                              ; preds = %356, %311, %178, %152
  %420 = load i32*, i32** %8, align 8
  %421 = call i32 @sqlite3OomFault(i32* %420)
  %422 = load i32*, i32** %8, align 8
  %423 = load i8*, i8** %15, align 8
  %424 = call i32 @sqlite3DbFree(i32* %422, i8* %423)
  %425 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %425, align 8
  %427 = icmp eq %struct.TYPE_24__* %426, null
  %428 = zext i1 %427 to i32
  %429 = call i32 @assert(i32 %428)
  %430 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %431 = icmp eq %struct.ValueNewStat4Ctx* %430, null
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %435 = call i32 @sqlite3ValueFree(%struct.TYPE_24__* %434)
  %436 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %436, i32* %7, align 4
  br label %437

437:                                              ; preds = %419, %415, %105
  %438 = load i32, i32* %7, align 4
  ret i32 %438
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3AffinityType(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeMemCast(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @valueNew(i32*, %struct.ValueNewStat4Ctx*) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3ValueSetStr(%struct.TYPE_24__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__*) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3VdbeMemSetStr(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3HexToBlob(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3OomFault(i32*) #1

declare dso_local i32 @sqlite3DbFree(i32*, i8*) #1

declare dso_local i32 @sqlite3ValueFree(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
