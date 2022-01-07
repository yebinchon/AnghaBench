; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_resolveSelectStep.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_resolveSelectStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { %struct.TYPE_35__*, %struct.TYPE_44__ }
%struct.TYPE_35__ = type { i8*, i64, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_39__, %struct.TYPE_45__*, i64, %struct.TYPE_34__*, %struct.TYPE_35__* }
%struct.TYPE_39__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_45__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i8*, %struct.TYPE_34__*, %struct.TYPE_42__, %struct.TYPE_41__ }
%struct.TYPE_42__ = type { %struct.TYPE_40__* }
%struct.TYPE_41__ = type { i32, i64 }
%struct.TYPE_34__ = type { i32, i64, %struct.TYPE_34__*, %struct.TYPE_38__*, %struct.TYPE_40__*, %struct.TYPE_47__*, %struct.TYPE_45__*, i32, i32, %struct.TYPE_37__*, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_47__ = type { %struct.TYPE_40__*, %struct.TYPE_40__*, %struct.TYPE_47__* }
%struct.TYPE_37__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@SF_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@SF_Expanded = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@SF_Converted = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@NC_AllowWin = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@NC_MinMaxAgg = common dso_local global i32 0, align 4
@SF_MinMaxAgg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"a GROUP BY clause is required before HAVING\00", align 1
@NC_UAggInfo = common dso_local global i32 0, align 4
@NC_UUpsert = common dso_local global i32 0, align 4
@NC_UEList = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ORDER\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@EP_Agg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"aggregate functions are not allowed in the GROUP BY clause\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_48__*, %struct.TYPE_34__*)* @resolveSelectStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveSelectStep(%struct.TYPE_48__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.SrcList_item*, align 8
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.SrcList_item*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca %struct.ExprList_item*, align 8
  %23 = alloca %struct.TYPE_47__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %25 = icmp ne %struct.TYPE_34__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SF_Resolved, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @WRC_Prune, align 4
  store i32 %35, i32* %3, align 4
  br label %602

36:                                               ; preds = %2
  %37 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %39, align 8
  store %struct.TYPE_36__* %40, %struct.TYPE_36__** %6, align 8
  %41 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  store %struct.TYPE_35__* %43, %struct.TYPE_35__** %10, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_46__*, %struct.TYPE_46__** %45, align 8
  store %struct.TYPE_46__* %46, %struct.TYPE_46__** %14, align 8
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SF_Expanded, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %36
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %57 = call i32 @sqlite3SelectPrep(%struct.TYPE_35__* %54, %struct.TYPE_34__* %55, %struct.TYPE_36__* %56)
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %53
  %68 = load i32, i32* @WRC_Abort, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @WRC_Prune, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %3, align 4
  br label %602

73:                                               ; preds = %36
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %75, align 8
  %77 = icmp ne %struct.TYPE_34__* %76, null
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_34__* %79, %struct.TYPE_34__** %13, align 8
  br label %80

80:                                               ; preds = %584, %73
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %82 = icmp ne %struct.TYPE_34__* %81, null
  br i1 %82, label %83, label %590

83:                                               ; preds = %80
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SF_Expanded, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SF_Resolved, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* @SF_Resolved, align 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = call i32 @memset(%struct.TYPE_36__* %7, i32 0, i32 56)
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 6
  store %struct.TYPE_35__* %106, %struct.TYPE_35__** %107, align 8
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 5
  store %struct.TYPE_34__* %108, %struct.TYPE_34__** %109, align 8
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %83
  %116 = load i32, i32* @WRC_Abort, align 4
  store i32 %116, i32* %3, align 4
  br label %602

117:                                              ; preds = %83
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SF_Converted, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %117
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %127, i32 0, i32 1
  %129 = load %struct.SrcList_item*, %struct.SrcList_item** %128, align 8
  %130 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %129, i64 0
  %131 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %130, i32 0, i32 1
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %131, align 8
  store %struct.TYPE_34__* %132, %struct.TYPE_34__** %15, align 8
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_45__*, %struct.TYPE_45__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %139, %124
  %145 = phi i1 [ false, %124 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %149, align 8
  %151 = icmp ne %struct.TYPE_34__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br label %157

157:                                              ; preds = %152, %144
  %158 = phi i1 [ false, %144 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %157, %117
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %279, %168
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_45__*, %struct.TYPE_45__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %170, %175
  br i1 %176, label %177, label %282

177:                                              ; preds = %169
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_45__*, %struct.TYPE_45__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %180, i32 0, i32 1
  %182 = load %struct.SrcList_item*, %struct.SrcList_item** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %182, i64 %184
  store %struct.SrcList_item* %185, %struct.SrcList_item** %16, align 8
  %186 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %187 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %186, i32 0, i32 1
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %187, align 8
  %189 = icmp ne %struct.TYPE_34__* %188, null
  br i1 %189, label %190, label %278

190:                                              ; preds = %177
  store i32 0, i32* %18, align 4
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %19, align 8
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %194, %struct.TYPE_36__** %17, align 8
  br label %195

195:                                              ; preds = %206, %190
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %197 = icmp ne %struct.TYPE_36__* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %198
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %208, align 8
  store %struct.TYPE_36__* %209, %struct.TYPE_36__** %17, align 8
  br label %195

210:                                              ; preds = %195
  %211 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %212 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %217 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %215, %210
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %223 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %224 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %223, i32 0, i32 1
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %224, align 8
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %227 = call i32 @sqlite3ResolveSelectNames(%struct.TYPE_35__* %222, %struct.TYPE_34__* %225, %struct.TYPE_36__* %226)
  %228 = load i8*, i8** %19, align 8
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %221
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235, %221
  %241 = load i32, i32* @WRC_Abort, align 4
  store i32 %241, i32* %3, align 4
  br label %602

242:                                              ; preds = %235
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %243, %struct.TYPE_36__** %17, align 8
  br label %244

244:                                              ; preds = %255, %242
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %246 = icmp ne %struct.TYPE_36__* %245, null
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  %248 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = sub nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %18, align 4
  br label %255

255:                                              ; preds = %247
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %257, align 8
  store %struct.TYPE_36__* %258, %struct.TYPE_36__** %17, align 8
  br label %244

259:                                              ; preds = %244
  %260 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %261 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i32, i32* %18, align 4
  %267 = icmp sle i32 %266, 0
  br label %268

268:                                              ; preds = %265, %259
  %269 = phi i1 [ false, %259 ], [ %267, %265 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i32
  %275 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %276 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  br label %278

278:                                              ; preds = %268, %177
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %169

282:                                              ; preds = %169
  %283 = load i32, i32* @NC_AllowAgg, align 4
  %284 = load i32, i32* @NC_AllowWin, align 4
  %285 = or i32 %283, %284
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  store i32 %285, i32* %286, align 8
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 6
  %289 = load %struct.TYPE_45__*, %struct.TYPE_45__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 3
  store %struct.TYPE_45__* %289, %struct.TYPE_45__** %290, align 8
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  store %struct.TYPE_36__* %291, %struct.TYPE_36__** %292, align 8
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %294, align 8
  %296 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %282
  %299 = load i32, i32* @WRC_Abort, align 4
  store i32 %299, i32* %3, align 4
  br label %602

300:                                              ; preds = %282
  %301 = load i32, i32* @NC_AllowWin, align 4
  %302 = xor i32 %301, -1
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, %302
  store i32 %305, i32* %303, align 8
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @SF_Aggregate, align 4
  %310 = and i32 %308, %309
  %311 = icmp eq i32 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %314, i32 0, i32 9
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %315, align 8
  store %struct.TYPE_37__* %316, %struct.TYPE_37__** %12, align 8
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %318 = icmp ne %struct.TYPE_37__* %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %300
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @NC_HasAgg, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %319, %300
  %326 = load i32, i32* @NC_MinMaxAgg, align 4
  %327 = load i32, i32* @SF_MinMaxAgg, align 4
  %328 = icmp eq i32 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  %331 = load i32, i32* @SF_Aggregate, align 4
  %332 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @NC_MinMaxAgg, align 4
  %335 = and i32 %333, %334
  %336 = or i32 %331, %335
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 8
  br label %347

341:                                              ; preds = %319
  %342 = load i32, i32* @NC_AllowAgg, align 4
  %343 = xor i32 %342, -1
  %344 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, %343
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %341, %325
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %354 = icmp ne %struct.TYPE_37__* %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %352
  %356 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %357 = call i32 @sqlite3ErrorMsg(%struct.TYPE_35__* %356, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %358 = load i32, i32* @WRC_Abort, align 4
  store i32 %358, i32* %3, align 4
  br label %602

359:                                              ; preds = %352, %347
  %360 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @NC_UAggInfo, align 4
  %363 = load i32, i32* @NC_UUpsert, align 4
  %364 = or i32 %362, %363
  %365 = and i32 %361, %364
  %366 = icmp eq i32 %365, 0
  %367 = zext i1 %366 to i32
  %368 = call i32 @assert(i32 %367)
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 4
  %371 = load %struct.TYPE_40__*, %struct.TYPE_40__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %372, i32 0, i32 0
  store %struct.TYPE_40__* %371, %struct.TYPE_40__** %373, align 8
  %374 = load i32, i32* @NC_UEList, align 4
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %374
  store i32 %377, i32* %375, align 8
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 8
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %359
  %384 = load i32, i32* @WRC_Abort, align 4
  store i32 %384, i32* %3, align 4
  br label %602

385:                                              ; preds = %359
  %386 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 8
  %389 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = load i32, i32* @WRC_Abort, align 4
  store i32 %392, i32* %3, align 4
  br label %602

393:                                              ; preds = %385
  store i32 0, i32* %11, align 4
  br label %394

394:                                              ; preds = %426, %393
  %395 = load i32, i32* %11, align 4
  %396 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %396, i32 0, i32 6
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp slt i32 %395, %400
  br i1 %401, label %402, label %429

402:                                              ; preds = %394
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %403, i32 0, i32 6
  %405 = load %struct.TYPE_45__*, %struct.TYPE_45__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %405, i32 0, i32 1
  %407 = load %struct.SrcList_item*, %struct.SrcList_item** %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %407, i64 %409
  store %struct.SrcList_item* %410, %struct.SrcList_item** %20, align 8
  %411 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %412 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %425

416:                                              ; preds = %402
  %417 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %418 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_40__*, %struct.TYPE_40__** %419, align 8
  %421 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %416
  %424 = load i32, i32* @WRC_Abort, align 4
  store i32 %424, i32* %3, align 4
  br label %602

425:                                              ; preds = %416, %402
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %11, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %11, align 4
  br label %394

429:                                              ; preds = %394
  %430 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %430, align 8
  %431 = load i32, i32* @NC_AllowAgg, align 4
  %432 = load i32, i32* @NC_AllowWin, align 4
  %433 = or i32 %431, %432
  %434 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %433
  store i32 %436, i32* %434, align 8
  %437 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @SF_Converted, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %459

443:                                              ; preds = %429
  %444 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %444, i32 0, i32 6
  %446 = load %struct.TYPE_45__*, %struct.TYPE_45__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %446, i32 0, i32 1
  %448 = load %struct.SrcList_item*, %struct.SrcList_item** %447, align 8
  %449 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %448, i64 0
  %450 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %449, i32 0, i32 1
  %451 = load %struct.TYPE_34__*, %struct.TYPE_34__** %450, align 8
  store %struct.TYPE_34__* %451, %struct.TYPE_34__** %21, align 8
  %452 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %453 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %455, i32 0, i32 1
  store i64 %454, i64* %456, align 8
  %457 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %458 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %457, i32 0, i32 1
  store i64 0, i64* %458, align 8
  br label %459

459:                                              ; preds = %443, %429
  %460 = load i32, i32* %8, align 4
  %461 = load i32, i32* %9, align 4
  %462 = icmp sle i32 %460, %461
  br i1 %462, label %463, label %473

463:                                              ; preds = %459
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %465 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = inttoptr i64 %467 to %struct.TYPE_37__*
  %469 = call i64 @resolveOrderGroupBy(%struct.TYPE_36__* %7, %struct.TYPE_34__* %464, %struct.TYPE_37__* %468, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %463
  %472 = load i32, i32* @WRC_Abort, align 4
  store i32 %472, i32* %3, align 4
  br label %602

473:                                              ; preds = %463, %459
  %474 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %475 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %473
  %479 = load i32, i32* @WRC_Abort, align 4
  store i32 %479, i32* %3, align 4
  br label %602

480:                                              ; preds = %473
  %481 = load i32, i32* @NC_AllowWin, align 4
  %482 = xor i32 %481, -1
  %483 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = and i32 %484, %482
  store i32 %485, i32* %483, align 8
  %486 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %487 = icmp ne %struct.TYPE_37__* %486, null
  br i1 %487, label %488, label %528

488:                                              ; preds = %480
  %489 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %490 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %491 = call i64 @resolveOrderGroupBy(%struct.TYPE_36__* %7, %struct.TYPE_34__* %489, %struct.TYPE_37__* %490, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %488
  %494 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %495 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %493, %488
  %499 = load i32, i32* @WRC_Abort, align 4
  store i32 %499, i32* %3, align 4
  br label %602

500:                                              ; preds = %493
  store i32 0, i32* %11, align 4
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %502 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %501, i32 0, i32 1
  %503 = load %struct.ExprList_item*, %struct.ExprList_item** %502, align 8
  store %struct.ExprList_item* %503, %struct.ExprList_item** %22, align 8
  br label %504

504:                                              ; preds = %522, %500
  %505 = load i32, i32* %11, align 4
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %507 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp slt i32 %505, %508
  br i1 %509, label %510, label %527

510:                                              ; preds = %504
  %511 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %512 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @EP_Agg, align 4
  %515 = call i64 @ExprHasProperty(i32 %513, i32 %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %510
  %518 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %519 = call i32 @sqlite3ErrorMsg(%struct.TYPE_35__* %518, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %520 = load i32, i32* @WRC_Abort, align 4
  store i32 %520, i32* %3, align 4
  br label %602

521:                                              ; preds = %510
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %11, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %11, align 4
  %525 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %526 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %525, i32 1
  store %struct.ExprList_item* %526, %struct.ExprList_item** %22, align 8
  br label %504

527:                                              ; preds = %504
  br label %528

528:                                              ; preds = %527, %480
  %529 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %558

531:                                              ; preds = %528
  %532 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %532, i32 0, i32 5
  %534 = load %struct.TYPE_47__*, %struct.TYPE_47__** %533, align 8
  store %struct.TYPE_47__* %534, %struct.TYPE_47__** %23, align 8
  br label %535

535:                                              ; preds = %553, %531
  %536 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %537 = icmp ne %struct.TYPE_47__* %536, null
  br i1 %537, label %538, label %557

538:                                              ; preds = %535
  %539 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %540 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %539, i32 0, i32 1
  %541 = load %struct.TYPE_40__*, %struct.TYPE_40__** %540, align 8
  %542 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %550, label %544

544:                                              ; preds = %538
  %545 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %546 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %545, i32 0, i32 0
  %547 = load %struct.TYPE_40__*, %struct.TYPE_40__** %546, align 8
  %548 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %544, %538
  %551 = load i32, i32* @WRC_Abort, align 4
  store i32 %551, i32* %3, align 4
  br label %602

552:                                              ; preds = %544
  br label %553

553:                                              ; preds = %552
  %554 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %555 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %554, i32 0, i32 2
  %556 = load %struct.TYPE_47__*, %struct.TYPE_47__** %555, align 8
  store %struct.TYPE_47__* %556, %struct.TYPE_47__** %23, align 8
  br label %535

557:                                              ; preds = %535
  br label %558

558:                                              ; preds = %557, %528
  %559 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %559, i32 0, i32 3
  %561 = load %struct.TYPE_38__*, %struct.TYPE_38__** %560, align 8
  %562 = icmp ne %struct.TYPE_38__* %561, null
  br i1 %562, label %563, label %584

563:                                              ; preds = %558
  %564 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %565 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %564, i32 0, i32 4
  %566 = load %struct.TYPE_40__*, %struct.TYPE_40__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %569, i32 0, i32 3
  %571 = load %struct.TYPE_38__*, %struct.TYPE_38__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %571, i32 0, i32 0
  %573 = load %struct.TYPE_43__*, %struct.TYPE_43__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %568, %575
  br i1 %576, label %577, label %584

577:                                              ; preds = %563
  %578 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %579 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %580 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %579, i32 0, i32 3
  %581 = load %struct.TYPE_38__*, %struct.TYPE_38__** %580, align 8
  %582 = call i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_35__* %578, %struct.TYPE_38__* %581)
  %583 = load i32, i32* @WRC_Abort, align 4
  store i32 %583, i32* %3, align 4
  br label %602

584:                                              ; preds = %563, %558
  %585 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %585, i32 0, i32 2
  %587 = load %struct.TYPE_34__*, %struct.TYPE_34__** %586, align 8
  store %struct.TYPE_34__* %587, %struct.TYPE_34__** %5, align 8
  %588 = load i32, i32* %9, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %9, align 4
  br label %80

590:                                              ; preds = %80
  %591 = load i32, i32* %8, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %600

593:                                              ; preds = %590
  %594 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %595 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %596 = call i64 @resolveCompoundOrderBy(%struct.TYPE_35__* %594, %struct.TYPE_34__* %595)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %593
  %599 = load i32, i32* @WRC_Abort, align 4
  store i32 %599, i32* %3, align 4
  br label %602

600:                                              ; preds = %593, %590
  %601 = load i32, i32* @WRC_Prune, align 4
  store i32 %601, i32* %3, align 4
  br label %602

602:                                              ; preds = %600, %598, %577, %550, %517, %498, %478, %471, %423, %391, %383, %355, %298, %240, %115, %71, %34
  %603 = load i32, i32* %3, align 4
  ret i32 %603
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @memset(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3ResolveSelectNames(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__*, %struct.TYPE_40__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_35__*, i8*) #1

declare dso_local i64 @resolveOrderGroupBy(%struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_37__*, i8*) #1

declare dso_local i64 @ExprHasProperty(i32, i32) #1

declare dso_local i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_35__*, %struct.TYPE_38__*) #1

declare dso_local i64 @resolveCompoundOrderBy(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
