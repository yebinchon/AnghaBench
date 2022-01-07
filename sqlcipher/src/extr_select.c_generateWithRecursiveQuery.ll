; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateWithRecursiveQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateWithRecursiveQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32, i32, i32* }
%struct.TYPE_33__ = type { i32, i32, i32, i64, i32, i32*, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i8**, i64, %struct.TYPE_28__*, %struct.TYPE_31__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_35__* }

@SRT_Fifo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot use window functions in recursive queries\00", align 1
@SQLITE_RECURSIVE = common dso_local global i32 0, align 4
@TK_UNION = common dso_local global i64 0, align 8
@SRT_DistQueue = common dso_local global i32 0, align 4
@SRT_DistFifo = common dso_local global i32 0, align 4
@SRT_Queue = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Queue table\00", align 1
@SF_UsesEphemeral = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@OP_Rewind = common dso_local global i32 0, align 4
@OP_NullRow = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_RowData = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OP_DecrJumpZero = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"recursive aggregate queries not supported\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"RECURSIVE STEP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_32__*)* @generateWithRecursiveQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateWithRecursiveQuery(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1, %struct.TYPE_32__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_35__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %6, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 12
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  store %struct.TYPE_31__* %29, %struct.TYPE_31__** %7, align 8
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 11
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  store %struct.TYPE_33__* %40, %struct.TYPE_33__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %41 = load i32, i32* @SRT_Fifo, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %48 = call i32 @sqlite3ErrorMsg(%struct.TYPE_34__* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %331

49:                                               ; preds = %3
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %51 = load i32, i32* @SQLITE_RECURSIVE, align 4
  %52 = call i64 @sqlite3AuthCheck(%struct.TYPE_34__* %50, i32 %51, i32 0, i32 0, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %331

55:                                               ; preds = %49
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %57 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__* %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  store i32 320, i32* %59, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @computeLimitRegisters(%struct.TYPE_34__* %60, %struct.TYPE_33__* %61, i32 %62)
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %23, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %24, align 4
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %25, align 4
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 5
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %80, align 8
  store %struct.TYPE_35__* %81, %struct.TYPE_35__** %22, align 8
  store i32 0, i32* %20, align 4
  br label %82

82:                                               ; preds = %112, %55
  %83 = load i32, i32* %20, align 4
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @ALWAYS(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %82
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %104, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %14, align 4
  br label %115

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %82

115:                                              ; preds = %102, %82
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  store i32 %118, i32* %16, align 4
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TK_UNION, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %115
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %127 = icmp ne %struct.TYPE_35__* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @SRT_DistQueue, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @SRT_DistFifo, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %18, align 4
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  store i32 %136, i32* %17, align 4
  br label %147

138:                                              ; preds = %115
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %140 = icmp ne %struct.TYPE_35__* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @SRT_Queue, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @SRT_Fifo, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %145, %132
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @sqlite3SelectDestInit(%struct.TYPE_32__* %19, i32 %148, i32 %149)
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  store i32 %154, i32* %15, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* @OP_OpenPseudo, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @sqlite3VdbeAddOp3(i32* %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %162 = icmp ne %struct.TYPE_35__* %161, null
  br i1 %162, label %163, label %180

163:                                              ; preds = %147
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %166 = call i32* @multiSelectOrderByKeyInfo(%struct.TYPE_34__* %164, %struct.TYPE_33__* %165, i32 1)
  store i32* %166, i32** %26, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* @OP_OpenEphemeral, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 2
  %174 = load i32*, i32** %26, align 8
  %175 = bitcast i32* %174 to i8*
  %176 = load i32, i32* @P4_KEYINFO, align 4
  %177 = call i32 @sqlite3VdbeAddOp4(i32* %167, i32 %168, i32 %169, i32 %173, i32 0, i8* %175, i32 %176)
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  store %struct.TYPE_35__* %178, %struct.TYPE_35__** %179, align 8
  br label %186

180:                                              ; preds = %147
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* @OP_OpenEphemeral, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i8* @sqlite3VdbeAddOp2(i32* %181, i32 %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %180, %163
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str.1 to i32*))
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* @OP_OpenEphemeral, align 4
  %194 = load i32, i32* %17, align 4
  %195 = call i8* @sqlite3VdbeAddOp2(i32* %192, i32 %193, i32 %194, i32 0)
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 9
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  %200 = load i32, i32* @SF_UsesEphemeral, align 4
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %191, %186
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 6
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %207, align 8
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %209, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %211 = call i32 @ExplainQueryPlan(%struct.TYPE_34__* bitcast ([6 x i8]* @.str.2 to %struct.TYPE_34__*))
  %212 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %214 = call i32 @sqlite3Select(%struct.TYPE_34__* %212, %struct.TYPE_33__* %213, %struct.TYPE_32__* %19)
  store i32 %214, i32* %21, align 4
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 8
  store %struct.TYPE_33__* %215, %struct.TYPE_33__** %217, align 8
  %218 = load i32, i32* %21, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %205
  br label %317

221:                                              ; preds = %205
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* @OP_Rewind, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i8* @sqlite3VdbeAddOp2(i32* %222, i32 %223, i32 %224, i32 %225)
  %227 = ptrtoint i8* %226 to i32
  store i32 %227, i32* %11, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = call i32 @VdbeCoverage(i32* %228)
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @OP_NullRow, align 4
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @sqlite3VdbeAddOp1(i32* %230, i32 %231, i32 %232)
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %235 = icmp ne %struct.TYPE_35__* %234, null
  br i1 %235, label %236, label %246

236:                                              ; preds = %221
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* @OP_Column, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @sqlite3VdbeAddOp3(i32* %237, i32 %238, i32 %239, i32 %243, i32 %244)
  br label %252

246:                                              ; preds = %221
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* @OP_RowData, align 4
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %15, align 4
  %251 = call i8* @sqlite3VdbeAddOp2(i32* %247, i32 %248, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %246, %236
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* @OP_Delete, align 4
  %255 = load i32, i32* %16, align 4
  %256 = call i32 @sqlite3VdbeAddOp1(i32* %253, i32 %254, i32 %255)
  %257 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %258 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__* %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32*, i32** %9, align 8
  %260 = load i32, i32* %25, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @codeOffset(i32* %259, i32 %260, i32 %261)
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @selectInnerLoop(%struct.TYPE_34__* %263, %struct.TYPE_33__* %264, i32 %265, i32 0, i32 0, %struct.TYPE_32__* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %24, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %252
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* @OP_DecrJumpZero, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %13, align 4
  %277 = call i8* @sqlite3VdbeAddOp2(i32* %273, i32 %274, i32 %275, i32 %276)
  %278 = load i32*, i32** %9, align 8
  %279 = call i32 @VdbeCoverage(i32* %278)
  br label %280

280:                                              ; preds = %272, %252
  %281 = load i32*, i32** %9, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @sqlite3VdbeResolveLabel(i32* %281, i32 %282)
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @SF_Aggregate, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %280
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %292 = call i32 @sqlite3ErrorMsg(%struct.TYPE_34__* %291, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %310

293:                                              ; preds = %280
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 7
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %295, align 8
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %297 = call i32 @ExplainQueryPlan(%struct.TYPE_34__* bitcast ([15 x i8]* @.str.4 to %struct.TYPE_34__*))
  %298 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %300 = call i32 @sqlite3Select(%struct.TYPE_34__* %298, %struct.TYPE_33__* %299, %struct.TYPE_32__* %19)
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %301, i32 0, i32 7
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %302, align 8
  %304 = icmp eq %struct.TYPE_33__* %303, null
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 7
  store %struct.TYPE_33__* %307, %struct.TYPE_33__** %309, align 8
  br label %310

310:                                              ; preds = %293, %290
  %311 = load i32*, i32** %9, align 8
  %312 = load i32, i32* %11, align 4
  %313 = call i32 @sqlite3VdbeGoto(i32* %311, i32 %312)
  %314 = load i32*, i32** %9, align 8
  %315 = load i32, i32* %13, align 4
  %316 = call i32 @sqlite3VdbeResolveLabel(i32* %314, i32 %315)
  br label %317

317:                                              ; preds = %310, %220
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 6
  %323 = load %struct.TYPE_35__*, %struct.TYPE_35__** %322, align 8
  %324 = call i32 @sqlite3ExprListDelete(i32 %320, %struct.TYPE_35__* %323)
  %325 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %326 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %326, i32 0, i32 6
  store %struct.TYPE_35__* %325, %struct.TYPE_35__** %327, align 8
  %328 = load i32*, i32** %23, align 8
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 5
  store i32* %328, i32** %330, align 8
  br label %331

331:                                              ; preds = %317, %54, %46
  ret void
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_34__*, i8*) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_34__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__*) #1

declare dso_local i32 @computeLimitRegisters(%struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @multiSelectOrderByKeyInfo(%struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @ExplainQueryPlan(%struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @selectInnerLoop(%struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32, i32, %struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
