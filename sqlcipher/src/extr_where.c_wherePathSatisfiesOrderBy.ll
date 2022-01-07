; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_wherePathSatisfiesOrderBy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_wherePathSatisfiesOrderBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, %struct.TYPE_46__*, i32, %struct.TYPE_49__* }
%struct.TYPE_46__ = type { i32* }
%struct.TYPE_49__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_55__* }
%struct.TYPE_55__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_39__** }
%struct.TYPE_39__ = type { i32, i32, i64, i32, i32, %struct.TYPE_54__, %struct.TYPE_37__** }
%struct.TYPE_54__ = type { %struct.TYPE_53__, %struct.TYPE_45__ }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_52__*, %struct.TYPE_48__*, i64 }
%struct.TYPE_52__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { %struct.TYPE_43__* }
%struct.TYPE_48__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_44__ = type { i32 }

@SQLITE_OrderByIdxJoin = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WHERE_ORDERBY_LIMIT = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@WHERE_ONEROW = common dso_local global i32 0, align 4
@WHERE_IPK = common dso_local global i32 0, align 4
@XN_ROWID = common dso_local global i32 0, align 4
@WHERE_GROUPBY = common dso_local global i32 0, align 4
@WHERE_DISTINCTBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_40__*, %struct.TYPE_42__*, %struct.TYPE_38__*, i32, i32, %struct.TYPE_39__*, i32*)* @wherePathSatisfiesOrderBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wherePathSatisfiesOrderBy(%struct.TYPE_40__* %0, %struct.TYPE_42__* %1, %struct.TYPE_38__* %2, i32 %3, i32 %4, %struct.TYPE_39__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_39__*, align 8
  %32 = alloca %struct.TYPE_37__*, align 8
  %33 = alloca %struct.TYPE_43__*, align 8
  %34 = alloca %struct.TYPE_44__*, align 8
  %35 = alloca %struct.TYPE_41__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_43__*, align 8
  %44 = alloca %struct.TYPE_43__*, align 8
  %45 = alloca %struct.TYPE_43__*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %9, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_39__* %5, %struct.TYPE_39__** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %31, align 8
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_46__*, %struct.TYPE_46__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %36, align 8
  store i32 0, i32* %37, align 4
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %54 = icmp ne %struct.TYPE_42__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %7
  %60 = load i32*, i32** %36, align 8
  %61 = load i32, i32* @SQLITE_OrderByIdxJoin, align 4
  %62 = call i64 @OptimizationDisabled(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %881

65:                                               ; preds = %59, %7
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* @BMS, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* @BMS, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %881

80:                                               ; preds = %65
  store i32 1, i32* %19, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @MASKBIT(i32 %81)
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %84 = load i32, i32* @WO_EQ, align 4
  %85 = load i32, i32* @WO_IS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WO_ISNULL, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @WO_IN, align 4
  %95 = load i32, i32* %22, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %22, align 4
  br label %97

97:                                               ; preds = %93, %80
  store i32 0, i32* %26, align 4
  br label %98

98:                                               ; preds = %846, %97
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %37, align 4
  %103 = load i32, i32* %38, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp sle i32 %106, %107
  br label %109

109:                                              ; preds = %105, %101, %98
  %110 = phi i1 [ false, %101 ], [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %111, label %849

111:                                              ; preds = %109
  %112 = load i32, i32* %26, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %40, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %40, align 4
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %126, align 8
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %127, i64 %129
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %130, align 8
  store %struct.TYPE_39__* %131, %struct.TYPE_39__** %31, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %846

137:                                              ; preds = %124
  br label %140

138:                                              ; preds = %120
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  store %struct.TYPE_39__* %139, %struct.TYPE_39__** %31, align 8
  br label %140

140:                                              ; preds = %138, %137
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %38, align 4
  store i32 %155, i32* %37, align 4
  br label %156

156:                                              ; preds = %154, %147
  br label %849

157:                                              ; preds = %140
  %158 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %159 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_49__*, %struct.TYPE_49__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_47__*, %struct.TYPE_47__** %166, align 8
  %168 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %174

174:                                              ; preds = %310, %162
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %25, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %313

178:                                              ; preds = %174
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @MASKBIT(i32 %179)
  %181 = load i32, i32* %37, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %310

185:                                              ; preds = %178
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_55__*, %struct.TYPE_55__** %187, align 8
  %189 = load i32, i32* %27, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_43__*, %struct.TYPE_43__** %192, align 8
  %194 = call %struct.TYPE_43__* @sqlite3ExprSkipCollate(%struct.TYPE_43__* %193)
  store %struct.TYPE_43__* %194, %struct.TYPE_43__** %33, align 8
  %195 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %196 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @TK_COLUMN, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %185
  br label %310

201:                                              ; preds = %185
  %202 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %203 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %29, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %310

208:                                              ; preds = %201
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %209, i32 0, i32 2
  %211 = load i32, i32* %29, align 4
  %212 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %40, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %22, align 4
  %218 = call %struct.TYPE_37__* @sqlite3WhereFindTerm(i32* %210, i32 %211, i32 %214, i32 %216, i32 %217, i32 0)
  store %struct.TYPE_37__* %218, %struct.TYPE_37__** %32, align 8
  %219 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %220 = icmp eq %struct.TYPE_37__* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %310

222:                                              ; preds = %208
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @WO_IN, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %263

228:                                              ; preds = %222
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %231 = and i32 %229, %230
  %232 = call i32 @assert(i32 %231)
  store i32 0, i32* %28, align 4
  br label %233

233:                                              ; preds = %252, %228
  %234 = load i32, i32* %28, align 4
  %235 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %233
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %241 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %242 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %242, align 8
  %244 = load i32, i32* %28, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %243, i64 %245
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %246, align 8
  %248 = icmp ne %struct.TYPE_37__* %240, %247
  br label %249

249:                                              ; preds = %239, %233
  %250 = phi i1 [ false, %233 ], [ %248, %239 ]
  br i1 %250, label %251, label %255

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %28, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %28, align 4
  br label %233

255:                                              ; preds = %249
  %256 = load i32, i32* %28, align 4
  %257 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %258 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = icmp sge i32 %256, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %310

262:                                              ; preds = %255
  br label %263

263:                                              ; preds = %262, %222
  %264 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %265 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @WO_EQ, align 4
  %268 = load i32, i32* @WO_IS, align 4
  %269 = or i32 %267, %268
  %270 = and i32 %266, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %305

272:                                              ; preds = %263
  %273 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %274 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %272
  %278 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_46__*, %struct.TYPE_46__** %279, align 8
  %281 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_55__*, %struct.TYPE_55__** %282, align 8
  %284 = load i32, i32* %27, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_43__*, %struct.TYPE_43__** %287, align 8
  %289 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %290 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %290, align 8
  %292 = call i64 @sqlite3ExprCollSeqMatch(%struct.TYPE_46__* %280, %struct.TYPE_43__* %288, %struct.TYPE_43__* %291)
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %277
  br label %310

295:                                              ; preds = %277
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_43__*, %struct.TYPE_43__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @TK_IS, align 8
  %302 = icmp eq i64 %300, %301
  %303 = zext i1 %302 to i32
  %304 = call i32 @testcase(i32 %303)
  br label %305

305:                                              ; preds = %295, %272, %263
  %306 = load i32, i32* %27, align 4
  %307 = call i32 @MASKBIT(i32 %306)
  %308 = load i32, i32* %37, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %37, align 4
  br label %310

310:                                              ; preds = %305, %294, %261, %221, %207, %200, %184
  %311 = load i32, i32* %27, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %27, align 4
  br label %174

313:                                              ; preds = %174
  %314 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %315 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @WHERE_ONEROW, align 4
  %318 = and i32 %316, %317
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %789

320:                                              ; preds = %313
  %321 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %322 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @WHERE_IPK, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %35, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  br label %387

328:                                              ; preds = %320
  %329 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %330 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %331, i32 0, i32 2
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %332, align 8
  store %struct.TYPE_41__* %333, %struct.TYPE_41__** %35, align 8
  %334 = icmp eq %struct.TYPE_41__* %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %328
  %336 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %337 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335, %328
  store i32 0, i32* %8, align 4
  br label %881

341:                                              ; preds = %335
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %343 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %23, align 4
  %345 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %346 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %24, align 4
  %348 = load i32, i32* %24, align 4
  %349 = load i32, i32* %23, align 4
  %350 = add nsw i32 %349, 1
  %351 = icmp eq i32 %348, %350
  br i1 %351, label %359, label %352

352:                                              ; preds = %341
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 6
  %355 = load %struct.TYPE_48__*, %struct.TYPE_48__** %354, align 8
  %356 = call i32 @HasRowid(%struct.TYPE_48__* %355)
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  br label %359

359:                                              ; preds = %352, %341
  %360 = phi i1 [ true, %341 ], [ %358, %352 ]
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %364 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %24, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @XN_ROWID, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %380, label %373

373:                                              ; preds = %359
  %374 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %375 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %374, i32 0, i32 6
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %375, align 8
  %377 = call i32 @HasRowid(%struct.TYPE_48__* %376)
  %378 = icmp ne i32 %377, 0
  %379 = xor i1 %378, true
  br label %380

380:                                              ; preds = %373, %359
  %381 = phi i1 [ true, %359 ], [ %379, %373 ]
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %385 = call i32 @IsUniqueIndex(%struct.TYPE_41__* %384)
  store i32 %385, i32* %19, align 4
  br label %386

386:                                              ; preds = %380
  br label %387

387:                                              ; preds = %386, %327
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %28, align 4
  br label %388

388:                                              ; preds = %777, %387
  %389 = load i32, i32* %28, align 4
  %390 = load i32, i32* %24, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %780

392:                                              ; preds = %388
  store i32 1, i32* %41, align 4
  %393 = load i32, i32* %28, align 4
  %394 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %395 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = icmp sge i32 %393, %398
  br i1 %399, label %417, label %400

400:                                              ; preds = %392
  %401 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %402 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %401, i32 0, i32 6
  %403 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %402, align 8
  %404 = load i32, i32* %28, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %403, i64 %405
  %407 = load %struct.TYPE_37__*, %struct.TYPE_37__** %406, align 8
  %408 = icmp eq %struct.TYPE_37__* %407, null
  %409 = zext i1 %408 to i32
  %410 = load i32, i32* %28, align 4
  %411 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %412 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 4
  %414 = icmp slt i32 %410, %413
  %415 = zext i1 %414 to i32
  %416 = icmp eq i32 %409, %415
  br label %417

417:                                              ; preds = %400, %392
  %418 = phi i1 [ true, %392 ], [ %416, %400 ]
  %419 = zext i1 %418 to i32
  %420 = call i32 @assert(i32 %419)
  %421 = load i32, i32* %28, align 4
  %422 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %423 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = icmp slt i32 %421, %426
  br i1 %427, label %428, label %515

428:                                              ; preds = %417
  %429 = load i32, i32* %28, align 4
  %430 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %431 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 4
  %433 = icmp sge i32 %429, %432
  br i1 %433, label %434, label %515

434:                                              ; preds = %428
  %435 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %436 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %435, i32 0, i32 6
  %437 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %436, align 8
  %438 = load i32, i32* %28, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %437, i64 %439
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  store i32 %443, i32* %42, align 4
  %444 = load i32, i32* %42, align 4
  %445 = load i32, i32* %22, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %457

448:                                              ; preds = %434
  %449 = load i32, i32* %42, align 4
  %450 = load i32, i32* @WO_ISNULL, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %448
  %454 = load i32, i32* %19, align 4
  %455 = call i32 @testcase(i32 %454)
  store i32 0, i32* %19, align 4
  br label %456

456:                                              ; preds = %453, %448
  br label %777

457:                                              ; preds = %434
  %458 = load i32, i32* %42, align 4
  %459 = load i32, i32* @WO_IN, align 4
  %460 = and i32 %458, %459
  %461 = call i64 @ALWAYS(i32 %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %513

463:                                              ; preds = %457
  %464 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %465 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %464, i32 0, i32 6
  %466 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %465, align 8
  %467 = load i32, i32* %28, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %466, i64 %468
  %470 = load %struct.TYPE_37__*, %struct.TYPE_37__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_43__*, %struct.TYPE_43__** %471, align 8
  store %struct.TYPE_43__* %472, %struct.TYPE_43__** %43, align 8
  %473 = load i32, i32* %28, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %27, align 4
  br label %475

475:                                              ; preds = %509, %463
  %476 = load i32, i32* %27, align 4
  %477 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %478 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = icmp slt i32 %476, %481
  br i1 %482, label %483, label %512

483:                                              ; preds = %475
  %484 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %485 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %484, i32 0, i32 6
  %486 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %485, align 8
  %487 = load i32, i32* %27, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %486, i64 %488
  %490 = load %struct.TYPE_37__*, %struct.TYPE_37__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_43__*, %struct.TYPE_43__** %491, align 8
  %493 = load %struct.TYPE_43__*, %struct.TYPE_43__** %43, align 8
  %494 = icmp eq %struct.TYPE_43__* %492, %493
  br i1 %494, label %495, label %508

495:                                              ; preds = %483
  %496 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %497 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %496, i32 0, i32 6
  %498 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %497, align 8
  %499 = load i32, i32* %27, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %498, i64 %500
  %502 = load %struct.TYPE_37__*, %struct.TYPE_37__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @WO_IN, align 4
  %506 = and i32 %504, %505
  %507 = call i32 @assert(i32 %506)
  store i32 0, i32* %41, align 4
  br label %512

508:                                              ; preds = %483
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %27, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %27, align 4
  br label %475

512:                                              ; preds = %495, %475
  br label %513

513:                                              ; preds = %512, %457
  br label %514

514:                                              ; preds = %513
  br label %515

515:                                              ; preds = %514, %428, %417
  %516 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %517 = icmp ne %struct.TYPE_41__* %516, null
  br i1 %517, label %518, label %543

518:                                              ; preds = %515
  %519 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %520 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %519, i32 0, i32 2
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %28, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %30, align 4
  %526 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %527 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %526, i32 0, i32 3
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %28, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  store i32 %532, i32* %18, align 4
  %533 = load i32, i32* %30, align 4
  %534 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %535 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %534, i32 0, i32 6
  %536 = load %struct.TYPE_48__*, %struct.TYPE_48__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = icmp eq i32 %533, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %518
  %541 = load i32, i32* @XN_ROWID, align 4
  store i32 %541, i32* %30, align 4
  br label %542

542:                                              ; preds = %540, %518
  br label %545

543:                                              ; preds = %515
  %544 = load i32, i32* @XN_ROWID, align 4
  store i32 %544, i32* %30, align 4
  store i32 0, i32* %18, align 4
  br label %545

545:                                              ; preds = %543, %542
  %546 = load i32, i32* %19, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %572

548:                                              ; preds = %545
  %549 = load i32, i32* %30, align 4
  %550 = icmp sge i32 %549, 0
  br i1 %550, label %551, label %572

551:                                              ; preds = %548
  %552 = load i32, i32* %28, align 4
  %553 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %554 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %553, i32 0, i32 5
  %555 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = icmp sge i32 %552, %557
  br i1 %558, label %559, label %572

559:                                              ; preds = %551
  %560 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %561 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %560, i32 0, i32 6
  %562 = load %struct.TYPE_48__*, %struct.TYPE_48__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %562, i32 0, i32 1
  %564 = load %struct.TYPE_50__*, %struct.TYPE_50__** %563, align 8
  %565 = load i32, i32* %30, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %559
  store i32 0, i32* %19, align 4
  br label %572

572:                                              ; preds = %571, %559, %551, %548, %545
  store i32 0, i32* %21, align 4
  store i32 0, i32* %27, align 4
  br label %573

573:                                              ; preds = %696, %572
  %574 = load i32, i32* %41, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %580

576:                                              ; preds = %573
  %577 = load i32, i32* %27, align 4
  %578 = load i32, i32* %25, align 4
  %579 = icmp slt i32 %577, %578
  br label %580

580:                                              ; preds = %576, %573
  %581 = phi i1 [ false, %573 ], [ %579, %576 ]
  br i1 %581, label %582, label %699

582:                                              ; preds = %580
  %583 = load i32, i32* %27, align 4
  %584 = call i32 @MASKBIT(i32 %583)
  %585 = load i32, i32* %37, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %582
  br label %696

589:                                              ; preds = %582
  %590 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %591 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %590, i32 0, i32 1
  %592 = load %struct.TYPE_55__*, %struct.TYPE_55__** %591, align 8
  %593 = load i32, i32* %27, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %595, i32 0, i32 1
  %597 = load %struct.TYPE_43__*, %struct.TYPE_43__** %596, align 8
  %598 = call %struct.TYPE_43__* @sqlite3ExprSkipCollate(%struct.TYPE_43__* %597)
  store %struct.TYPE_43__* %598, %struct.TYPE_43__** %33, align 8
  %599 = load i32, i32* %12, align 4
  %600 = load i32, i32* @WHERE_GROUPBY, align 4
  %601 = and i32 %599, %600
  %602 = call i32 @testcase(i32 %601)
  %603 = load i32, i32* %12, align 4
  %604 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %605 = and i32 %603, %604
  %606 = call i32 @testcase(i32 %605)
  %607 = load i32, i32* %12, align 4
  %608 = load i32, i32* @WHERE_GROUPBY, align 4
  %609 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %610 = or i32 %608, %609
  %611 = and i32 %607, %610
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %589
  store i32 0, i32* %41, align 4
  br label %614

614:                                              ; preds = %613, %589
  %615 = load i32, i32* %30, align 4
  %616 = load i32, i32* @XN_ROWID, align 4
  %617 = icmp sge i32 %615, %616
  br i1 %617, label %618, label %640

618:                                              ; preds = %614
  %619 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %620 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @TK_COLUMN, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %625

624:                                              ; preds = %618
  br label %696

625:                                              ; preds = %618
  %626 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %627 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = load i32, i32* %29, align 4
  %630 = icmp ne i32 %628, %629
  br i1 %630, label %631, label %632

631:                                              ; preds = %625
  br label %696

632:                                              ; preds = %625
  %633 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %634 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %30, align 4
  %637 = icmp ne i32 %635, %636
  br i1 %637, label %638, label %639

638:                                              ; preds = %632
  br label %696

639:                                              ; preds = %632
  br label %658

640:                                              ; preds = %614
  %641 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %642 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %641, i32 0, i32 5
  %643 = load %struct.TYPE_52__*, %struct.TYPE_52__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %643, i32 0, i32 0
  %645 = load %struct.TYPE_51__*, %struct.TYPE_51__** %644, align 8
  %646 = load i32, i32* %28, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %648, i32 0, i32 0
  %650 = load %struct.TYPE_43__*, %struct.TYPE_43__** %649, align 8
  store %struct.TYPE_43__* %650, %struct.TYPE_43__** %44, align 8
  %651 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %652 = load %struct.TYPE_43__*, %struct.TYPE_43__** %44, align 8
  %653 = load i32, i32* %29, align 4
  %654 = call i64 @sqlite3ExprCompareSkip(%struct.TYPE_43__* %651, %struct.TYPE_43__* %652, i32 %653)
  %655 = icmp ne i64 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %640
  br label %696

657:                                              ; preds = %640
  br label %658

658:                                              ; preds = %657, %639
  %659 = load i32, i32* %30, align 4
  %660 = load i32, i32* @XN_ROWID, align 4
  %661 = icmp ne i32 %659, %660
  br i1 %661, label %662, label %689

662:                                              ; preds = %658
  %663 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %664 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %663, i32 0, i32 1
  %665 = load %struct.TYPE_46__*, %struct.TYPE_46__** %664, align 8
  %666 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %667 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %666, i32 0, i32 1
  %668 = load %struct.TYPE_55__*, %struct.TYPE_55__** %667, align 8
  %669 = load i32, i32* %27, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %668, i64 %670
  %672 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %671, i32 0, i32 1
  %673 = load %struct.TYPE_43__*, %struct.TYPE_43__** %672, align 8
  %674 = call %struct.TYPE_44__* @sqlite3ExprNNCollSeq(%struct.TYPE_46__* %665, %struct.TYPE_43__* %673)
  store %struct.TYPE_44__* %674, %struct.TYPE_44__** %34, align 8
  %675 = load %struct.TYPE_44__*, %struct.TYPE_44__** %34, align 8
  %676 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 4
  %678 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %679 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %678, i32 0, i32 4
  %680 = load i32*, i32** %679, align 8
  %681 = load i32, i32* %28, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %680, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = call i64 @sqlite3StrICmp(i32 %677, i32 %684)
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %662
  br label %696

688:                                              ; preds = %662
  br label %689

689:                                              ; preds = %688, %658
  %690 = load i32, i32* %28, align 4
  %691 = add nsw i32 %690, 1
  %692 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %693 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %692, i32 0, i32 5
  %694 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %694, i32 0, i32 0
  store i32 %691, i32* %695, align 8
  store i32 1, i32* %21, align 4
  br label %699

696:                                              ; preds = %687, %656, %638, %631, %624, %588
  %697 = load i32, i32* %27, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %27, align 4
  br label %573

699:                                              ; preds = %689, %580
  %700 = load i32, i32* %21, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %746

702:                                              ; preds = %699
  %703 = load i32, i32* %12, align 4
  %704 = load i32, i32* @WHERE_GROUPBY, align 4
  %705 = and i32 %703, %704
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %746

707:                                              ; preds = %702
  %708 = load i32, i32* %16, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %725

710:                                              ; preds = %707
  %711 = load i32, i32* %17, align 4
  %712 = load i32, i32* %18, align 4
  %713 = xor i32 %711, %712
  %714 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %715 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %714, i32 0, i32 1
  %716 = load %struct.TYPE_55__*, %struct.TYPE_55__** %715, align 8
  %717 = load i32, i32* %27, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %716, i64 %718
  %720 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 8
  %722 = icmp ne i32 %713, %721
  br i1 %722, label %723, label %724

723:                                              ; preds = %710
  store i32 0, i32* %21, align 4
  br label %724

724:                                              ; preds = %723, %710
  br label %745

725:                                              ; preds = %707
  %726 = load i32, i32* %18, align 4
  %727 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %728 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %727, i32 0, i32 1
  %729 = load %struct.TYPE_55__*, %struct.TYPE_55__** %728, align 8
  %730 = load i32, i32* %27, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %729, i64 %731
  %733 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = xor i32 %726, %734
  store i32 %735, i32* %17, align 4
  %736 = load i32, i32* %17, align 4
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %744

738:                                              ; preds = %725
  %739 = load i32, i32* %26, align 4
  %740 = call i32 @MASKBIT(i32 %739)
  %741 = load i32*, i32** %15, align 8
  %742 = load i32, i32* %741, align 4
  %743 = or i32 %742, %740
  store i32 %743, i32* %741, align 4
  br label %744

744:                                              ; preds = %738, %725
  store i32 1, i32* %16, align 4
  br label %745

745:                                              ; preds = %744, %724
  br label %746

746:                                              ; preds = %745, %702, %699
  %747 = load i32, i32* %21, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %763

749:                                              ; preds = %746
  %750 = load i32, i32* %30, align 4
  %751 = load i32, i32* @XN_ROWID, align 4
  %752 = icmp eq i32 %750, %751
  br i1 %752, label %753, label %758

753:                                              ; preds = %749
  %754 = load i32, i32* %20, align 4
  %755 = icmp eq i32 %754, 0
  %756 = zext i1 %755 to i32
  %757 = call i32 @testcase(i32 %756)
  store i32 1, i32* %20, align 4
  br label %758

758:                                              ; preds = %753, %749
  %759 = load i32, i32* %27, align 4
  %760 = call i32 @MASKBIT(i32 %759)
  %761 = load i32, i32* %37, align 4
  %762 = or i32 %761, %760
  store i32 %762, i32* %37, align 4
  br label %776

763:                                              ; preds = %746
  %764 = load i32, i32* %28, align 4
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %770, label %766

766:                                              ; preds = %763
  %767 = load i32, i32* %28, align 4
  %768 = load i32, i32* %23, align 4
  %769 = icmp slt i32 %767, %768
  br i1 %769, label %770, label %775

770:                                              ; preds = %766, %763
  %771 = load i32, i32* %19, align 4
  %772 = icmp ne i32 %771, 0
  %773 = zext i1 %772 to i32
  %774 = call i32 @testcase(i32 %773)
  store i32 0, i32* %19, align 4
  br label %775

775:                                              ; preds = %770, %766
  br label %780

776:                                              ; preds = %758
  br label %777

777:                                              ; preds = %776, %456
  %778 = load i32, i32* %28, align 4
  %779 = add nsw i32 %778, 1
  store i32 %779, i32* %28, align 4
  br label %388

780:                                              ; preds = %775, %388
  %781 = load i32, i32* %20, align 4
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %788

783:                                              ; preds = %780
  %784 = load i32, i32* %19, align 4
  %785 = icmp eq i32 %784, 0
  %786 = zext i1 %785 to i32
  %787 = call i32 @testcase(i32 %786)
  store i32 1, i32* %19, align 4
  br label %788

788:                                              ; preds = %783, %780
  br label %789

789:                                              ; preds = %788, %313
  %790 = load i32, i32* %19, align 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %845

792:                                              ; preds = %789
  %793 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %794 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 8
  %796 = load i32, i32* %39, align 4
  %797 = or i32 %796, %795
  store i32 %797, i32* %39, align 4
  store i32 0, i32* %27, align 4
  br label %798

798:                                              ; preds = %841, %792
  %799 = load i32, i32* %27, align 4
  %800 = load i32, i32* %25, align 4
  %801 = icmp slt i32 %799, %800
  br i1 %801, label %802, label %844

802:                                              ; preds = %798
  %803 = load i32, i32* %27, align 4
  %804 = call i32 @MASKBIT(i32 %803)
  %805 = load i32, i32* %37, align 4
  %806 = and i32 %804, %805
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %809

808:                                              ; preds = %802
  br label %841

809:                                              ; preds = %802
  %810 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %811 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %810, i32 0, i32 1
  %812 = load %struct.TYPE_55__*, %struct.TYPE_55__** %811, align 8
  %813 = load i32, i32* %27, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %812, i64 %814
  %816 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %815, i32 0, i32 1
  %817 = load %struct.TYPE_43__*, %struct.TYPE_43__** %816, align 8
  store %struct.TYPE_43__* %817, %struct.TYPE_43__** %45, align 8
  %818 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %819 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %818, i32 0, i32 0
  %820 = load %struct.TYPE_43__*, %struct.TYPE_43__** %45, align 8
  %821 = call i32 @sqlite3WhereExprUsage(i32* %819, %struct.TYPE_43__* %820)
  store i32 %821, i32* %46, align 4
  %822 = load i32, i32* %46, align 4
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %829

824:                                              ; preds = %809
  %825 = load %struct.TYPE_43__*, %struct.TYPE_43__** %45, align 8
  %826 = call i32 @sqlite3ExprIsConstant(%struct.TYPE_43__* %825)
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %829, label %828

828:                                              ; preds = %824
  br label %841

829:                                              ; preds = %824, %809
  %830 = load i32, i32* %46, align 4
  %831 = load i32, i32* %39, align 4
  %832 = xor i32 %831, -1
  %833 = and i32 %830, %832
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %840

835:                                              ; preds = %829
  %836 = load i32, i32* %27, align 4
  %837 = call i32 @MASKBIT(i32 %836)
  %838 = load i32, i32* %37, align 4
  %839 = or i32 %838, %837
  store i32 %839, i32* %37, align 4
  br label %840

840:                                              ; preds = %835, %829
  br label %841

841:                                              ; preds = %840, %828, %808
  %842 = load i32, i32* %27, align 4
  %843 = add nsw i32 %842, 1
  store i32 %843, i32* %27, align 4
  br label %798

844:                                              ; preds = %798
  br label %845

845:                                              ; preds = %844, %789
  br label %846

846:                                              ; preds = %845, %136
  %847 = load i32, i32* %26, align 4
  %848 = add nsw i32 %847, 1
  store i32 %848, i32* %26, align 4
  br label %98

849:                                              ; preds = %156, %109
  %850 = load i32, i32* %37, align 4
  %851 = load i32, i32* %38, align 4
  %852 = icmp eq i32 %850, %851
  br i1 %852, label %853, label %855

853:                                              ; preds = %849
  %854 = load i32, i32* %25, align 4
  store i32 %854, i32* %8, align 4
  br label %881

855:                                              ; preds = %849
  %856 = load i32, i32* %19, align 4
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %880, label %858

858:                                              ; preds = %855
  %859 = load i32, i32* %25, align 4
  %860 = sub nsw i32 %859, 1
  store i32 %860, i32* %27, align 4
  br label %861

861:                                              ; preds = %876, %858
  %862 = load i32, i32* %27, align 4
  %863 = icmp sgt i32 %862, 0
  br i1 %863, label %864, label %879

864:                                              ; preds = %861
  %865 = load i32, i32* %27, align 4
  %866 = call i32 @MASKBIT(i32 %865)
  %867 = sub nsw i32 %866, 1
  store i32 %867, i32* %47, align 4
  %868 = load i32, i32* %37, align 4
  %869 = load i32, i32* %47, align 4
  %870 = and i32 %868, %869
  %871 = load i32, i32* %47, align 4
  %872 = icmp eq i32 %870, %871
  br i1 %872, label %873, label %875

873:                                              ; preds = %864
  %874 = load i32, i32* %27, align 4
  store i32 %874, i32* %8, align 4
  br label %881

875:                                              ; preds = %864
  br label %876

876:                                              ; preds = %875
  %877 = load i32, i32* %27, align 4
  %878 = add nsw i32 %877, -1
  store i32 %878, i32* %27, align 4
  br label %861

879:                                              ; preds = %861
  store i32 0, i32* %8, align 4
  br label %881

880:                                              ; preds = %855
  store i32 -1, i32* %8, align 4
  br label %881

881:                                              ; preds = %880, %879, %873, %853, %340, %79, %64
  %882 = load i32, i32* %8, align 4
  ret i32 %882
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OptimizationDisabled(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local %struct.TYPE_43__* @sqlite3ExprSkipCollate(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_37__* @sqlite3WhereFindTerm(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprCollSeqMatch(%struct.TYPE_46__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @HasRowid(%struct.TYPE_48__*) #1

declare dso_local i32 @IsUniqueIndex(%struct.TYPE_41__*) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @sqlite3ExprCompareSkip(%struct.TYPE_43__*, %struct.TYPE_43__*, i32) #1

declare dso_local %struct.TYPE_44__* @sqlite3ExprNNCollSeq(%struct.TYPE_46__*, %struct.TYPE_43__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i32) #1

declare dso_local i32 @sqlite3WhereExprUsage(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3ExprIsConstant(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
