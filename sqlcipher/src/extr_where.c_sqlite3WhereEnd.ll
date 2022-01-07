; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_sqlite3WhereEnd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_sqlite3WhereEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i64, i32, i64, i64*, i32, %struct.TYPE_38__*, i32, %struct.TYPE_28__*, %struct.TYPE_29__* }
%struct.TYPE_38__ = type { i64, i64, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_35__, %struct.TYPE_37__*, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_30__*, %struct.TYPE_31__ }
%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_27__*, i32, i64 }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_31__ = type { i64, %struct.InLoop* }
%struct.InLoop = type { i32, i64, i32, i32, i32 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i32, %struct.TYPE_32__, %struct.TYPE_27__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_36__*, i32* }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_26__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"End WHERE-core\00", align 1
@OP_Noop = common dso_local global i64 0, align 8
@WHERE_DISTINCT_ORDERED = common dso_local global i64 0, align 8
@WHERE_INDEXED = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i64 0, align 8
@OP_Prev = common dso_local global i64 0, align 8
@OP_SeekLT = common dso_local global i32 0, align 4
@OP_SeekGT = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i64 0, align 8
@OP_Next = common dso_local global i64 0, align 8
@OP_VNext = common dso_local global i64 0, align 8
@WHERE_IN_ABLE = common dso_local global i32 0, align 4
@WHERE_IN_EARLYOUT = common dso_local global i32 0, align 4
@OP_IfNoHope = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"next skip-scan on %s\00", align 1
@OP_DecrJumpZero = common dso_local global i64 0, align 8
@OP_IfPos = common dso_local global i32 0, align 4
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@OP_NullRow = common dso_local global i32 0, align 4
@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i64 0, align 8
@OP_Gosub = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"End WHERE-loop%d: %s\00", align 1
@ONEPASS_OFF = common dso_local global i64 0, align 8
@OP_Rowid = common dso_local global i64 0, align 8
@OP_IdxRowid = common dso_local global i64 0, align 8
@OP_IfNullRow = common dso_local global i64 0, align 8
@OP_Close = common dso_local global i32 0, align 4
@OP_Offset = common dso_local global i64 0, align 8
@SQLITE_VdbeAddopTrace = common dso_local global i32 0, align 4
@TF_Ephemeral = common dso_local global i32 0, align 4
@WHERE_AUTO_INDEX = common dso_local global i32 0, align 4
@WHERE_IPK = common dso_local global i32 0, align 4
@WHERE_OR_SUBCLAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WhereEnd(%struct.TYPE_39__* %0) #0 {
  %2 = alloca %struct.TYPE_39__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.InLoop*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_30__*, align 8
  %24 = alloca %struct.SrcList_item*, align 8
  %25 = alloca %struct.TYPE_27__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %2, align 8
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %3, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %8, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %38, align 8
  store %struct.TYPE_36__* %39, %struct.TYPE_36__** %9, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @VdbeModuleComment(i32* bitcast ([15 x i8]* @.str to i32*))
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %543, %1
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %546

49:                                               ; preds = %46
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i64 %54
  store %struct.TYPE_38__* %55, %struct.TYPE_38__** %6, align 8
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 14
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %57, align 8
  store %struct.TYPE_37__* %58, %struct.TYPE_37__** %7, align 8
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OP_Noop, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %234

64:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WHERE_DISTINCT_ORDERED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %176

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %176

77:                                               ; preds = %70
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WHERE_INDEXED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %176

84:                                               ; preds = %77
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %88, align 8
  store %struct.TYPE_30__* %89, %struct.TYPE_30__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %176

93:                                               ; preds = %84
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %13, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %176

100:                                              ; preds = %93
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 36
  br i1 %108, label %109, label %176

