; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_constructAutomaticIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_constructAutomaticIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_49__ = type { %struct.TYPE_53__*, i32, i32* }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_47__ = type { i64, %struct.TYPE_59__*, %struct.TYPE_61__* }
%struct.TYPE_59__ = type { %struct.TYPE_58__* }
%struct.TYPE_58__ = type { %struct.SrcList_item* }
%struct.TYPE_61__ = type { i32, %struct.TYPE_55__, %struct.TYPE_51__* }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_51__ = type { i32, i32, i32 }
%struct.SrcList_item = type { i32, i32, %struct.TYPE_60__, i32, %struct.TYPE_48__*, i32, i32 }
%struct.TYPE_60__ = type { i64 }
%struct.TYPE_48__ = type { i32, i32, %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_46__ = type { i64, i64, i32, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i64, i32, i32, %struct.TYPE_57__, %struct.TYPE_61__** }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i8*, i32*, i8**, %struct.TYPE_48__* }
%struct.TYPE_52__ = type { i8* }

@OP_Once = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@TERM_VIRTUAL = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4
@SQLITE_WARNING_AUTOINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"automatic index on %s(%s)\00", align 1
@WHERE_COLUMN_EQ = common dso_local global i32 0, align 4
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@WHERE_INDEXED = common dso_local global i32 0, align 4
@WHERE_AUTO_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"auto-index\00", align 1
@sqlite3StrBINARY = common dso_local global i8* null, align 8
@XN_ROWID = common dso_local global i32 0, align 4
@OP_OpenAutoindex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"for %s\00", align 1
@OP_Integer = common dso_local global i32 0, align 4
@OP_InitCoroutine = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"next row of %s\00", align 1
@OP_Rewind = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@WHERE_PARTIALIDX = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_49__*, %struct.TYPE_47__*, %struct.SrcList_item*, i32, %struct.TYPE_46__*)* @constructAutomaticIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructAutomaticIndex(%struct.TYPE_49__* %0, %struct.TYPE_47__* %1, %struct.SrcList_item* %2, i32 %3, %struct.TYPE_46__* %4) #0 {
  %6 = alloca %struct.TYPE_49__*, align 8
  %7 = alloca %struct.TYPE_47__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_46__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca %struct.TYPE_61__*, align 8
  %14 = alloca %struct.TYPE_50__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_48__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_52__*, align 8
  %24 = alloca %struct.TYPE_62__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_51__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.SrcList_item*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_51__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_51__*, align 8
  %40 = alloca i32, align 4
  store %struct.TYPE_49__* %0, %struct.TYPE_49__** %6, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %7, align 8
  store %struct.SrcList_item* %2, %struct.SrcList_item** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_46__* %4, %struct.TYPE_46__** %10, align 8
  store i32 0, i32* %28, align 4
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %29, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %41 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @OP_Once, align 4
  %50 = call i32 @sqlite3VdbeAddOp0(i32* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @VdbeCoverage(i32* %51)
  store i32 0, i32* %11, align 4
  %53 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %54 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %53, i32 0, i32 4
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %54, align 8
  store %struct.TYPE_48__* %55, %struct.TYPE_48__** %17, align 8
  %56 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_61__*, %struct.TYPE_61__** %57, align 8
  %59 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %58, i64 %61
  store %struct.TYPE_61__* %62, %struct.TYPE_61__** %13, align 8
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_62__*, %struct.TYPE_62__** %64, align 8
  store %struct.TYPE_62__* %65, %struct.TYPE_62__** %24, align 8
  store i32 0, i32* %26, align 4
  %66 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_61__*, %struct.TYPE_61__** %67, align 8
  store %struct.TYPE_61__* %68, %struct.TYPE_61__** %12, align 8
  br label %69

69:                                               ; preds = %211, %5
  %70 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %71 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %72 = icmp ult %struct.TYPE_61__* %70, %71
  br i1 %72, label %73, label %214

73:                                               ; preds = %69
  %74 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_51__*, %struct.TYPE_51__** %75, align 8
  store %struct.TYPE_51__* %76, %struct.TYPE_51__** %34, align 8
  %77 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %78 = load i32, i32* @EP_FromJoin, align 4
  %79 = call i32 @ExprHasProperty(%struct.TYPE_51__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %83 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %89, %81, %73
  %95 = phi i1 [ true, %81 ], [ true, %73 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %94
  %103 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TERM_VIRTUAL, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %102
  %110 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %111 = load i32, i32* @EP_FromJoin, align 4
  %112 = call i32 @ExprHasProperty(%struct.TYPE_51__* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_51__* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_53__*, %struct.TYPE_53__** %123, align 8
  %125 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %126 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_53__*, %struct.TYPE_53__** %127, align 8
  %129 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  %130 = call i32 @sqlite3ExprDup(%struct.TYPE_53__* %128, %struct.TYPE_51__* %129, i32 0)
  %131 = call %struct.TYPE_51__* @sqlite3ExprAnd(%struct.TYPE_53__* %124, %struct.TYPE_51__* %125, i32 %130)
  store %struct.TYPE_51__* %131, %struct.TYPE_51__** %29, align 8
  br label %132

132:                                              ; preds = %121, %114, %109, %102, %94
  %133 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %134 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @termCanDriveIndex(%struct.TYPE_61__* %133, %struct.SrcList_item* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %210

138:                                              ; preds = %132
  %139 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %35, align 4
  %143 = load i32, i32* %35, align 4
  %144 = load i32, i32* @BMS, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @BMS, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 @MASKBIT(i32 %148)
  br label %153

150:                                              ; preds = %138
  %151 = load i32, i32* %35, align 4
  %152 = call i32 @MASKBIT(i32 %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = phi i32 [ %149, %146 ], [ %152, %150 ]
  store i32 %154, i32* %36, align 4
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* @BMS, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @testcase(i32 %158)
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* @BMS, align 4
  %162 = sub nsw i32 %161, 1
  %163 = icmp eq i32 %160, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @testcase(i32 %164)
  %166 = load i32, i32* %28, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %182, label %168

168:                                              ; preds = %153
  %169 = load i32, i32* @SQLITE_WARNING_AUTOINDEX, align 4
  %170 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_54__*, %struct.TYPE_54__** %174, align 8
  %176 = load i32, i32* %35, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sqlite3_log(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %180)
  store i32 1, i32* %28, align 4
  br label %182

182:                                              ; preds = %168, %153
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %36, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_53__*, %struct.TYPE_53__** %189, align 8
  %191 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i64 @whereLoopResize(%struct.TYPE_53__* %190, %struct.TYPE_62__* %191, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %702

197:                                              ; preds = %187
  %198 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %199 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %200 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_61__**, %struct.TYPE_61__*** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.TYPE_61__*, %struct.TYPE_61__** %201, i64 %204
  store %struct.TYPE_61__* %198, %struct.TYPE_61__** %205, align 8
  %206 = load i32, i32* %36, align 4
  %207 = load i32, i32* %26, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %26, align 4
  br label %209

209:                                              ; preds = %197, %182
  br label %210

210:                                              ; preds = %209, %132
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %212, i32 1
  store %struct.TYPE_61__* %213, %struct.TYPE_61__** %12, align 8
  br label %69

214:                                              ; preds = %69
  %215 = load i32, i32* %11, align 4
  %216 = icmp sgt i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %223 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %224, i32 0, i32 0
  store i32 %219, i32* %225, align 8
  %226 = load i32, i32* @WHERE_COLUMN_EQ, align 4
  %227 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @WHERE_INDEXED, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @WHERE_AUTO_INDEX, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %236 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %26, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* @BMS, align 4
  %241 = sub nsw i32 %240, 1
  %242 = call i32 @MASKBIT(i32 %241)
  %243 = or i32 %239, %242
  %244 = and i32 %237, %243
  store i32 %244, i32* %27, align 4
  %245 = load i32, i32* @BMS, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @MIN(i32 %246, i32 %249)
  store i32 %250, i32* %22, align 4
  %251 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BMS, align 4
  %255 = sub nsw i32 %254, 1
  %256 = icmp eq i32 %253, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @testcase(i32 %257)
  %259 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @BMS, align 4
  %263 = sub nsw i32 %262, 2
  %264 = icmp eq i32 %261, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @testcase(i32 %265)
  store i32 0, i32* %21, align 4
  br label %267

267:                                              ; preds = %281, %214
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %22, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %284

271:                                              ; preds = %267
  %272 = load i32, i32* %27, align 4
  %273 = load i32, i32* %21, align 4
  %274 = call i32 @MASKBIT(i32 %273)
  %275 = and i32 %272, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %277, %271
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %21, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %21, align 4
  br label %267

284:                                              ; preds = %267
  %285 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %286 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @BMS, align 4
  %289 = sub nsw i32 %288, 1
  %290 = call i32 @MASKBIT(i32 %289)
  %291 = and i32 %287, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %284
  %294 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @BMS, align 4
  %298 = sub nsw i32 %296, %297
  %299 = add nsw i32 %298, 1
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %11, align 4
  br label %302

302:                                              ; preds = %293, %284
  %303 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_53__*, %struct.TYPE_53__** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  %308 = call %struct.TYPE_50__* @sqlite3AllocateIndexObject(%struct.TYPE_53__* %305, i32 %307, i32 0, i8** %25)
  store %struct.TYPE_50__* %308, %struct.TYPE_50__** %14, align 8
  %309 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %310 = icmp eq %struct.TYPE_50__* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %702

312:                                              ; preds = %302
  %313 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %314 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %315 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %316, i32 0, i32 1
  store %struct.TYPE_50__* %313, %struct.TYPE_50__** %317, align 8
  %318 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %318, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %319, align 8
  %320 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %321 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %321, i32 0, i32 3
  store %struct.TYPE_48__* %320, %struct.TYPE_48__** %322, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  %323 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_61__*, %struct.TYPE_61__** %324, align 8
  store %struct.TYPE_61__* %325, %struct.TYPE_61__** %12, align 8
  br label %326

326:                                              ; preds = %413, %312
  %327 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %328 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %329 = icmp ult %struct.TYPE_61__* %327, %328
  br i1 %329, label %330, label %416

330:                                              ; preds = %326
  %331 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %332 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %333 = load i32, i32* %9, align 4
  %334 = call i64 @termCanDriveIndex(%struct.TYPE_61__* %331, %struct.SrcList_item* %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %412

336:                                              ; preds = %330
  %337 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  store i32 %340, i32* %37, align 4
  %341 = load i32, i32* %37, align 4
  %342 = load i32, i32* @BMS, align 4
  %343 = icmp sge i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %336
  %345 = load i32, i32* @BMS, align 4
  %346 = sub nsw i32 %345, 1
  %347 = call i32 @MASKBIT(i32 %346)
  br label %351

348:                                              ; preds = %336
  %349 = load i32, i32* %37, align 4
  %350 = call i32 @MASKBIT(i32 %349)
  br label %351

351:                                              ; preds = %348, %344
  %352 = phi i32 [ %347, %344 ], [ %350, %348 ]
  store i32 %352, i32* %38, align 4
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* @BMS, align 4
  %355 = sub nsw i32 %354, 1
  %356 = icmp eq i32 %353, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @testcase(i32 %357)
  %359 = load i32, i32* %37, align 4
  %360 = load i32, i32* @BMS, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @testcase(i32 %362)
  %364 = load i32, i32* %26, align 4
  %365 = load i32, i32* %38, align 4
  %366 = and i32 %364, %365
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %411

368:                                              ; preds = %351
  %369 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_51__*, %struct.TYPE_51__** %370, align 8
  store %struct.TYPE_51__* %371, %struct.TYPE_51__** %39, align 8
  %372 = load i32, i32* %38, align 4
  %373 = load i32, i32* %26, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %26, align 4
  %375 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %378, i32* %384, align 4
  %385 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %386 = load %struct.TYPE_51__*, %struct.TYPE_51__** %39, align 8
  %387 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_51__*, %struct.TYPE_51__** %39, align 8
  %390 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call %struct.TYPE_52__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_49__* %385, i32 %388, i32 %391)
  store %struct.TYPE_52__* %392, %struct.TYPE_52__** %23, align 8
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %23, align 8
  %394 = icmp ne %struct.TYPE_52__* %393, null
  br i1 %394, label %395, label %399

395:                                              ; preds = %368
  %396 = load %struct.TYPE_52__*, %struct.TYPE_52__** %23, align 8
  %397 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  br label %401

399:                                              ; preds = %368
  %400 = load i8*, i8** @sqlite3StrBINARY, align 8
  br label %401

401:                                              ; preds = %399, %395
  %402 = phi i8* [ %398, %395 ], [ %400, %399 ]
  %403 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %403, i32 0, i32 2
  %405 = load i8**, i8*** %404, align 8
  %406 = load i32, i32* %20, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8*, i8** %405, i64 %407
  store i8* %402, i8** %408, align 8
  %409 = load i32, i32* %20, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %20, align 4
  br label %411

411:                                              ; preds = %401, %351
  br label %412

412:                                              ; preds = %411, %330
  br label %413

413:                                              ; preds = %412
  %414 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %414, i32 1
  store %struct.TYPE_61__* %415, %struct.TYPE_61__** %12, align 8
  br label %326

416:                                              ; preds = %326
  %417 = load i32, i32* %20, align 4
  %418 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %419 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %417, %422
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  store i32 0, i32* %21, align 4
  br label %426

426:                                              ; preds = %454, %416
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* %22, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %457

430:                                              ; preds = %426
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %21, align 4
  %433 = call i32 @MASKBIT(i32 %432)
  %434 = and i32 %431, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %453

436:                                              ; preds = %430
  %437 = load i32, i32* %21, align 4
  %438 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %20, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 %437, i32* %443, align 4
  %444 = load i8*, i8** @sqlite3StrBINARY, align 8
  %445 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %446 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %445, i32 0, i32 2
  %447 = load i8**, i8*** %446, align 8
  %448 = load i32, i32* %20, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %447, i64 %449
  store i8* %444, i8** %450, align 8
  %451 = load i32, i32* %20, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %20, align 4
  br label %453

453:                                              ; preds = %436, %430
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %21, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %21, align 4
  br label %426

457:                                              ; preds = %426
  %458 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %459 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @BMS, align 4
  %462 = sub nsw i32 %461, 1
  %463 = call i32 @MASKBIT(i32 %462)
  %464 = and i32 %460, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %496

466:                                              ; preds = %457
  %467 = load i32, i32* @BMS, align 4
  %468 = sub nsw i32 %467, 1
  store i32 %468, i32* %21, align 4
  br label %469

469:                                              ; preds = %492, %466
  %470 = load i32, i32* %21, align 4
  %471 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %472 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %495

475:                                              ; preds = %469
  %476 = load i32, i32* %21, align 4
  %477 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %478 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  store i32 %476, i32* %482, align 4
  %483 = load i8*, i8** @sqlite3StrBINARY, align 8
  %484 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %485 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %484, i32 0, i32 2
  %486 = load i8**, i8*** %485, align 8
  %487 = load i32, i32* %20, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %486, i64 %488
  store i8* %483, i8** %489, align 8
  %490 = load i32, i32* %20, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %20, align 4
  br label %492

492:                                              ; preds = %475
  %493 = load i32, i32* %21, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %21, align 4
  br label %469

495:                                              ; preds = %469
  br label %496

496:                                              ; preds = %495, %457
  %497 = load i32, i32* %20, align 4
  %498 = load i32, i32* %11, align 4
  %499 = icmp eq i32 %497, %498
  %500 = zext i1 %499 to i32
  %501 = call i32 @assert(i32 %500)
  %502 = load i32, i32* @XN_ROWID, align 4
  %503 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %20, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %502, i32* %508, align 4
  %509 = load i8*, i8** @sqlite3StrBINARY, align 8
  %510 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %511 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %510, i32 0, i32 2
  %512 = load i8**, i8*** %511, align 8
  %513 = load i32, i32* %20, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8*, i8** %512, i64 %514
  store i8* %509, i8** %515, align 8
  %516 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %517 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = icmp sge i64 %518, 0
  %520 = zext i1 %519 to i32
  %521 = call i32 @assert(i32 %520)
  %522 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %523, align 8
  %526 = sext i32 %524 to i64
  %527 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %528 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %527, i32 0, i32 0
  store i64 %526, i64* %528, align 8
  %529 = load i32*, i32** %15, align 8
  %530 = load i32, i32* @OP_OpenAutoindex, align 4
  %531 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %532 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i32, i32* %11, align 4
  %535 = add nsw i32 %534, 1
  %536 = call i32 @sqlite3VdbeAddOp2(i32* %529, i32 %530, i64 %533, i32 %535)
  %537 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %538 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %539 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_49__* %537, %struct.TYPE_50__* %538)
  %540 = load i32*, i32** %15, align 8
  %541 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %542 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  %545 = inttoptr i64 %544 to i32*
  %546 = call i32 @VdbeComment(i32* %545)
  %547 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %547, i32 0, i32 1
  %549 = load %struct.TYPE_59__*, %struct.TYPE_59__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_58__*, %struct.TYPE_58__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %551, i32 0, i32 0
  %553 = load %struct.SrcList_item*, %struct.SrcList_item** %552, align 8
  %554 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %555 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %553, i64 %556
  store %struct.SrcList_item* %557, %struct.SrcList_item** %31, align 8
  %558 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %559 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %592

563:                                              ; preds = %496
  %564 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %565 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  store i32 %566, i32* %40, align 4
  %567 = load i32*, i32** %15, align 8
  %568 = load i32, i32* @OP_Integer, align 4
  %569 = call i32 @sqlite3VdbeAddOp2(i32* %567, i32 %568, i64 0, i32 0)
  store i32 %569, i32* %32, align 4
  %570 = load i32*, i32** %15, align 8
  %571 = load i32, i32* @OP_InitCoroutine, align 4
  %572 = load i32, i32* %40, align 4
  %573 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %574 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %573, i32 0, i32 5
  %575 = load i32, i32* %574, align 8
  %576 = call i32 @sqlite3VdbeAddOp3(i32* %570, i32 %571, i32 %572, i32 0, i32 %575)
  %577 = load i32*, i32** %15, align 8
  %578 = load i32, i32* @OP_Yield, align 4
  %579 = load i32, i32* %40, align 4
  %580 = call i32 @sqlite3VdbeAddOp1(i32* %577, i32 %578, i32 %579)
  store i32 %580, i32* %18, align 4
  %581 = load i32*, i32** %15, align 8
  %582 = call i32 @VdbeCoverage(i32* %581)
  %583 = load i32*, i32** %15, align 8
  %584 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %585 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %584, i32 0, i32 4
  %586 = load %struct.TYPE_48__*, %struct.TYPE_48__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = inttoptr i64 %589 to i32*
  %591 = call i32 @VdbeComment(i32* %590)
  br label %601

592:                                              ; preds = %496
  %593 = load i32*, i32** %15, align 8
  %594 = load i32, i32* @OP_Rewind, align 4
  %595 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %596 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = call i32 @sqlite3VdbeAddOp1(i32* %593, i32 %594, i32 %597)
  store i32 %598, i32* %18, align 4
  %599 = load i32*, i32** %15, align 8
  %600 = call i32 @VdbeCoverage(i32* %599)
  br label %601

601:                                              ; preds = %592, %563
  %602 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %603 = icmp ne %struct.TYPE_51__* %602, null
  br i1 %603, label %604, label %617

604:                                              ; preds = %601
  %605 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %606 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_49__* %605)
  store i32 %606, i32* %30, align 4
  %607 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %608 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %609 = load i32, i32* %30, align 4
  %610 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %611 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_49__* %607, %struct.TYPE_51__* %608, i32 %609, i32 %610)
  %612 = load i32, i32* @WHERE_PARTIALIDX, align 4
  %613 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %614 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = or i32 %615, %612
  store i32 %616, i32* %614, align 4
  br label %617

617:                                              ; preds = %604, %601
  %618 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %619 = call i32 @sqlite3GetTempReg(%struct.TYPE_49__* %618)
  store i32 %619, i32* %19, align 4
  %620 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %621 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %622 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %623 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 8
  %625 = load i32, i32* %19, align 4
  %626 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_49__* %620, %struct.TYPE_50__* %621, i32 %624, i32 %625, i32 0, i32 0, i32 0, i32 0)
  store i32 %626, i32* %33, align 4
  %627 = load i32*, i32** %15, align 8
  %628 = load i32, i32* @OP_IdxInsert, align 4
  %629 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %630 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = load i32, i32* %19, align 4
  %633 = call i32 @sqlite3VdbeAddOp2(i32* %627, i32 %628, i64 %631, i32 %632)
  %634 = load i32*, i32** %15, align 8
  %635 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %636 = call i32 @sqlite3VdbeChangeP5(i32* %634, i32 %635)
  %637 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %638 = icmp ne %struct.TYPE_51__* %637, null
  br i1 %638, label %639, label %643

639:                                              ; preds = %617
  %640 = load i32*, i32** %15, align 8
  %641 = load i32, i32* %30, align 4
  %642 = call i32 @sqlite3VdbeResolveLabel(i32* %640, i32 %641)
  br label %643

643:                                              ; preds = %639, %617
  %644 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %645 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %644, i32 0, i32 2
  %646 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %677

649:                                              ; preds = %643
  %650 = load i32*, i32** %15, align 8
  %651 = load i32, i32* %32, align 4
  %652 = load i32, i32* %33, align 4
  %653 = load i32, i32* %20, align 4
  %654 = add nsw i32 %652, %653
  %655 = call i32 @sqlite3VdbeChangeP2(i32* %650, i32 %651, i32 %654)
  %656 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %657 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %656, i32 0, i32 0
  %658 = load %struct.TYPE_53__*, %struct.TYPE_53__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @testcase(i32 %660)
  %662 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %663 = load i32, i32* %18, align 4
  %664 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 8
  %667 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %668 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %667, i32 0, i32 3
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @translateColumnToCopy(%struct.TYPE_49__* %662, i32 %663, i32 %666, i32 %669, i32 1)
  %671 = load i32*, i32** %15, align 8
  %672 = load i32, i32* %18, align 4
  %673 = call i32 @sqlite3VdbeGoto(i32* %671, i32 %672)
  %674 = load %struct.SrcList_item*, %struct.SrcList_item** %31, align 8
  %675 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %674, i32 0, i32 2
  %676 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %675, i32 0, i32 0
  store i64 0, i64* %676, align 8
  br label %689

677:                                              ; preds = %643
  %678 = load i32*, i32** %15, align 8
  %679 = load i32, i32* @OP_Next, align 4
  %680 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %681 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 8
  %683 = sext i32 %682 to i64
  %684 = load i32, i32* %18, align 4
  %685 = add nsw i32 %684, 1
  %686 = call i32 @sqlite3VdbeAddOp2(i32* %678, i32 %679, i64 %683, i32 %685)
  %687 = load i32*, i32** %15, align 8
  %688 = call i32 @VdbeCoverage(i32* %687)
  br label %689

689:                                              ; preds = %677, %649
  %690 = load i32*, i32** %15, align 8
  %691 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %692 = call i32 @sqlite3VdbeChangeP5(i32* %690, i32 %691)
  %693 = load i32*, i32** %15, align 8
  %694 = load i32, i32* %18, align 4
  %695 = call i32 @sqlite3VdbeJumpHere(i32* %693, i32 %694)
  %696 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %697 = load i32, i32* %19, align 4
  %698 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_49__* %696, i32 %697)
  %699 = load i32*, i32** %15, align 8
  %700 = load i32, i32* %16, align 4
  %701 = call i32 @sqlite3VdbeJumpHere(i32* %699, i32 %700)
  br label %702

702:                                              ; preds = %689, %311, %196
  %703 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %704 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %703, i32 0, i32 0
  %705 = load %struct.TYPE_53__*, %struct.TYPE_53__** %704, align 8
  %706 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %707 = call i32 @sqlite3ExprDelete(%struct.TYPE_53__* %705, %struct.TYPE_51__* %706)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_51__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_51__*, i32) #1

declare dso_local %struct.TYPE_51__* @sqlite3ExprAnd(%struct.TYPE_53__*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @sqlite3ExprDup(%struct.TYPE_53__*, %struct.TYPE_51__*, i32) #1

declare dso_local i64 @termCanDriveIndex(%struct.TYPE_61__*, %struct.SrcList_item*, i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i64 @whereLoopResize(%struct.TYPE_53__*, %struct.TYPE_62__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_50__* @sqlite3AllocateIndexObject(%struct.TYPE_53__*, i32, i32, i8**) #1

declare dso_local %struct.TYPE_52__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_49__*, %struct.TYPE_50__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_49__*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_49__*, %struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_49__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_49__*, %struct.TYPE_50__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP2(i32*, i32, i32) #1

declare dso_local i32 @translateColumnToCopy(%struct.TYPE_49__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_53__*, %struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
