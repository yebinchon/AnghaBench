; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CodeSubselect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CodeSubselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32* }
%struct.TYPE_32__ = type { i64, i32, %struct.TYPE_28__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_24__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_32__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }

@TK_EXISTS = common dso_local global i64 0, align 8
@TK_SELECT = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_VarSelect = common dso_local global i32 0, align 4
@EP_Subrtn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"REUSE SUBQUERY %d\00", align 1
@OP_Gosub = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"return address\00", align 1
@OP_Once = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%sSCALAR SUBQUERY %d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CORRELATED \00", align 1
@SRT_Mem = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Init subquery result\00", align 1
@SRT_Exists = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Init EXISTS result\00", align 1
@TK_INTEGER = common dso_local global i32 0, align 4
@sqlite3IntTokens = common dso_local global i32* null, align 8
@TK_LIMIT = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3CodeSubselect(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TK_EXISTS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @testcase(i32 %25)
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TK_SELECT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @testcase(i32 %32)
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TK_EXISTS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TK_SELECT, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %2
  %46 = phi i1 [ true, %2 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %50 = load i32, i32* @EP_xIsSelect, align 4
  %51 = call i32 @ExprHasProperty(%struct.TYPE_32__* %49, i32 %50)
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %55, align 8
  store %struct.TYPE_30__* %56, %struct.TYPE_30__** %8, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %58 = load i32, i32* @EP_VarSelect, align 4
  %59 = call i32 @ExprHasProperty(%struct.TYPE_32__* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %122, label %61

61:                                               ; preds = %45
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %63 = load i32, i32* @EP_Subrtn, align 4
  %64 = call i32 @ExprHasProperty(%struct.TYPE_32__* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.TYPE_31__*
  %73 = call i32 @ExplainQueryPlan(%struct.TYPE_31__* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* @OP_Gosub, align 4
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sqlite3VdbeAddOp2(i32* %74, i32 %75, i32 %80, i32 %85)
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %3, align 4
  br label %270

90:                                               ; preds = %61
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %92 = load i32, i32* @EP_Subrtn, align 4
  %93 = call i32 @ExprSetProperty(%struct.TYPE_32__* %91, i32 %92)
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @OP_Integer, align 4
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sqlite3VdbeAddOp2(i32* %102, i32 %103, i32 0, i32 %108)
  %110 = add nsw i32 %109, 1
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @VdbeComment(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @OP_Once, align 4
  %119 = call i32 @sqlite3VdbeAddOp0(i32* %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @VdbeCoverage(i32* %120)
  br label %122

122:                                              ; preds = %90, %45
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_31__*
  %133 = call i32 @ExplainQueryPlan(%struct.TYPE_31__* %132)
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TK_SELECT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %122
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  br label %146

145:                                              ; preds = %122
  br label %146

146:                                              ; preds = %145, %139
  %147 = phi i32 [ %144, %139 ], [ 1, %145 ]
  store i32 %147, i32* %10, align 4
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  %152 = call i32 @sqlite3SelectDestInit(%struct.TYPE_29__* %9, i32 0, i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TK_SELECT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %146
  %164 = load i32, i32* @SRT_Mem, align 4
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  store i32 %169, i32* %170, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* @OP_Null, align 4
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @sqlite3VdbeAddOp3(i32* %171, i32 %172, i32 0, i32 %174, i32 %179)
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @VdbeComment(i32* bitcast ([21 x i8]* @.str.5 to i32*))
  br label %193

183:                                              ; preds = %146
  %184 = load i32, i32* @SRT_Exists, align 4
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  store i32 %184, i32* %185, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* @OP_Integer, align 4
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sqlite3VdbeAddOp2(i32* %186, i32 %187, i32 0, i32 %189)
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @VdbeComment(i32* bitcast ([19 x i8]* @.str.6 to i32*))
  br label %193

193:                                              ; preds = %183, %163
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @TK_INTEGER, align 4
  %198 = load i32*, i32** @sqlite3IntTokens, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = call %struct.TYPE_32__* @sqlite3ExprAlloc(i32 %196, i32 %197, i32* %199, i32 0)
  store %struct.TYPE_32__* %200, %struct.TYPE_32__** %11, align 8
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = icmp ne %struct.TYPE_24__* %203, null
  br i1 %204, label %205, label %220

205:                                              ; preds = %193
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %212, align 8
  %214 = call i32 @sqlite3ExprDelete(i32 %208, %struct.TYPE_32__* %213)
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  store %struct.TYPE_32__* %215, %struct.TYPE_32__** %219, align 8
  br label %227

220:                                              ; preds = %193
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %222 = load i32, i32* @TK_LIMIT, align 4
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %224 = call %struct.TYPE_24__* @sqlite3PExpr(%struct.TYPE_31__* %221, i32 %222, %struct.TYPE_32__* %223, i32 0)
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 1
  store %struct.TYPE_24__* %224, %struct.TYPE_24__** %226, align 8
  br label %227

227:                                              ; preds = %220, %205
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %232 = call i64 @sqlite3Select(%struct.TYPE_31__* %230, %struct.TYPE_30__* %231, %struct.TYPE_29__* %9)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  br label %270

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %7, align 4
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %241 = load i32, i32* @EP_NoReduce, align 4
  %242 = call i32 @ExprSetVVAProperty(%struct.TYPE_32__* %240, i32 %241)
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %235
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @sqlite3VdbeJumpHere(i32* %246, i32 %247)
  %249 = load i32*, i32** %12, align 8
  %250 = load i32, i32* @OP_Return, align 4
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @sqlite3VdbeAddOp1(i32* %249, i32 %250, i32 %255)
  %257 = load i32*, i32** %12, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 1
  %264 = load i32*, i32** %12, align 8
  %265 = call i64 @sqlite3VdbeCurrentAddr(i32* %264)
  %266 = sub nsw i64 %265, 1
  %267 = call i32 @sqlite3VdbeChangeP1(i32* %257, i32 %263, i64 %266)
  br label %268

268:                                              ; preds = %245, %235
  %269 = load i32, i32* %7, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %234, %66
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ExplainQueryPlan(%struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_24__* @sqlite3PExpr(%struct.TYPE_31__*, i32, %struct.TYPE_32__*, i32) #1

declare dso_local i64 @sqlite3Select(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ExprSetVVAProperty(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP1(i32*, i32, i64) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
