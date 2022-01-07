; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zremrangeGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zremrangeGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_34__*, %struct.TYPE_38__** }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, i32 }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"min or max is not a float\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"min or max not valid string range item\00", align 1
@shared = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@OBJ_ZSET = common dso_local global i32 0, align 4
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"zremrangebyrank\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"zremrangebyscore\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"zremrangebylex\00", align 1
@__const.zremrangeGenericCommand.event = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)], align 16
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_37__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zremrangeGenericCommand(%struct.TYPE_39__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca [3 x i8*], align 16
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %18, i64 1
  %20 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  store %struct.TYPE_38__* %20, %struct.TYPE_38__** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %27, i64 2
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %30 = call i64 @getLongFromObjectOrReply(%struct.TYPE_39__* %24, %struct.TYPE_38__* %29, i64* %11, i32* null)
  %31 = load i64, i64* @C_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %35 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %37, i64 3
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %38, align 8
  %40 = call i64 @getLongFromObjectOrReply(%struct.TYPE_39__* %34, %struct.TYPE_38__* %39, i64* %12, i32* null)
  %41 = load i64, i64* @C_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33, %23
  br label %303

44:                                               ; preds = %33
  br label %89

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %51, i64 2
  %53 = load %struct.TYPE_38__*, %struct.TYPE_38__** %52, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %56, i64 3
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %57, align 8
  %59 = call i64 @zslParseRange(%struct.TYPE_38__* %53, %struct.TYPE_38__* %58, i32* %9)
  %60 = load i64, i64* @C_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %64 = call i32 @addReplyError(%struct.TYPE_39__* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %303

65:                                               ; preds = %48
  br label %88

66:                                               ; preds = %45
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 130
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %72, i64 2
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %73, align 8
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %77, i64 3
  %79 = load %struct.TYPE_38__*, %struct.TYPE_38__** %78, align 8
  %80 = call i64 @zslParseLexRange(%struct.TYPE_38__* %74, %struct.TYPE_38__* %79, i32* %10)
  %81 = load i64, i64* @C_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %85 = call i32 @addReplyError(%struct.TYPE_39__* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %303

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @shared, i32 0, i32 0), align 4
  %93 = call %struct.TYPE_38__* @lookupKeyWriteOrReply(%struct.TYPE_39__* %90, %struct.TYPE_38__* %91, i32 %92)
  store %struct.TYPE_38__* %93, %struct.TYPE_38__** %6, align 8
  %94 = icmp eq %struct.TYPE_38__* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %98 = load i32, i32* @OBJ_ZSET, align 4
  %99 = call i64 @checkType(%struct.TYPE_39__* %96, %struct.TYPE_38__* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %89
  br label %298

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 129
  br i1 %104, label %105, label %145

105:                                              ; preds = %102
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %107 = call i64 @zsetLength(%struct.TYPE_38__* %106)
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i64, i64* %12, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %118, %119
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* %11, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i64 0, i64* %11, align 8
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %13, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129, %125
  %134 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @shared, i32 0, i32 0), align 4
  %136 = call i32 @addReply(%struct.TYPE_39__* %134, i32 %135)
  br label %298

137:                                              ; preds = %129
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* %13, align 8
  %143 = sub nsw i64 %142, 1
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %102
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %191

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  switch i32 %152, label %178 [
    i32 129, label %153
    i32 128, label %164
    i32 130, label %171
  ]

153:                                              ; preds = %151
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add nsw i64 %157, 1
  %159 = load i64, i64* %12, align 8
  %160 = add nsw i64 %159, 1
  %161 = call %struct.TYPE_36__* @zzlDeleteRangeByRank(%struct.TYPE_36__* %156, i64 %158, i64 %160, i64* %8)
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 1
  store %struct.TYPE_36__* %161, %struct.TYPE_36__** %163, align 8
  br label %178

164:                                              ; preds = %151
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %166, align 8
  %168 = call %struct.TYPE_36__* @zzlDeleteRangeByScore(%struct.TYPE_36__* %167, i32* %9, i64* %8)
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 1
  store %struct.TYPE_36__* %168, %struct.TYPE_36__** %170, align 8
  br label %178

171:                                              ; preds = %151
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %173, align 8
  %175 = call %struct.TYPE_36__* @zzlDeleteRangeByLex(%struct.TYPE_36__* %174, i32* %10, i64* %8)
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 1
  store %struct.TYPE_36__* %175, %struct.TYPE_36__** %177, align 8
  br label %178

178:                                              ; preds = %151, %171, %164, %153
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %180, align 8
  %182 = call i64 @zzlLength(%struct.TYPE_36__* %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %186, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %189 = call i32 @dbDelete(%struct.TYPE_34__* %187, %struct.TYPE_38__* %188)
  store i32 1, i32* %7, align 4
  br label %190

190:                                              ; preds = %184, %178
  br label %257

191:                                              ; preds = %145
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %254

197:                                              ; preds = %191
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %199, align 8
  store %struct.TYPE_36__* %200, %struct.TYPE_36__** %14, align 8
  %201 = load i32, i32* %4, align 4
  switch i32 %201, label %230 [
    i32 129, label %202
    i32 128, label %214
    i32 130, label %222
  ]

202:                                              ; preds = %197
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i64, i64* %11, align 8
  %207 = add nsw i64 %206, 1
  %208 = load i64, i64* %12, align 8
  %209 = add nsw i64 %208, 1
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @zslDeleteRangeByRank(i32 %205, i64 %207, i64 %209, i32 %212)
  store i64 %213, i64* %8, align 8
  br label %230

214:                                              ; preds = %197
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @zslDeleteRangeByScore(i32 %217, i32* %9, i32 %220)
  store i64 %221, i64* %8, align 8
  br label %230

222:                                              ; preds = %197
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @zslDeleteRangeByLex(i32 %225, i32* %10, i32 %228)
  store i64 %229, i64* %8, align 8
  br label %230

230:                                              ; preds = %197, %222, %214, %202
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @htNeedsResize(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dictResize(i32 %239)
  br label %241

241:                                              ; preds = %236, %230
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @dictSize(i32 %244)
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %241
  %248 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %249, align 8
  %251 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %252 = call i32 @dbDelete(%struct.TYPE_34__* %250, %struct.TYPE_38__* %251)
  store i32 1, i32* %7, align 4
  br label %253

253:                                              ; preds = %247, %241
  br label %256

254:                                              ; preds = %191
  %255 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %253
  br label %257

257:                                              ; preds = %256, %190
  %258 = load i64, i64* %8, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %291

260:                                              ; preds = %257
  %261 = bitcast [3 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %261, i8* align 16 bitcast ([3 x i8*]* @__const.zremrangeGenericCommand.event to i8*), i64 24, i1 false)
  %262 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_34__*, %struct.TYPE_34__** %263, align 8
  %265 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %266 = call i32 @signalModifiedKey(%struct.TYPE_34__* %264, %struct.TYPE_38__* %265)
  %267 = load i32, i32* @NOTIFY_ZSET, align 4
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @notifyKeyspaceEvent(i32 %267, i8* %271, %struct.TYPE_38__* %272, i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %260
  %282 = load i32, i32* @NOTIFY_GENERIC, align 4
  %283 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %284 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @notifyKeyspaceEvent(i32 %282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_38__* %283, i32 %288)
  br label %290

290:                                              ; preds = %281, %260
  br label %291

291:                                              ; preds = %290, %257
  %292 = load i64, i64* %8, align 8
  %293 = load i64, i64* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @server, i32 0, i32 0), align 8
  %294 = add i64 %293, %292
  store i64 %294, i64* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @server, i32 0, i32 0), align 8
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %296 = load i64, i64* %8, align 8
  %297 = call i32 @addReplyLongLong(%struct.TYPE_39__* %295, i64 %296)
  br label %298

298:                                              ; preds = %291, %133, %101
  %299 = load i32, i32* %4, align 4
  %300 = icmp eq i32 %299, 130
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 @zslFreeLexRange(i32* %10)
  br label %303

303:                                              ; preds = %43, %62, %83, %301, %298
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_39__*, %struct.TYPE_38__*, i64*, i32*) #1

declare dso_local i64 @zslParseRange(%struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_39__*, i8*) #1

declare dso_local i64 @zslParseLexRange(%struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

declare dso_local %struct.TYPE_38__* @lookupKeyWriteOrReply(%struct.TYPE_39__*, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_39__*, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @zsetLength(%struct.TYPE_38__*) #1

declare dso_local i32 @addReply(%struct.TYPE_39__*, i32) #1

declare dso_local %struct.TYPE_36__* @zzlDeleteRangeByRank(%struct.TYPE_36__*, i64, i64, i64*) #1

declare dso_local %struct.TYPE_36__* @zzlDeleteRangeByScore(%struct.TYPE_36__*, i32*, i64*) #1

declare dso_local %struct.TYPE_36__* @zzlDeleteRangeByLex(%struct.TYPE_36__*, i32*, i64*) #1

declare dso_local i64 @zzlLength(%struct.TYPE_36__*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_34__*, %struct.TYPE_38__*) #1

declare dso_local i64 @zslDeleteRangeByRank(i32, i64, i64, i32) #1

declare dso_local i64 @zslDeleteRangeByScore(i32, i32*, i32) #1

declare dso_local i64 @zslDeleteRangeByLex(i32, i32*, i32) #1

declare dso_local i64 @htNeedsResize(i32) #1

declare dso_local i32 @dictResize(i32) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @signalModifiedKey(%struct.TYPE_34__*, %struct.TYPE_38__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_38__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_39__*, i64) #1

declare dso_local i32 @zslFreeLexRange(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
