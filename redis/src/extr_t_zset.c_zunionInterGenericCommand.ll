; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zunionInterGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zunionInterGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_60__ = type { i32, i32, i32 }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_69__ = type { i32, %struct.TYPE_59__*, %struct.TYPE_63__** }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_63__ = type { i32 }
%struct.TYPE_67__ = type { i64, %struct.TYPE_66__*, i32 }
%struct.TYPE_66__ = type { %struct.TYPE_58__*, i32* }
%struct.TYPE_58__ = type { i64 }
%struct.TYPE_65__ = type { i64, double, %struct.TYPE_67__*, i32 }
%struct.TYPE_64__ = type { double }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_68__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { double }

@REDIS_AGGR_SUM = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"at least 1 input key is needed for ZUNIONSTORE/ZINTERSTORE\00", align 1
@shared = common dso_local global %struct.TYPE_60__ zeroinitializer, align 4
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"weight value is not a float\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"aggregate\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@REDIS_AGGR_MIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@REDIS_AGGR_MAX = common dso_local global i32 0, align 4
@zuiCompareByCardinality = common dso_local global i32 0, align 4
@SET_OP_INTER = common dso_local global i32 0, align 4
@SET_OP_UNION = common dso_local global i32 0, align 4
@setAccumulatorDictType = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown operator\00", align 1
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"zunionstore\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"zinterstore\00", align 1
@server = common dso_local global %struct.TYPE_61__ zeroinitializer, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zunionInterGenericCommand(%struct.TYPE_69__* %0, %struct.TYPE_67__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_69__*, align 8
  %5 = alloca %struct.TYPE_67__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_65__*, align 8
  %12 = alloca %struct.TYPE_64__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_67__*, align 8
  %16 = alloca %struct.TYPE_66__*, align 8
  %17 = alloca %struct.TYPE_62__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_67__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_68__*, align 8
  %26 = alloca %struct.TYPE_68__*, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_69__* %0, %struct.TYPE_69__** %4, align 8
  store %struct.TYPE_67__* %1, %struct.TYPE_67__** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load i32, i32* @REDIS_AGGR_SUM, align 4
  store i32 %29, i32* %10, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %18, align 4
  %30 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %31 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %33, i64 2
  %35 = load %struct.TYPE_63__*, %struct.TYPE_63__** %34, align 8
  %36 = call i64 @getLongFromObjectOrReply(%struct.TYPE_69__* %30, %struct.TYPE_63__* %35, i64* %9, i32* null)
  %37 = load i64, i64* @C_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %637

40:                                               ; preds = %3
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %45 = call i32 @addReplyError(%struct.TYPE_69__* %44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %637

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @shared, i32 0, i32 1), align 4
  %57 = call i32 @addReply(%struct.TYPE_69__* %55, i32 %56)
  br label %637

58:                                               ; preds = %46
  %59 = load i64, i64* %9, align 8
  %60 = mul i64 32, %59
  %61 = trunc i64 %60 to i32
  %62 = call %struct.TYPE_65__* @zcalloc(i32 %61)
  store %struct.TYPE_65__* %62, %struct.TYPE_65__** %11, align 8
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %63

63:                                               ; preds = %135, %58
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %9, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %140

68:                                               ; preds = %63
  %69 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_59__*, %struct.TYPE_59__** %70, align 8
  %72 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %74, i64 %76
  %78 = load %struct.TYPE_63__*, %struct.TYPE_63__** %77, align 8
  %79 = call %struct.TYPE_67__* @lookupKeyWrite(%struct.TYPE_59__* %71, %struct.TYPE_63__* %78)
  store %struct.TYPE_67__* %79, %struct.TYPE_67__** %19, align 8
  %80 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %81 = icmp ne %struct.TYPE_67__* %80, null
  br i1 %81, label %82, label %123

82:                                               ; preds = %68
  %83 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OBJ_ZSET, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OBJ_SET, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %96 = call i32 @zfree(%struct.TYPE_65__* %95)
  %97 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @shared, i32 0, i32 2), align 4
  %99 = call i32 @addReply(%struct.TYPE_69__* %97, i32 %98)
  br label %637

