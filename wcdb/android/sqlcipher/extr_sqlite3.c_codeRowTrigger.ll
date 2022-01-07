; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_codeRowTrigger.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_codeRowTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i32*, %struct.TYPE_36__*, %struct.TYPE_38__*, %struct.TYPE_35__* }
%struct.TYPE_38__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_35__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_39__*, %struct.TYPE_37__*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_36__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__* }

@.str = private unnamed_addr constant [31 x i8] c"Start: %s.%s (%s %s%s%s ON %s)\00", align 1
@TRIGGER_BEFORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@TK_UPDATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TK_INSERT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@TK_DELETE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"-- TRIGGER %s\00", align 1
@P4_DYNAMIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"End: %s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_35__* (%struct.TYPE_39__*, %struct.TYPE_36__*, %struct.TYPE_37__*, i32)* @codeRowTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_35__* @codeRowTrigger(%struct.TYPE_39__* %0, %struct.TYPE_36__* %1, %struct.TYPE_37__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_40__, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %7, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %20 = call %struct.TYPE_39__* @sqlite3ParseToplevel(%struct.TYPE_39__* %19)
  store %struct.TYPE_39__* %20, %struct.TYPE_39__** %10, align 8
  %21 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %21, i32 0, i32 16
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  store %struct.TYPE_34__* %23, %struct.TYPE_34__** %11, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %16, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %31 = call %struct.TYPE_37__* @tableOfTrigger(%struct.TYPE_36__* %30)
  %32 = icmp eq %struct.TYPE_37__* %29, %31
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ true, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %42 = call i8* @sqlite3DbMallocZero(%struct.TYPE_34__* %41, i32 40)
  %43 = bitcast i8* %42 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %43, %struct.TYPE_35__** %12, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %45 = icmp ne %struct.TYPE_35__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %5, align 8
  br label %325

47:                                               ; preds = %33
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %49, align 8
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 4
  store %struct.TYPE_35__* %50, %struct.TYPE_35__** %52, align 8
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 6
  store %struct.TYPE_35__* %53, %struct.TYPE_35__** %55, align 8
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %57 = call i8* @sqlite3DbMallocZero(%struct.TYPE_34__* %56, i32 24)
  %58 = bitcast i8* %57 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %58, %struct.TYPE_38__** %16, align 8
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 3
  store %struct.TYPE_38__* %58, %struct.TYPE_38__** %60, align 8
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %62 = icmp ne %struct.TYPE_38__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %47
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %5, align 8
  br label %325

64:                                               ; preds = %47
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %69 = call i32 @sqlite3VdbeLinkSubProgram(i32 %67, %struct.TYPE_38__* %68)
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 2
  store %struct.TYPE_36__* %70, %struct.TYPE_36__** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 -1, i32* %79, align 4
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %85 = call %struct.TYPE_39__* @sqlite3StackAllocZero(%struct.TYPE_34__* %84, i32 104)
  store %struct.TYPE_39__* %85, %struct.TYPE_39__** %17, align 8
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %87 = icmp ne %struct.TYPE_39__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %64
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %5, align 8
  br label %325

89:                                               ; preds = %64
  %90 = call i32 @memset(%struct.TYPE_40__* %15, i32 0, i32 8)
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 0
  store %struct.TYPE_39__* %91, %struct.TYPE_39__** %92, align 8
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %94 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %94, i32 0, i32 16
  store %struct.TYPE_34__* %93, %struct.TYPE_34__** %95, align 8
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 15
  store %struct.TYPE_37__* %96, %struct.TYPE_37__** %98, align 8
  %99 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %100 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %100, i32 0, i32 14
  store %struct.TYPE_39__* %99, %struct.TYPE_39__** %101, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 12
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %123 = call i32* @sqlite3GetVdbe(%struct.TYPE_39__* %122)
  store i32* %123, i32** %14, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %290

