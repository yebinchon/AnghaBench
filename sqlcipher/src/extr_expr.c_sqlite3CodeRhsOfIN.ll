; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CodeRhsOfIN.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CodeRhsOfIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64, i32, i32, i32* }
%struct.TYPE_46__ = type { i32, %struct.TYPE_39__, %struct.TYPE_46__*, %struct.TYPE_40__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_45__*, %struct.TYPE_42__* }
%struct.TYPE_45__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_46__* }
%struct.TYPE_42__ = type { i32, i64, i32, %struct.TYPE_45__* }
%struct.TYPE_44__ = type { i32* }
%struct.TYPE_41__ = type { i32 }

@EP_VarSelect = common dso_local global i32 0, align 4
@EP_Subrtn = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"REUSE LIST SUBQUERY %d\00", align 1
@OP_Gosub = common dso_local global i32 0, align 4
@OP_OpenDup = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"return address\00", align 1
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%sLIST SUBQUERY %d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CORRELATED \00", align 1
@SRT_Set = common dso_local global i32 0, align 4
@SF_Distinct = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CodeRhsOfIN(%struct.TYPE_43__* %0, %struct.TYPE_46__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_43__*, align 8
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca %struct.TYPE_41__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_46__*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_45__*, align 8
  %21 = alloca %struct.ExprList_item*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_46__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %4, align 8
  store %struct.TYPE_46__* %1, %struct.TYPE_46__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %26 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %34 = load i32, i32* @EP_VarSelect, align 4
  %35 = call i64 @ExprHasProperty(%struct.TYPE_46__* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %124, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %124

42:                                               ; preds = %37
  %43 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %44 = load i32, i32* @EP_Subrtn, align 4
  %45 = call i64 @ExprHasProperty(%struct.TYPE_46__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @OP_Once, align 4
  %50 = call i32 @sqlite3VdbeAddOp0(i32* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @VdbeCoverage(i32* %51)
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %54 = load i32, i32* @EP_xIsSelect, align 4
  %55 = call i64 @ExprHasProperty(%struct.TYPE_46__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %59 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_43__*
  %67 = call i32 @ExplainQueryPlan(%struct.TYPE_43__* %66)
  br label %68

68:                                               ; preds = %57, %47
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @OP_Gosub, align 4
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sqlite3VdbeAddOp2(i32* %69, i32 %70, i32 %75, i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @OP_OpenDup, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @sqlite3VdbeAddOp2(i32* %82, i32 %83, i32 %84, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @sqlite3VdbeJumpHere(i32* %89, i32 %90)
  br label %392

92:                                               ; preds = %42
  %93 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %94 = load i32, i32* @EP_Subrtn, align 4
  %95 = call i32 @ExprSetProperty(%struct.TYPE_46__* %93, i32 %94)
  %96 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* @OP_Integer, align 4
  %106 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sqlite3VdbeAddOp2(i32* %104, i32 %105, i32 0, i32 %110)
  %112 = add nsw i32 %111, 1
  %113 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @VdbeComment(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* @OP_Once, align 4
  %121 = call i32 @sqlite3VdbeAddOp0(i32* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @VdbeCoverage(i32* %122)
  br label %124

124:                                              ; preds = %92, %37, %3
  %125 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_46__*, %struct.TYPE_46__** %126, align 8
  store %struct.TYPE_46__* %127, %struct.TYPE_46__** %9, align 8
  %128 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %129 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_46__* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @OP_OpenEphemeral, align 4
  %135 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @sqlite3VdbeAddOp2(i32* %133, i32 %134, i32 %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call %struct.TYPE_44__* @sqlite3KeyInfoAlloc(i32 %142, i32 %143, i32 1)
  store %struct.TYPE_44__* %144, %struct.TYPE_44__** %10, align 8
  %145 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %146 = load i32, i32* @EP_xIsSelect, align 4
  %147 = call i64 @ExprHasProperty(%struct.TYPE_46__* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %263

149:                                              ; preds = %124
  %150 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %152, align 8
  store %struct.TYPE_42__* %153, %struct.TYPE_42__** %13, align 8
  %154 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_45__*, %struct.TYPE_45__** %155, align 8
  store %struct.TYPE_45__* %156, %struct.TYPE_45__** %14, align 8
  %157 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %162 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to %struct.TYPE_43__*
  %167 = call i32 @ExplainQueryPlan(%struct.TYPE_43__* %166)
  %168 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 @ALWAYS(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %262

176:                                              ; preds = %149
  %177 = load i32, i32* @SRT_Set, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @sqlite3SelectDestInit(%struct.TYPE_41__* %15, i32 %177, i32 %178)
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %181 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %182 = call i32 @exprINAffinity(%struct.TYPE_43__* %180, %struct.TYPE_46__* %181)
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @SF_Distinct, align 4
  %190 = and i32 %188, %189
  %191 = call i32 @testcase(i32 %190)
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %193 = icmp eq %struct.TYPE_44__* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @testcase(i32 %194)
  %196 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %198 = call i64 @sqlite3Select(%struct.TYPE_43__* %196, %struct.TYPE_42__* %197, %struct.TYPE_41__* %15)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %176
  %201 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @sqlite3DbFree(i32 %203, i32 %205)
  %207 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %208 = call i32 @sqlite3KeyInfoUnref(%struct.TYPE_44__* %207)
  br label %392

209:                                              ; preds = %176
  %210 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @sqlite3DbFree(i32 %212, i32 %214)
  %216 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %217 = icmp ne %struct.TYPE_44__* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %221 = icmp ne %struct.TYPE_45__* %220, null
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %231 = call i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_44__* %230)
  %232 = call i32 @assert(i32 %231)
  store i32 0, i32* %16, align 4
  br label %233

233:                                              ; preds = %258, %209
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %261

237:                                              ; preds = %233
  %238 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %239 = load i32, i32* %16, align 4
  %240 = call %struct.TYPE_46__* @sqlite3VectorFieldSubexpr(%struct.TYPE_46__* %238, i32 %239)
  store %struct.TYPE_46__* %240, %struct.TYPE_46__** %17, align 8
  %241 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %242 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %243 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %243, i32 0, i32 1
  %245 = load %struct.ExprList_item*, %struct.ExprList_item** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %245, i64 %247
  %249 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %248, i32 0, i32 0
  %250 = load %struct.TYPE_46__*, %struct.TYPE_46__** %249, align 8
  %251 = call i32 @sqlite3BinaryCompareCollSeq(%struct.TYPE_43__* %241, %struct.TYPE_46__* %242, %struct.TYPE_46__* %250)
  %252 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %251, i32* %257, align 4
  br label %258

258:                                              ; preds = %237
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %16, align 4
  br label %233

261:                                              ; preds = %233
  br label %262

262:                                              ; preds = %261, %149
  br label %356

263:                                              ; preds = %124
  %264 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_45__*, %struct.TYPE_45__** %266, align 8
  %268 = icmp ne %struct.TYPE_45__* %267, null
  %269 = zext i1 %268 to i32
  %270 = call i64 @ALWAYS(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %355

272:                                              ; preds = %263
  %273 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_45__*, %struct.TYPE_45__** %275, align 8
  store %struct.TYPE_45__* %276, %struct.TYPE_45__** %20, align 8
  %277 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %278 = call signext i8 @sqlite3ExprAffinity(%struct.TYPE_46__* %277)
  store i8 %278, i8* %18, align 1
  %279 = load i8, i8* %18, align 1
  %280 = icmp ne i8 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %272
  %282 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  store i8 %282, i8* %18, align 1
  br label %283

283:                                              ; preds = %281, %272
  %284 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %285 = icmp ne %struct.TYPE_44__* %284, null
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %288 = call i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_44__* %287)
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %291 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_46__*, %struct.TYPE_46__** %292, align 8
  %294 = call i32 @sqlite3ExprCollSeq(%struct.TYPE_43__* %290, %struct.TYPE_46__* %293)
  %295 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %286, %283
  %300 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %301 = call i32 @sqlite3GetTempReg(%struct.TYPE_43__* %300)
  store i32 %301, i32* %22, align 4
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %303 = call i32 @sqlite3GetTempReg(%struct.TYPE_43__* %302)
  store i32 %303, i32* %23, align 4
  %304 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %305 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %19, align 4
  %307 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %307, i32 0, i32 1
  %309 = load %struct.ExprList_item*, %struct.ExprList_item** %308, align 8
  store %struct.ExprList_item* %309, %struct.ExprList_item** %21, align 8
  br label %310

310:                                              ; preds = %343, %299
  %311 = load i32, i32* %19, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %348

313:                                              ; preds = %310
  %314 = load %struct.ExprList_item*, %struct.ExprList_item** %21, align 8
  %315 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %314, i32 0, i32 0
  %316 = load %struct.TYPE_46__*, %struct.TYPE_46__** %315, align 8
  store %struct.TYPE_46__* %316, %struct.TYPE_46__** %25, align 8
  %317 = load i32, i32* %7, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %313
  %320 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %321 = call i32 @sqlite3ExprIsConstant(%struct.TYPE_46__* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = load i32*, i32** %12, align 8
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @sqlite3VdbeChangeToNoop(i32* %324, i32 %325)
  store i32 0, i32* %7, align 4
  br label %327

327:                                              ; preds = %323, %319, %313
  %328 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %329 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %330 = load i32, i32* %22, align 4
  %331 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_43__* %328, %struct.TYPE_46__* %329, i32 %330)
  store i32 %331, i32* %24, align 4
  %332 = load i32*, i32** %12, align 8
  %333 = load i32, i32* @OP_MakeRecord, align 4
  %334 = load i32, i32* %24, align 4
  %335 = load i32, i32* %23, align 4
  %336 = call i32 @sqlite3VdbeAddOp4(i32* %332, i32 %333, i32 %334, i32 1, i32 %335, i8* %18, i32 1)
  %337 = load i32*, i32** %12, align 8
  %338 = load i32, i32* @OP_IdxInsert, align 4
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* %23, align 4
  %341 = load i32, i32* %24, align 4
  %342 = call i32 @sqlite3VdbeAddOp4Int(i32* %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 1)
  br label %343

343:                                              ; preds = %327
  %344 = load i32, i32* %19, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %19, align 4
  %346 = load %struct.ExprList_item*, %struct.ExprList_item** %21, align 8
  %347 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %346, i32 1
  store %struct.ExprList_item* %347, %struct.ExprList_item** %21, align 8
  br label %310

348:                                              ; preds = %310
  %349 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %350 = load i32, i32* %22, align 4
  %351 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_43__* %349, i32 %350)
  %352 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %353 = load i32, i32* %23, align 4
  %354 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_43__* %352, i32 %353)
  br label %355

355:                                              ; preds = %348, %263
  br label %356

356:                                              ; preds = %355, %262
  %357 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %358 = icmp ne %struct.TYPE_44__* %357, null
  br i1 %358, label %359, label %366

359:                                              ; preds = %356
  %360 = load i32*, i32** %12, align 8
  %361 = load i32, i32* %8, align 4
  %362 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %363 = bitcast %struct.TYPE_44__* %362 to i8*
  %364 = load i32, i32* @P4_KEYINFO, align 4
  %365 = call i32 @sqlite3VdbeChangeP4(i32* %360, i32 %361, i8* %363, i32 %364)
  br label %366

366:                                              ; preds = %359, %356
  %367 = load i32, i32* %7, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %392

369:                                              ; preds = %366
  %370 = load i32*, i32** %12, align 8
  %371 = load i32, i32* %7, align 4
  %372 = call i32 @sqlite3VdbeJumpHere(i32* %370, i32 %371)
  %373 = load i32*, i32** %12, align 8
  %374 = load i32, i32* @OP_Return, align 4
  %375 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @sqlite3VdbeAddOp1(i32* %373, i32 %374, i32 %379)
  %381 = load i32*, i32** %12, align 8
  %382 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = sub nsw i32 %386, 1
  %388 = load i32*, i32** %12, align 8
  %389 = call i64 @sqlite3VdbeCurrentAddr(i32* %388)
  %390 = sub nsw i64 %389, 1
  %391 = call i32 @sqlite3VdbeChangeP1(i32* %381, i32 %387, i64 %390)
  br label %392

392:                                              ; preds = %68, %200, %369, %366
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @ExplainQueryPlan(%struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_44__* @sqlite3KeyInfoAlloc(i32, i32, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @exprINAffinity(%struct.TYPE_43__*, %struct.TYPE_46__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @sqlite3Select(%struct.TYPE_43__*, %struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i32 @sqlite3DbFree(i32, i32) #1

declare dso_local i32 @sqlite3KeyInfoUnref(%struct.TYPE_44__*) #1

declare dso_local i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_46__* @sqlite3VectorFieldSubexpr(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @sqlite3BinaryCompareCollSeq(%struct.TYPE_43__*, %struct.TYPE_46__*, %struct.TYPE_46__*) #1

declare dso_local signext i8 @sqlite3ExprAffinity(%struct.TYPE_46__*) #1

declare dso_local i32 @sqlite3ExprCollSeq(%struct.TYPE_43__*, %struct.TYPE_46__*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3ExprIsConstant(%struct.TYPE_46__*) #1

declare dso_local i32 @sqlite3VdbeChangeToNoop(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_43__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP1(i32*, i32, i64) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