100:                                              ; preds = %88, %82
  %101 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %102 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %105, i32 0, i32 2
  store %struct.TYPE_67__* %101, %struct.TYPE_67__** %106, align 8
  %107 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = load %struct.TYPE_67__*, %struct.TYPE_67__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %121, i32 0, i32 3
  store i32 %117, i32* %122, align 8
  br label %129

123:                                              ; preds = %68
  %124 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %127, i32 0, i32 2
  store %struct.TYPE_67__* null, %struct.TYPE_67__** %128, align 8
  br label %129

129:                                              ; preds = %123, %100
  %130 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %133, i32 0, i32 1
  store double 1.000000e+00, double* %134, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %63

140:                                              ; preds = %63
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %295

146:                                              ; preds = %140
  %147 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %293, %146
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %294

155:                                              ; preds = %152
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %9, align 8
  %159 = add nsw i64 %158, 1
  %160 = icmp sge i64 %157, %159
  br i1 %160, label %161, label %212

161:                                              ; preds = %155
  %162 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %164, i64 %166
  %168 = load %struct.TYPE_63__*, %struct.TYPE_63__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @strcasecmp(i32 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %212, label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %20, align 4
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %204, %173
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %9, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %178
  %184 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %185 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %187, i64 %189
  %191 = load %struct.TYPE_63__*, %struct.TYPE_63__** %190, align 8
  %192 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %195, i32 0, i32 1
  %197 = call i64 @getDoubleFromObjectOrReply(%struct.TYPE_69__* %184, %struct.TYPE_63__* %191, double* %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %198 = load i64, i64* @C_OK, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %183
  %201 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %202 = call i32 @zfree(%struct.TYPE_65__* %201)
  br label %637

203:                                              ; preds = %183
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %20, align 4
  br label %178

211:                                              ; preds = %178
  br label %293

212:                                              ; preds = %161, %155
  %213 = load i32, i32* %20, align 4
  %214 = icmp sge i32 %213, 2
  br i1 %214, label %215, label %286

215:                                              ; preds = %212
  %216 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %218, i64 %220
  %222 = load %struct.TYPE_63__*, %struct.TYPE_63__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @strcasecmp(i32 %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %286, label %227

227:                                              ; preds = %215
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %20, align 4
  %232 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %234, i64 %236
  %238 = load %struct.TYPE_63__*, %struct.TYPE_63__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @strcasecmp(i32 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %227
  %244 = load i32, i32* @REDIS_AGGR_SUM, align 4
  store i32 %244, i32* %10, align 4
  br label %281

245:                                              ; preds = %227
  %246 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %248, i64 %250
  %252 = load %struct.TYPE_63__*, %struct.TYPE_63__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @strcasecmp(i32 %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %245
  %258 = load i32, i32* @REDIS_AGGR_MIN, align 4
  store i32 %258, i32* %10, align 4
  br label %280

259:                                              ; preds = %245
  %260 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_63__**, %struct.TYPE_63__*** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_63__*, %struct.TYPE_63__** %262, i64 %264
  %266 = load %struct.TYPE_63__*, %struct.TYPE_63__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @strcasecmp(i32 %268, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %259
  %272 = load i32, i32* @REDIS_AGGR_MAX, align 4
  store i32 %272, i32* %10, align 4
  br label %279

273:                                              ; preds = %259
  %274 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %275 = call i32 @zfree(%struct.TYPE_65__* %274)
  %276 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @shared, i32 0, i32 1), align 4
  %278 = call i32 @addReply(%struct.TYPE_69__* %276, i32 %277)
  br label %637

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279, %257
  br label %281

281:                                              ; preds = %280, %243
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %20, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %20, align 4
  br label %292

286:                                              ; preds = %215, %212
  %287 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %288 = call i32 @zfree(%struct.TYPE_65__* %287)
  %289 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @shared, i32 0, i32 1), align 4
  %291 = call i32 @addReply(%struct.TYPE_69__* %289, i32 %290)
  br label %637

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %292, %211
  br label %152

294:                                              ; preds = %152
  br label %295

295:                                              ; preds = %294, %140
  %296 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %297 = load i64, i64* %9, align 8
  %298 = load i32, i32* @zuiCompareByCardinality, align 4
  %299 = call i32 @qsort(%struct.TYPE_65__* %296, i64 %297, i32 32, i32 %298)
  %300 = call %struct.TYPE_67__* (...) @createZsetObject()
  store %struct.TYPE_67__* %300, %struct.TYPE_67__** %15, align 8
  %301 = load %struct.TYPE_67__*, %struct.TYPE_67__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_66__*, %struct.TYPE_66__** %302, align 8
  store %struct.TYPE_66__* %303, %struct.TYPE_66__** %16, align 8
  %304 = call i32 @memset(%struct.TYPE_64__* %12, i32 0, i32 8)
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* @SET_OP_INTER, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %424

308:                                              ; preds = %295
  %309 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %309, i64 0
  %311 = call i64 @zuiLength(%struct.TYPE_65__* %310)
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %423

313:                                              ; preds = %308
  %314 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %314, i64 0
  %316 = call i32 @zuiInitIterator(%struct.TYPE_65__* %315)
  br label %317

317:                                              ; preds = %418, %313
  %318 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %318, i64 0
  %320 = call i64 @zuiNext(%struct.TYPE_65__* %319, %struct.TYPE_64__* %12)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %419

322:                                              ; preds = %317
  %323 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %324, i32 0, i32 1
  %326 = load double, double* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %12, i32 0, i32 0
  %328 = load double, double* %327, align 8
  %329 = fmul double %326, %328
  store double %329, double* %21, align 8
  %330 = load double, double* %21, align 8
  %331 = call i64 @isnan(double %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %322
  store double 0.000000e+00, double* %21, align 8
  br label %334

334:                                              ; preds = %333, %322
  store i32 1, i32* %8, align 4
  br label %335

335:                                              ; preds = %387, %334
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* %9, align 8
  %339 = icmp slt i64 %337, %338
  br i1 %339, label %340, label %390

340:                                              ; preds = %335
  %341 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_67__*, %struct.TYPE_67__** %345, align 8
  %347 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_67__*, %struct.TYPE_67__** %349, align 8
  %351 = icmp eq %struct.TYPE_67__* %346, %350
  br i1 %351, label %352, label %365

352:                                              ; preds = %340
  %353 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %12, i32 0, i32 0
  %354 = load double, double* %353, align 8
  %355 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %358, i32 0, i32 1
  %360 = load double, double* %359, align 8
  %361 = fmul double %354, %360
  store double %361, double* %22, align 8
  %362 = load double, double* %22, align 8
  %363 = load i32, i32* %10, align 4
  %364 = call i32 @zunionInterAggregate(double* %21, double %362, i32 %363)
  br label %386

365:                                              ; preds = %340
  %366 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %366, i64 %368
  %370 = call i64 @zuiFind(%struct.TYPE_65__* %369, %struct.TYPE_64__* %12, double* %22)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %365
  %373 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %376, i32 0, i32 1
  %378 = load double, double* %377, align 8
  %379 = load double, double* %22, align 8
  %380 = fmul double %379, %378
  store double %380, double* %22, align 8
  %381 = load double, double* %22, align 8
  %382 = load i32, i32* %10, align 4
  %383 = call i32 @zunionInterAggregate(double* %21, double %381, i32 %382)
  br label %385

384:                                              ; preds = %365
  br label %390

385:                                              ; preds = %372
  br label %386

386:                                              ; preds = %385, %352
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %335

390:                                              ; preds = %384, %335
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = load i64, i64* %9, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %418

395:                                              ; preds = %390
  %396 = call i32 @zuiNewSdsFromValue(%struct.TYPE_64__* %12)
  store i32 %396, i32* %13, align 4
  %397 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %398 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_58__*, %struct.TYPE_58__** %398, align 8
  %400 = load double, double* %21, align 8
  %401 = load i32, i32* %13, align 4
  %402 = call %struct.TYPE_62__* @zslInsert(%struct.TYPE_58__* %399, double %400, i32 %401)
  store %struct.TYPE_62__* %402, %struct.TYPE_62__** %17, align 8
  %403 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %13, align 4
  %407 = load %struct.TYPE_62__*, %struct.TYPE_62__** %17, align 8
  %408 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %407, i32 0, i32 0
  %409 = call i32 @dictAdd(i32* %405, i32 %406, i32* %408)
  %410 = load i32, i32* %13, align 4
  %411 = call i64 @sdslen(i32 %410)
  %412 = load i64, i64* %14, align 8
  %413 = icmp ugt i64 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %395
  %415 = load i32, i32* %13, align 4
  %416 = call i64 @sdslen(i32 %415)
  store i64 %416, i64* %14, align 8
  br label %417

417:                                              ; preds = %414, %395
  br label %418

418:                                              ; preds = %417, %390
  br label %317

419:                                              ; preds = %317
  %420 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %420, i64 0
  %422 = call i32 @zuiClearIterator(%struct.TYPE_65__* %421)
  br label %423

423:                                              ; preds = %419, %308
  br label %560

424:                                              ; preds = %295
  %425 = load i32, i32* %6, align 4
  %426 = load i32, i32* @SET_OP_UNION, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %557

428:                                              ; preds = %424
  %429 = call i32* @dictCreate(i32* @setAccumulatorDictType, i32* null)
  store i32* %429, i32** %23, align 8
  %430 = load i64, i64* %9, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %428
  %433 = load i32*, i32** %23, align 8
  %434 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %435 = load i64, i64* %9, align 8
  %436 = sub nsw i64 %435, 1
  %437 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %434, i64 %436
  %438 = call i64 @zuiLength(%struct.TYPE_65__* %437)
  %439 = call i32 @dictExpand(i32* %433, i64 %438)
  br label %440

440:                                              ; preds = %432, %428
  store i32 0, i32* %7, align 4
  br label %441

441:                                              ; preds = %518, %440
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = load i64, i64* %9, align 8
  %445 = icmp slt i64 %443, %444
  br i1 %445, label %446, label %521

446:                                              ; preds = %441
  %447 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %448 = load i32, i32* %7, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %447, i64 %449
  %451 = call i64 @zuiLength(%struct.TYPE_65__* %450)
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %446
  br label %518

454:                                              ; preds = %446
  %455 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %455, i64 %457
  %459 = call i32 @zuiInitIterator(%struct.TYPE_65__* %458)
  br label %460

460:                                              ; preds = %511, %454
  %461 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %462 = load i32, i32* %7, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %461, i64 %463
  %465 = call i64 @zuiNext(%struct.TYPE_65__* %464, %struct.TYPE_64__* %12)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %512

467:                                              ; preds = %460
  %468 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %469 = load i32, i32* %7, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %471, i32 0, i32 1
  %473 = load double, double* %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %12, i32 0, i32 0
  %475 = load double, double* %474, align 8
  %476 = fmul double %473, %475
  store double %476, double* %27, align 8
  %477 = load double, double* %27, align 8
  %478 = call i64 @isnan(double %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %467
  store double 0.000000e+00, double* %27, align 8
  br label %481

481:                                              ; preds = %480, %467
  %482 = load i32*, i32** %23, align 8
  %483 = call i32 @zuiSdsFromValue(%struct.TYPE_64__* %12)
  %484 = call %struct.TYPE_68__* @dictAddRaw(i32* %482, i32 %483, %struct.TYPE_68__** %26)
  store %struct.TYPE_68__* %484, %struct.TYPE_68__** %25, align 8
  %485 = load %struct.TYPE_68__*, %struct.TYPE_68__** %26, align 8
  %486 = icmp ne %struct.TYPE_68__* %485, null
  br i1 %486, label %504, label %487

487:                                              ; preds = %481
  %488 = call i32 @zuiNewSdsFromValue(%struct.TYPE_64__* %12)
  store i32 %488, i32* %13, align 4
  %489 = load i32, i32* %13, align 4
  %490 = call i64 @sdslen(i32 %489)
  %491 = load i64, i64* %14, align 8
  %492 = icmp ugt i64 %490, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %487
  %494 = load i32, i32* %13, align 4
  %495 = call i64 @sdslen(i32 %494)
  store i64 %495, i64* %14, align 8
  br label %496

496:                                              ; preds = %493, %487
  %497 = load i32*, i32** %23, align 8
  %498 = load %struct.TYPE_68__*, %struct.TYPE_68__** %25, align 8
  %499 = load i32, i32* %13, align 4
  %500 = call i32 @dictSetKey(i32* %497, %struct.TYPE_68__* %498, i32 %499)
  %501 = load %struct.TYPE_68__*, %struct.TYPE_68__** %25, align 8
  %502 = load double, double* %27, align 8
  %503 = call i32 @dictSetDoubleVal(%struct.TYPE_68__* %501, double %502)
  br label %511

504:                                              ; preds = %481
  %505 = load %struct.TYPE_68__*, %struct.TYPE_68__** %26, align 8
  %506 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %506, i32 0, i32 0
  %508 = load double, double* %27, align 8
  %509 = load i32, i32* %10, align 4
  %510 = call i32 @zunionInterAggregate(double* %507, double %508, i32 %509)
  br label %511

511:                                              ; preds = %504, %496
  br label %460

512:                                              ; preds = %460
  %513 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %514 = load i32, i32* %7, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %513, i64 %515
  %517 = call i32 @zuiClearIterator(%struct.TYPE_65__* %516)
  br label %518

518:                                              ; preds = %512, %453
  %519 = load i32, i32* %7, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %7, align 4
  br label %441

521:                                              ; preds = %441
  %522 = load i32*, i32** %23, align 8
  %523 = call i32* @dictGetIterator(i32* %522)
  store i32* %523, i32** %24, align 8
  %524 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %525 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = load i32*, i32** %23, align 8
  %528 = call i64 @dictSize(i32* %527)
  %529 = call i32 @dictExpand(i32* %526, i64 %528)
  br label %530

530:                                              ; preds = %534, %521
  %531 = load i32*, i32** %24, align 8
  %532 = call %struct.TYPE_68__* @dictNext(i32* %531)
  store %struct.TYPE_68__* %532, %struct.TYPE_68__** %25, align 8
  %533 = icmp ne %struct.TYPE_68__* %532, null
  br i1 %533, label %534, label %552

534:                                              ; preds = %530
  %535 = load %struct.TYPE_68__*, %struct.TYPE_68__** %25, align 8
  %536 = call i32 @dictGetKey(%struct.TYPE_68__* %535)
  store i32 %536, i32* %28, align 4
  %537 = load %struct.TYPE_68__*, %struct.TYPE_68__** %25, align 8
  %538 = call double @dictGetDoubleVal(%struct.TYPE_68__* %537)
  store double %538, double* %27, align 8
  %539 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %540 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %539, i32 0, i32 0
  %541 = load %struct.TYPE_58__*, %struct.TYPE_58__** %540, align 8
  %542 = load double, double* %27, align 8
  %543 = load i32, i32* %28, align 4
  %544 = call %struct.TYPE_62__* @zslInsert(%struct.TYPE_58__* %541, double %542, i32 %543)
  store %struct.TYPE_62__* %544, %struct.TYPE_62__** %17, align 8
  %545 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %546 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %545, i32 0, i32 1
  %547 = load i32*, i32** %546, align 8
  %548 = load i32, i32* %28, align 4
  %549 = load %struct.TYPE_62__*, %struct.TYPE_62__** %17, align 8
  %550 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %549, i32 0, i32 0
  %551 = call i32 @dictAdd(i32* %547, i32 %548, i32* %550)
  br label %530

552:                                              ; preds = %530
  %553 = load i32*, i32** %24, align 8
  %554 = call i32 @dictReleaseIterator(i32* %553)
  %555 = load i32*, i32** %23, align 8
  %556 = call i32 @dictRelease(i32* %555)
  br label %559

557:                                              ; preds = %424
  %558 = call i32 @serverPanic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %559

559:                                              ; preds = %557, %552
  br label %560

560:                                              ; preds = %559, %423
  %561 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %561, i32 0, i32 1
  %563 = load %struct.TYPE_59__*, %struct.TYPE_59__** %562, align 8
  %564 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %565 = call i64 @dbDelete(%struct.TYPE_59__* %563, %struct.TYPE_67__* %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %560
  store i32 1, i32* %18, align 4
  br label %568

568:                                              ; preds = %567, %560
  %569 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %570 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %569, i32 0, i32 0
  %571 = load %struct.TYPE_58__*, %struct.TYPE_58__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %609

575:                                              ; preds = %568
  %576 = load %struct.TYPE_67__*, %struct.TYPE_67__** %15, align 8
  %577 = load i64, i64* %14, align 8
  %578 = call i32 @zsetConvertToZiplistIfNeeded(%struct.TYPE_67__* %576, i64 %577)
  %579 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %579, i32 0, i32 1
  %581 = load %struct.TYPE_59__*, %struct.TYPE_59__** %580, align 8
  %582 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %583 = load %struct.TYPE_67__*, %struct.TYPE_67__** %15, align 8
  %584 = call i32 @dbAdd(%struct.TYPE_59__* %581, %struct.TYPE_67__* %582, %struct.TYPE_67__* %583)
  %585 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %586 = load %struct.TYPE_67__*, %struct.TYPE_67__** %15, align 8
  %587 = call i32 @zsetLength(%struct.TYPE_67__* %586)
  %588 = call i32 @addReplyLongLong(%struct.TYPE_69__* %585, i32 %587)
  %589 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %589, i32 0, i32 1
  %591 = load %struct.TYPE_59__*, %struct.TYPE_59__** %590, align 8
  %592 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %593 = call i32 @signalModifiedKey(%struct.TYPE_59__* %591, %struct.TYPE_67__* %592)
  %594 = load i32, i32* @NOTIFY_ZSET, align 4
  %595 = load i32, i32* %6, align 4
  %596 = load i32, i32* @SET_OP_UNION, align 4
  %597 = icmp eq i32 %595, %596
  %598 = zext i1 %597 to i64
  %599 = select i1 %597, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %600 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %601 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %601, i32 0, i32 1
  %603 = load %struct.TYPE_59__*, %struct.TYPE_59__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @notifyKeyspaceEvent(i32 %594, i8* %599, %struct.TYPE_67__* %600, i32 %605)
  %607 = load i32, i32* getelementptr inbounds (%struct.TYPE_61__, %struct.TYPE_61__* @server, i32 0, i32 0), align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* getelementptr inbounds (%struct.TYPE_61__, %struct.TYPE_61__* @server, i32 0, i32 0), align 4
  br label %634

609:                                              ; preds = %568
  %610 = load %struct.TYPE_67__*, %struct.TYPE_67__** %15, align 8
  %611 = call i32 @decrRefCount(%struct.TYPE_67__* %610)
  %612 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %613 = load i32, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @shared, i32 0, i32 0), align 4
  %614 = call i32 @addReply(%struct.TYPE_69__* %612, i32 %613)
  %615 = load i32, i32* %18, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %633

617:                                              ; preds = %609
  %618 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %619 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %618, i32 0, i32 1
  %620 = load %struct.TYPE_59__*, %struct.TYPE_59__** %619, align 8
  %621 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %622 = call i32 @signalModifiedKey(%struct.TYPE_59__* %620, %struct.TYPE_67__* %621)
  %623 = load i32, i32* @NOTIFY_GENERIC, align 4
  %624 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %625 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %626 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %625, i32 0, i32 1
  %627 = load %struct.TYPE_59__*, %struct.TYPE_59__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 4
  %630 = call i32 @notifyKeyspaceEvent(i32 %623, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_67__* %624, i32 %629)
  %631 = load i32, i32* getelementptr inbounds (%struct.TYPE_61__, %struct.TYPE_61__* @server, i32 0, i32 0), align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* getelementptr inbounds (%struct.TYPE_61__, %struct.TYPE_61__* @server, i32 0, i32 0), align 4
  br label %633

633:                                              ; preds = %617, %609
  br label %634

634:                                              ; preds = %633, %575
  %635 = load %struct.TYPE_65__*, %struct.TYPE_65__** %11, align 8
  %636 = call i32 @zfree(%struct.TYPE_65__* %635)
  br label %637

637:                                              ; preds = %634, %286, %273, %200, %94, %54, %43, %39
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_69__*, %struct.TYPE_63__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_69__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_69__*, i32) #1

declare dso_local %struct.TYPE_65__* @zcalloc(i32) #1

declare dso_local %struct.TYPE_67__* @lookupKeyWrite(%struct.TYPE_59__*, %struct.TYPE_63__*) #1

declare dso_local i32 @zfree(%struct.TYPE_65__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @getDoubleFromObjectOrReply(%struct.TYPE_69__*, %struct.TYPE_63__*, double*, i8*) #1

declare dso_local i32 @qsort(%struct.TYPE_65__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_67__* @createZsetObject(...) #1

declare dso_local i32 @memset(%struct.TYPE_64__*, i32, i32) #1

declare dso_local i64 @zuiLength(%struct.TYPE_65__*) #1

declare dso_local i32 @zuiInitIterator(%struct.TYPE_65__*) #1

declare dso_local i64 @zuiNext(%struct.TYPE_65__*, %struct.TYPE_64__*) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @zunionInterAggregate(double*, double, i32) #1

declare dso_local i64 @zuiFind(%struct.TYPE_65__*, %struct.TYPE_64__*, double*) #1

declare dso_local i32 @zuiNewSdsFromValue(%struct.TYPE_64__*) #1

declare dso_local %struct.TYPE_62__* @zslInsert(%struct.TYPE_58__*, double, i32) #1

declare dso_local i32 @dictAdd(i32*, i32, i32*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @zuiClearIterator(%struct.TYPE_65__*) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @dictExpand(i32*, i64) #1

declare dso_local %struct.TYPE_68__* @dictAddRaw(i32*, i32, %struct.TYPE_68__**) #1

declare dso_local i32 @zuiSdsFromValue(%struct.TYPE_64__*) #1

declare dso_local i32 @dictSetKey(i32*, %struct.TYPE_68__*, i32) #1

declare dso_local i32 @dictSetDoubleVal(%struct.TYPE_68__*, double) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local %struct.TYPE_68__* @dictNext(i32*) #1

declare dso_local i32 @dictGetKey(%struct.TYPE_68__*) #1

declare dso_local double @dictGetDoubleVal(%struct.TYPE_68__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i64 @dbDelete(%struct.TYPE_59__*, %struct.TYPE_67__*) #1

declare dso_local i32 @zsetConvertToZiplistIfNeeded(%struct.TYPE_67__*, i64) #1

declare dso_local i32 @dbAdd(%struct.TYPE_59__*, %struct.TYPE_67__*, %struct.TYPE_67__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_69__*, i32) #1

declare dso_local i32 @zsetLength(%struct.TYPE_67__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_59__*, %struct.TYPE_67__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_67__*, i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_67__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