126:                                              ; preds = %89
  %127 = load i32*, i32** %14, align 8
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @onErrorText(i32 %131)
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TRIGGER_BEFORE, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TK_UPDATE, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TK_INSERT, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TK_DELETE, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i32*
  %166 = call i32 @VdbeComment(i32* %165)
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %126
  %172 = load i32*, i32** %14, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @sqlite3MPrintf(%struct.TYPE_34__* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @P4_DYNAMIC, align 4
  %179 = call i32 @sqlite3VdbeChangeP4(i32* %172, i32 -1, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %126
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32* @sqlite3ExprDup(%struct.TYPE_34__* %186, i32 %189, i32 0)
  store i32* %190, i32** %13, align 8
  %191 = load i64, i64* @SQLITE_OK, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_40__* %15, i32* %192)
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %185
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %202 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_39__* %201)
  store i32 %202, i32* %18, align 4
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %207 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_39__* %203, i32* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %200, %195, %185
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = call i32 @sqlite3ExprDelete(%struct.TYPE_34__* %209, i32* %210)
  br label %212

212:                                              ; preds = %208, %180
  %213 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @codeTriggerProgram(%struct.TYPE_39__* %213, i32 %216, i32 %217)
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %212
  %222 = load i32*, i32** %14, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @sqlite3VdbeResolveLabel(i32* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %212
  %226 = load i32*, i32** %14, align 8
  %227 = load i32, i32* @OP_Halt, align 4
  %228 = call i32 @sqlite3VdbeAddOp0(i32* %226, i32 %227)
  %229 = load i32*, i32** %14, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @onErrorText(i32 %233)
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i32*
  %237 = call i32 @VdbeComment(i32* %236)
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %239 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %240 = call i32 @transferParseError(%struct.TYPE_39__* %238, %struct.TYPE_39__* %239)
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %225
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %245
  %251 = load i32*, i32** %14, align 8
  %252 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %254, i32 0, i32 5
  %256 = call i32 @sqlite3VdbeTakeOpArray(i32* %251, i32* %253, i32* %255)
  %257 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %250, %245, %225
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %271 = bitcast %struct.TYPE_36__* %270 to i8*
  %272 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  store i32 %276, i32* %280, align 4
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32 %283, i32* %287, align 4
  %288 = load i32*, i32** %14, align 8
  %289 = call i32 @sqlite3VdbeDelete(i32* %288)
  br label %290

290:                                              ; preds = %259, %89
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %290
  %296 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  br label %301

301:                                              ; preds = %295, %290
  %302 = phi i1 [ false, %290 ], [ %300, %295 ]
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %305, i32 0, i32 6
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %306, align 8
  %308 = icmp ne %struct.TYPE_35__* %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %301
  %310 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  br label %315

315:                                              ; preds = %309, %301
  %316 = phi i1 [ false, %301 ], [ %314, %309 ]
  %317 = zext i1 %316 to i32
  %318 = call i32 @assert(i32 %317)
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %320 = call i32 @sqlite3ParserReset(%struct.TYPE_39__* %319)
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %323 = call i32 @sqlite3StackFree(%struct.TYPE_34__* %321, %struct.TYPE_39__* %322)
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  store %struct.TYPE_35__* %324, %struct.TYPE_35__** %5, align 8
  br label %325

325:                                              ; preds = %315, %88, %63, %46
  %326 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  ret %struct.TYPE_35__* %326
}

declare dso_local %struct.TYPE_39__* @sqlite3ParseToplevel(%struct.TYPE_39__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_37__* @tableOfTrigger(%struct.TYPE_36__*) #1

declare dso_local i8* @sqlite3DbMallocZero(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @sqlite3VdbeLinkSubProgram(i32, %struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_39__* @sqlite3StackAllocZero(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_39__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @onErrorText(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3MPrintf(%struct.TYPE_34__*, i8*, i32) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_39__*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @codeTriggerProgram(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @transferParseError(%struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3VdbeTakeOpArray(i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeDelete(i32*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_34__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