109:                                              ; preds = %100
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %129, %109
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i64, i64* @OP_Column, align 8
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @sqlite3VdbeAddOp3(i32* %119, i64 %120, i64 %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %114

132:                                              ; preds = %114
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @OP_Prev, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i32, i32* @OP_SeekLT, align 4
  br label %148

146:                                              ; preds = %132
  %147 = load i32, i32* @OP_SeekGT, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %16, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @sqlite3VdbeAddOp4Int(i32* %150, i32 %151, i64 %154, i32 0, i32 %155, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @OP_SeekLT, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @VdbeCoverageIf(i32* %158, i32 %162)
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* @OP_SeekGT, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @VdbeCoverageIf(i32* %164, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i64, i64* @OP_Goto, align 8
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @sqlite3VdbeAddOp2(i32* %170, i64 %171, i32 1, i32 %174)
  br label %176

176:                                              ; preds = %148, %100, %93, %84, %77, %70, %64
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @sqlite3VdbeResolveLabel(i32* %177, i32 %180)
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @sqlite3VdbeAddOp3(i32* %182, i64 %185, i64 %188, i32 %191, i32 %194)
  %196 = load i32*, i32** %4, align 8
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 18
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sqlite3VdbeChangeP5(i32* %196, i32 %199)
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @VdbeCoverage(i32* %201)
  %203 = load i32*, i32** %4, align 8
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @OP_Next, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @VdbeCoverageIf(i32* %203, i32 %209)
  %211 = load i32*, i32** %4, align 8
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @OP_Prev, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @VdbeCoverageIf(i32* %211, i32 %217)
  %219 = load i32*, i32** %4, align 8
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @OP_VNext, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @VdbeCoverageIf(i32* %219, i32 %225)
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %176
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @sqlite3VdbeJumpHere(i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %176
  br label %240

234:                                              ; preds = %49
  %235 = load i32*, i32** %4, align 8
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %236, i32 0, i32 17
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @sqlite3VdbeResolveLabel(i32* %235, i32 %238)
  br label %240

240:                                              ; preds = %234, %233
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @WHERE_IN_ABLE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %362

247:                                              ; preds = %240
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %248, i32 0, i32 13
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %252, 0
  br i1 %253, label %254, label %362

254:                                              ; preds = %247
  %255 = load i32*, i32** %4, align 8
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 16
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @sqlite3VdbeResolveLabel(i32* %255, i32 %258)
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 13
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %18, align 4
  %266 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %266, i32 0, i32 13
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 1
  %270 = load %struct.InLoop*, %struct.InLoop** %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %270, i64 %273
  store %struct.InLoop* %274, %struct.InLoop** %17, align 8
  br label %275

275:                                              ; preds = %356, %254
  %276 = load i32, i32* %18, align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %361

278:                                              ; preds = %275
  %279 = load i32*, i32** %4, align 8
  %280 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %281 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  %284 = call i32 @sqlite3VdbeJumpHere(i32* %279, i32 %283)
  %285 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %286 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @OP_Noop, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %349

290:                                              ; preds = %278
  %291 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %292 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %319

295:                                              ; preds = %290
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @WHERE_IN_EARLYOUT, align 4
  %300 = and i32 %298, %299
  %301 = call i32 @assert(i32 %300)
  %302 = load i32*, i32** %4, align 8
  %303 = load i32, i32* @OP_IfNoHope, align 4
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i32*, i32** %4, align 8
  %308 = call i32 @sqlite3VdbeCurrentAddr(i32* %307)
  %309 = add nsw i32 %308, 2
  %310 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %311 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %314 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @sqlite3VdbeAddOp4Int(i32* %302, i32 %303, i64 %306, i32 %309, i32 %312, i32 %315)
  %317 = load i32*, i32** %4, align 8
  %318 = call i32 @VdbeCoverage(i32* %317)
  br label %319

319:                                              ; preds = %295, %290
  %320 = load i32*, i32** %4, align 8
  %321 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %322 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %325 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %328 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @sqlite3VdbeAddOp2(i32* %320, i64 %323, i32 %326, i32 %329)
  %331 = load i32*, i32** %4, align 8
  %332 = call i32 @VdbeCoverage(i32* %331)
  %333 = load i32*, i32** %4, align 8
  %334 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %335 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @OP_Prev, align 8
  %338 = icmp eq i64 %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @VdbeCoverageIf(i32* %333, i32 %339)
  %341 = load i32*, i32** %4, align 8
  %342 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %343 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @OP_Next, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @VdbeCoverageIf(i32* %341, i32 %347)
  br label %349

349:                                              ; preds = %319, %278
  %350 = load i32*, i32** %4, align 8
  %351 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %352 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sub nsw i32 %353, 1
  %355 = call i32 @sqlite3VdbeJumpHere(i32* %350, i32 %354)
  br label %356

356:                                              ; preds = %349
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %18, align 4
  %359 = load %struct.InLoop*, %struct.InLoop** %17, align 8
  %360 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %359, i32 -1
  store %struct.InLoop* %360, %struct.InLoop** %17, align 8
  br label %275

361:                                              ; preds = %275
  br label %362

362:                                              ; preds = %361, %247, %240
  %363 = load i32*, i32** %4, align 8
  %364 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %364, i32 0, i32 15
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @sqlite3VdbeResolveLabel(i32* %363, i32 %366)
  %368 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %400

372:                                              ; preds = %362
  %373 = load i32*, i32** %4, align 8
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @sqlite3VdbeGoto(i32* %373, i32 %376)
  %378 = load i32*, i32** %4, align 8
  %379 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = inttoptr i64 %386 to i32*
  %388 = call i32 @VdbeComment(i32* %387)
  %389 = load i32*, i32** %4, align 8
  %390 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @sqlite3VdbeJumpHere(i32* %389, i32 %392)
  %394 = load i32*, i32** %4, align 8
  %395 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %397, 2
  %399 = call i32 @sqlite3VdbeJumpHere(i32* %394, i32 %398)
  br label %400

400:                                              ; preds = %372, %362
  %401 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %418

405:                                              ; preds = %400
  %406 = load i32*, i32** %4, align 8
  %407 = load i64, i64* @OP_DecrJumpZero, align 8
  %408 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 4
  %411 = ashr i32 %410, 1
  %412 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @sqlite3VdbeAddOp2(i32* %406, i64 %407, i32 %411, i32 %414)
  %416 = load i32*, i32** %4, align 8
  %417 = call i32 @VdbeCoverage(i32* %416)
  br label %418

418:                                              ; preds = %405, %400
  %419 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %419, i32 0, i32 8
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %524

423:                                              ; preds = %418
  %424 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  store i32 %426, i32* %19, align 4
  %427 = load i32*, i32** %4, align 8
  %428 = load i32, i32* @OP_IfPos, align 4
  %429 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %429, i32 0, i32 8
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @sqlite3VdbeAddOp1(i32* %427, i32 %428, i64 %431)
  store i32 %432, i32* %10, align 4
  %433 = load i32*, i32** %4, align 8
  %434 = call i32 @VdbeCoverage(i32* %433)
  %435 = load i32, i32* %19, align 4
  %436 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %437 = and i32 %435, %436
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %444, label %439

439:                                              ; preds = %423
  %440 = load i32, i32* %19, align 4
  %441 = load i32, i32* @WHERE_INDEXED, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br label %444

444:                                              ; preds = %439, %423
  %445 = phi i1 [ true, %423 ], [ %443, %439 ]
  %446 = zext i1 %445 to i32
  %447 = call i32 @assert(i32 %446)
  %448 = load i32, i32* %19, align 4
  %449 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %450 = and i32 %448, %449
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %474

452:                                              ; preds = %444
  %453 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %453, i32 0, i32 9
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %456, i32 0, i32 1
  %458 = load %struct.SrcList_item*, %struct.SrcList_item** %457, align 8
  %459 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %459, i32 0, i32 10
  %461 = load i64, i64* %460, align 8
  %462 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %458, i64 %461
  %463 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp eq i64 %455, %464
  %466 = zext i1 %465 to i32
  %467 = call i32 @assert(i32 %466)
  %468 = load i32*, i32** %4, align 8
  %469 = load i32, i32* @OP_NullRow, align 4
  %470 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %470, i32 0, i32 9
  %472 = load i64, i64* %471, align 8
  %473 = call i32 @sqlite3VdbeAddOp1(i32* %468, i32 %469, i64 %472)
  br label %474

474:                                              ; preds = %452, %444
  %475 = load i32, i32* %19, align 4
  %476 = load i32, i32* @WHERE_INDEXED, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %490, label %479

479:                                              ; preds = %474
  %480 = load i32, i32* %19, align 4
  %481 = load i32, i32* @WHERE_MULTI_OR, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %497

484:                                              ; preds = %479
  %485 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %485, i32 0, i32 13
  %487 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_30__*, %struct.TYPE_30__** %487, align 8
  %489 = icmp ne %struct.TYPE_30__* %488, null
  br i1 %489, label %490, label %497

490:                                              ; preds = %484, %474
  %491 = load i32*, i32** %4, align 8
  %492 = load i32, i32* @OP_NullRow, align 4
  %493 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @sqlite3VdbeAddOp1(i32* %491, i32 %492, i64 %495)
  br label %497

497:                                              ; preds = %490, %484, %479
  %498 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @OP_Return, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %514

503:                                              ; preds = %497
  %504 = load i32*, i32** %4, align 8
  %505 = load i64, i64* @OP_Gosub, align 8
  %506 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %506, i32 0, i32 3
  %508 = load i64, i64* %507, align 8
  %509 = trunc i64 %508 to i32
  %510 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %510, i32 0, i32 11
  %512 = load i32, i32* %511, align 8
  %513 = call i32 @sqlite3VdbeAddOp2(i32* %504, i64 %505, i32 %509, i32 %512)
  br label %520

514:                                              ; preds = %497
  %515 = load i32*, i32** %4, align 8
  %516 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %516, i32 0, i32 11
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @sqlite3VdbeGoto(i32* %515, i32 %518)
  br label %520

520:                                              ; preds = %514, %503
  %521 = load i32*, i32** %4, align 8
  %522 = load i32, i32* %10, align 4
  %523 = call i32 @sqlite3VdbeJumpHere(i32* %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %418
  %525 = load i32*, i32** %4, align 8
  %526 = load i32, i32* %5, align 4
  %527 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %528 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %527, i32 0, i32 8
  %529 = load %struct.TYPE_28__*, %struct.TYPE_28__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %529, i32 0, i32 1
  %531 = load %struct.SrcList_item*, %struct.SrcList_item** %530, align 8
  %532 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %532, i32 0, i32 10
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %531, i64 %534
  %536 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %535, i32 0, i32 3
  %537 = load %struct.TYPE_27__*, %struct.TYPE_27__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = sext i32 %539 to i64
  %541 = inttoptr i64 %540 to i32*
  %542 = call i32 @VdbeModuleComment(i32* %541)
  br label %543

543:                                              ; preds = %524
  %544 = load i32, i32* %5, align 4
  %545 = add nsw i32 %544, -1
  store i32 %545, i32* %5, align 4
  br label %46

546:                                              ; preds = %46
  %547 = load i32*, i32** %4, align 8
  %548 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %549 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %548, i32 0, i32 7
  %550 = load i32, i32* %549, align 8
  %551 = call i32 @sqlite3VdbeResolveLabel(i32* %547, i32 %550)
  %552 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %553 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %556 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp sle i32 %554, %557
  %559 = zext i1 %558 to i32
  %560 = call i32 @assert(i32 %559)
  store i32 0, i32* %5, align 4
  %561 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %562 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %561, i32 0, i32 6
  %563 = load %struct.TYPE_38__*, %struct.TYPE_38__** %562, align 8
  store %struct.TYPE_38__* %563, %struct.TYPE_38__** %6, align 8
  br label %564

564:                                              ; preds = %798, %546
  %565 = load i32, i32* %5, align 4
  %566 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %567 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = icmp slt i32 %565, %568
  br i1 %569, label %570, label %803

570:                                              ; preds = %564
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %23, align 8
  %571 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %572 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %571, i32 0, i32 1
  %573 = load %struct.SrcList_item*, %struct.SrcList_item** %572, align 8
  %574 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %574, i32 0, i32 10
  %576 = load i64, i64* %575, align 8
  %577 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %573, i64 %576
  store %struct.SrcList_item* %577, %struct.SrcList_item** %24, align 8
  %578 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %579 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %578, i32 0, i32 3
  %580 = load %struct.TYPE_27__*, %struct.TYPE_27__** %579, align 8
  store %struct.TYPE_27__* %580, %struct.TYPE_27__** %25, align 8
  %581 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %582 = icmp ne %struct.TYPE_27__* %581, null
  %583 = zext i1 %582 to i32
  %584 = call i32 @assert(i32 %583)
  %585 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %585, i32 0, i32 14
  %587 = load %struct.TYPE_37__*, %struct.TYPE_37__** %586, align 8
  store %struct.TYPE_37__* %587, %struct.TYPE_37__** %7, align 8
  %588 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %589 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %588, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %611

593:                                              ; preds = %570
  %594 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %594, i32 0, i32 2
  %596 = load %struct.TYPE_36__*, %struct.TYPE_36__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = call i32 @testcase(i32 %598)
  %600 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %601 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %602 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %601, i32 0, i32 12
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %604, i32 0, i32 9
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %608 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @translateColumnToCopy(%struct.TYPE_29__* %600, i32 %603, i64 %606, i32 %609, i32 0)
  br label %798

611:                                              ; preds = %570
  %612 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %613 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 8
  %615 = load i32, i32* @WHERE_INDEXED, align 4
  %616 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %617 = or i32 %615, %616
  %618 = and i32 %614, %617
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %626

620:                                              ; preds = %611
  %621 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %622 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %623, i32 0, i32 1
  %625 = load %struct.TYPE_30__*, %struct.TYPE_30__** %624, align 8
  store %struct.TYPE_30__* %625, %struct.TYPE_30__** %23, align 8
  br label %639

626:                                              ; preds = %611
  %627 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %628 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @WHERE_MULTI_OR, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %626
  %634 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %635 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %634, i32 0, i32 13
  %636 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %635, i32 0, i32 0
  %637 = load %struct.TYPE_30__*, %struct.TYPE_30__** %636, align 8
  store %struct.TYPE_30__* %637, %struct.TYPE_30__** %23, align 8
  br label %638

638:                                              ; preds = %633, %626
  br label %639

639:                                              ; preds = %638, %620
  %640 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %641 = icmp ne %struct.TYPE_30__* %640, null
  br i1 %641, label %642, label %797

642:                                              ; preds = %639
  %643 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %644 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %643, i32 0, i32 3
  %645 = load i64, i64* %644, align 8
  %646 = load i64, i64* @ONEPASS_OFF, align 8
  %647 = icmp eq i64 %645, %646
  br i1 %647, label %654, label %648

648:                                              ; preds = %642
  %649 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %650 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %649, i32 0, i32 2
  %651 = load %struct.TYPE_27__*, %struct.TYPE_27__** %650, align 8
  %652 = call i32 @HasRowid(%struct.TYPE_27__* %651)
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %797, label %654

654:                                              ; preds = %648, %642
  %655 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %656 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %655, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %797, label %659

659:                                              ; preds = %654
  %660 = load i32*, i32** %4, align 8
  %661 = call i32 @sqlite3VdbeCurrentAddr(i32* %660)
  store i32 %661, i32* %21, align 4
  %662 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %663 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %662, i32 0, i32 12
  %664 = load i32, i32* %663, align 4
  store i32 %664, i32* %20, align 4
  %665 = load i32*, i32** %4, align 8
  %666 = load i32, i32* %20, align 4
  %667 = call %struct.TYPE_26__* @sqlite3VdbeGetOp(i32* %665, i32 %666)
  store %struct.TYPE_26__* %667, %struct.TYPE_26__** %22, align 8
  br label %668

668:                                              ; preds = %791, %659
  %669 = load i32, i32* %20, align 4
  %670 = load i32, i32* %21, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %796

672:                                              ; preds = %668
  %673 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %674 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %673, i32 0, i32 0
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %677 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %676, i32 0, i32 9
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 %675, %678
  br i1 %679, label %680, label %681

680:                                              ; preds = %672
  br label %791

681:                                              ; preds = %672
  %682 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %683 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %682, i32 0, i32 1
  %684 = load i64, i64* %683, align 8
  %685 = load i64, i64* @OP_Column, align 8
  %686 = icmp eq i64 %684, %685
  br i1 %686, label %687, label %753

687:                                              ; preds = %681
  %688 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %689 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %688, i32 0, i32 2
  %690 = load i32, i32* %689, align 8
  store i32 %690, i32* %26, align 4
  %691 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %692 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %691, i32 0, i32 2
  %693 = load %struct.TYPE_27__*, %struct.TYPE_27__** %692, align 8
  %694 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %695 = icmp eq %struct.TYPE_27__* %693, %694
  %696 = zext i1 %695 to i32
  %697 = call i32 @assert(i32 %696)
  %698 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %699 = call i32 @HasRowid(%struct.TYPE_27__* %698)
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %715, label %701

701:                                              ; preds = %687
  %702 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %703 = call %struct.TYPE_30__* @sqlite3PrimaryKeyIndex(%struct.TYPE_27__* %702)
  store %struct.TYPE_30__* %703, %struct.TYPE_30__** %27, align 8
  %704 = load %struct.TYPE_30__*, %struct.TYPE_30__** %27, align 8
  %705 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %704, i32 0, i32 1
  %706 = load i32*, i32** %705, align 8
  %707 = load i32, i32* %26, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, i32* %706, i64 %708
  %710 = load i32, i32* %709, align 4
  store i32 %710, i32* %26, align 4
  %711 = load i32, i32* %26, align 4
  %712 = icmp sge i32 %711, 0
  %713 = zext i1 %712 to i32
  %714 = call i32 @assert(i32 %713)
  br label %715

715:                                              ; preds = %701, %687
  %716 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %717 = load i32, i32* %26, align 4
  %718 = call i32 @sqlite3ColumnOfIndex(%struct.TYPE_30__* %716, i32 %717)
  store i32 %718, i32* %26, align 4
  %719 = load i32, i32* %26, align 4
  %720 = icmp sge i32 %719, 0
  br i1 %720, label %721, label %734

721:                                              ; preds = %715
  %722 = load i32, i32* %26, align 4
  %723 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %724 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %723, i32 0, i32 2
  store i32 %722, i32* %724, align 8
  %725 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %726 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %725, i32 0, i32 1
  %727 = load i64, i64* %726, align 8
  %728 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %729 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %728, i32 0, i32 0
  store i64 %727, i64* %729, align 8
  %730 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %731 = load i32, i32* %20, align 4
  %732 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %733 = call i32 @OpcodeRewriteTrace(%struct.TYPE_36__* %730, i32 %731, %struct.TYPE_26__* %732)
  br label %734

734:                                              ; preds = %721, %715
  %735 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %736 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %735, i32 0, i32 0
  %737 = load i32, i32* %736, align 8
  %738 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %739 = and i32 %737, %738
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %734
  %742 = load i32, i32* %26, align 4
  %743 = icmp sge i32 %742, 0
  br i1 %743, label %749, label %744

744:                                              ; preds = %741
  %745 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %746 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %745, i32 0, i32 3
  %747 = load i64, i64* %746, align 8
  %748 = icmp ne i64 %747, 0
  br label %749

749:                                              ; preds = %744, %741, %734
  %750 = phi i1 [ true, %741 ], [ true, %734 ], [ %748, %744 ]
  %751 = zext i1 %750 to i32
  %752 = call i32 @assert(i32 %751)
  br label %790

753:                                              ; preds = %681
  %754 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %755 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %754, i32 0, i32 1
  %756 = load i64, i64* %755, align 8
  %757 = load i64, i64* @OP_Rowid, align 8
  %758 = icmp eq i64 %756, %757
  br i1 %758, label %759, label %772

759:                                              ; preds = %753
  %760 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %761 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %760, i32 0, i32 1
  %762 = load i64, i64* %761, align 8
  %763 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %764 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %763, i32 0, i32 0
  store i64 %762, i64* %764, align 8
  %765 = load i64, i64* @OP_IdxRowid, align 8
  %766 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %767 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %766, i32 0, i32 1
  store i64 %765, i64* %767, align 8
  %768 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %769 = load i32, i32* %20, align 4
  %770 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %771 = call i32 @OpcodeRewriteTrace(%struct.TYPE_36__* %768, i32 %769, %struct.TYPE_26__* %770)
  br label %789

772:                                              ; preds = %753
  %773 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %774 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %773, i32 0, i32 1
  %775 = load i64, i64* %774, align 8
  %776 = load i64, i64* @OP_IfNullRow, align 8
  %777 = icmp eq i64 %775, %776
  br i1 %777, label %778, label %788

778:                                              ; preds = %772
  %779 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %780 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %779, i32 0, i32 1
  %781 = load i64, i64* %780, align 8
  %782 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %783 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %782, i32 0, i32 0
  store i64 %781, i64* %783, align 8
  %784 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %785 = load i32, i32* %20, align 4
  %786 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %787 = call i32 @OpcodeRewriteTrace(%struct.TYPE_36__* %784, i32 %785, %struct.TYPE_26__* %786)
  br label %788

788:                                              ; preds = %778, %772
  br label %789

789:                                              ; preds = %788, %759
  br label %790

790:                                              ; preds = %789, %749
  br label %791

791:                                              ; preds = %790, %680
  %792 = load i32, i32* %20, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %20, align 4
  %794 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %795 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %794, i32 1
  store %struct.TYPE_26__* %795, %struct.TYPE_26__** %22, align 8
  br label %668

796:                                              ; preds = %668
  br label %797

797:                                              ; preds = %796, %654, %648, %639
  br label %798

798:                                              ; preds = %797, %593
  %799 = load i32, i32* %5, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %5, align 4
  %801 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %802 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %801, i32 1
  store %struct.TYPE_38__* %802, %struct.TYPE_38__** %6, align 8
  br label %564

803:                                              ; preds = %564
  %804 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %805 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %804, i32 0, i32 5
  %806 = load i32, i32* %805, align 8
  %807 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %808 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %807, i32 0, i32 1
  store i32 %806, i32* %808, align 4
  %809 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %810 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %811 = call i32 @whereInfoFree(%struct.TYPE_36__* %809, %struct.TYPE_39__* %810)
  ret void
}

declare dso_local i32 @VdbeModuleComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i64, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @translateColumnToCopy(%struct.TYPE_29__*, i32, i64, i32, i32) #1

declare dso_local i32 @HasRowid(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local %struct.TYPE_30__* @sqlite3PrimaryKeyIndex(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3ColumnOfIndex(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @OpcodeRewriteTrace(%struct.TYPE_36__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @whereInfoFree(%struct.TYPE_36__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
