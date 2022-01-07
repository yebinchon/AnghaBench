; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeLoadInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeLoadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32*, i8*, i8*, i8*, i32*, i8*, i8*, i32*, i64, i64, %struct.TYPE_15__**, %struct.TYPE_15__** }
%struct.TYPE_16__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"CLUSTER NODES\00", align 1
@CLUSTER_MANAGER_OPT_GETFRIENDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@CLUSTER_MANAGER_FLAG_MYSELF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"->-\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-<-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Error: invalid CLUSTER NODES reply\0A\00", align 1
@CLUSTER_MANAGER_FLAG_FRIEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"noaddr\00", align 1
@CLUSTER_MANAGER_FLAG_NOADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@CLUSTER_MANAGER_FLAG_DISCONNECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@CLUSTER_MANAGER_FLAG_FAIL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i8**)* @clusterManagerNodeLoadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerNodeLoadInfo(%struct.TYPE_15__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_15__*, align 8
  %30 = alloca %struct.TYPE_15__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_15__*, align 8
  %33 = alloca %struct.TYPE_15__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_15__*, align 8
  %40 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call %struct.TYPE_16__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_15__* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %8, align 4
  %43 = load i8**, i8*** %6, align 8
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_15__* %44, %struct.TYPE_16__* %45, i8** %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %564

50:                                               ; preds = %3
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CLUSTER_MANAGER_OPT_GETFRIENDS, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %562, %353, %50
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %563

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @UNUSED(i8* %66)
  store i32 0, i32* %21, align 4
  br label %68

68:                                               ; preds = %99, %61
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 32)
  store i8* %70, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load i8*, i8** %11, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %12, align 8
  store i8* %74, i8** %22, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %12, align 8
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  switch i32 %77, label %95 [
    i32 0, label %79
    i32 1, label %81
    i32 2, label %83
    i32 3, label %85
    i32 4, label %87
    i32 5, label %89
    i32 6, label %91
    i32 7, label %93
  ]

79:                                               ; preds = %72
  %80 = load i8*, i8** %22, align 8
  store i8* %80, i8** %13, align 8
  br label %95

81:                                               ; preds = %72
  %82 = load i8*, i8** %22, align 8
  store i8* %82, i8** %14, align 8
  br label %95

83:                                               ; preds = %72
  %84 = load i8*, i8** %22, align 8
  store i8* %84, i8** %15, align 8
  br label %95

85:                                               ; preds = %72
  %86 = load i8*, i8** %22, align 8
  store i8* %86, i8** %16, align 8
  br label %95

87:                                               ; preds = %72
  %88 = load i8*, i8** %22, align 8
  store i8* %88, i8** %17, align 8
  br label %95

89:                                               ; preds = %72
  %90 = load i8*, i8** %22, align 8
  store i8* %90, i8** %18, align 8
  br label %95

91:                                               ; preds = %72
  %92 = load i8*, i8** %22, align 8
  store i8* %92, i8** %19, align 8
  br label %95

93:                                               ; preds = %72
  %94 = load i8*, i8** %22, align 8
  store i8* %94, i8** %20, align 8
  br label %95

95:                                               ; preds = %72, %93, %91, %89, %87, %85, %83, %81, %79
  %96 = load i32, i32* %21, align 4
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %95
  br label %68

100:                                              ; preds = %98, %68
  %101 = load i8*, i8** %15, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %564

104:                                              ; preds = %100
  %105 = load i8*, i8** %15, align 8
  %106 = call i8* @strstr(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i8* %106, null
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %23, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %24, align 8
  %109 = load i32, i32* %23, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %343

111:                                              ; preds = %104
  %112 = load i32, i32* @CLUSTER_MANAGER_FLAG_MYSELF, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %24, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = call i32 @clusterManagerNodeResetSlots(%struct.TYPE_15__* %118)
  %120 = load i32, i32* %21, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %340

122:                                              ; preds = %111
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @strlen(i8* %123)
  store i32 %124, i32* %25, align 4
  br label %125

125:                                              ; preds = %338, %122
  %126 = load i32, i32* %25, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %339

128:                                              ; preds = %125
  %129 = load i8*, i8** %12, align 8
  %130 = call i8* @strchr(i8* %129, i8 signext 32)
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* %25, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8* %137, i8** %11, align 8
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = load i32, i32* %25, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %25, align 4
  %148 = load i8*, i8** %12, align 8
  store i8* %148, i8** %26, align 8
  %149 = load i8*, i8** %11, align 8
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* %25, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %138
  %153 = load i8*, i8** %11, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %12, align 8
  %155 = load i32, i32* %25, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %25, align 4
  br label %159

157:                                              ; preds = %138
  %158 = load i8*, i8** %11, align 8
  store i8* %158, i8** %12, align 8
  br label %159

159:                                              ; preds = %157, %152
  store i8* null, i8** %27, align 8
  %160 = load i8*, i8** %26, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 91
  br i1 %164, label %165, label %285

165:                                              ; preds = %159
  %166 = load i8*, i8** %26, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %26, align 8
  %168 = load i8*, i8** %26, align 8
  %169 = call i8* @strstr(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %169, i8** %11, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %225

171:                                              ; preds = %165
  %172 = load i8*, i8** %11, align 8
  store i8 0, i8* %172, align 1
  %173 = load i8*, i8** %11, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 93)
  store i8* %176, i8** %28, align 8
  %177 = load i8*, i8** %28, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i8*, i8** %28, align 8
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %179, %171
  %182 = load i8*, i8** %26, align 8
  %183 = call i8* @sdsnew(i8* %182)
  %184 = bitcast i8* %183 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %184, %struct.TYPE_15__** %29, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = call i8* @sdsnew(i8* %185)
  %187 = bitcast i8* %186 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %187, %struct.TYPE_15__** %30, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %189, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 14
  %194 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 8
  %200 = trunc i64 %199 to i32
  %201 = call i8* @zrealloc(%struct.TYPE_15__** %194, i32 %200)
  %202 = bitcast i8* %201 to %struct.TYPE_15__**
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 14
  store %struct.TYPE_15__** %202, %struct.TYPE_15__*** %204, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 14
  %208 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %207, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %208, i64 %213
  store %struct.TYPE_15__* %205, %struct.TYPE_15__** %214, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 14
  %218 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %217, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %218, i64 %223
  store %struct.TYPE_15__* %215, %struct.TYPE_15__** %224, align 8
  br label %284

225:                                              ; preds = %165
  %226 = load i8*, i8** %26, align 8
  %227 = call i8* @strstr(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %227, i8** %11, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %283

229:                                              ; preds = %225
  %230 = load i8*, i8** %11, align 8
  store i8 0, i8* %230, align 1
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 3
  store i8* %232, i8** %11, align 8
  %233 = load i8*, i8** %11, align 8
  %234 = call i8* @strchr(i8* %233, i8 signext 93)
  store i8* %234, i8** %31, align 8
  %235 = load i8*, i8** %31, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = load i8*, i8** %31, align 8
  store i8 0, i8* %238, align 1
  br label %239

239:                                              ; preds = %237, %229
  %240 = load i8*, i8** %26, align 8
  %241 = call i8* @sdsnew(i8* %240)
  %242 = bitcast i8* %241 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %242, %struct.TYPE_15__** %32, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = call i8* @sdsnew(i8* %243)
  %245 = bitcast i8* %244 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %245, %struct.TYPE_15__** %33, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 2
  store i32 %249, i32* %247, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 13
  %252 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %251, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 8
  %258 = trunc i64 %257 to i32
  %259 = call i8* @zrealloc(%struct.TYPE_15__** %252, i32 %258)
  %260 = bitcast i8* %259 to %struct.TYPE_15__**
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 13
  store %struct.TYPE_15__** %260, %struct.TYPE_15__*** %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 13
  %266 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %265, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %266, i64 %271
  store %struct.TYPE_15__* %263, %struct.TYPE_15__** %272, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 13
  %276 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %275, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %276, i64 %281
  store %struct.TYPE_15__* %273, %struct.TYPE_15__** %282, align 8
  br label %283

283:                                              ; preds = %239, %225
  br label %284

284:                                              ; preds = %283, %181
  br label %338

285:                                              ; preds = %159
  %286 = load i8*, i8** %26, align 8
  %287 = call i8* @strchr(i8* %286, i8 signext 45)
  store i8* %287, i8** %27, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %321

289:                                              ; preds = %285
  %290 = load i8*, i8** %27, align 8
  store i8* %290, i8** %11, align 8
  %291 = load i8*, i8** %11, align 8
  store i8 0, i8* %291, align 1
  %292 = load i8*, i8** %26, align 8
  %293 = call i64 @atoi(i8* %292)
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %34, align 4
  %295 = load i8*, i8** %11, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = call i64 @atoi(i8* %296)
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %35, align 4
  %299 = load i32, i32* %35, align 4
  %300 = load i32, i32* %34, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sub nsw i32 %299, %301
  %303 = sext i32 %302 to i64
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 12
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %306, %303
  store i64 %307, i64* %305, align 8
  br label %308

308:                                              ; preds = %312, %289
  %309 = load i32, i32* %34, align 4
  %310 = load i32, i32* %35, align 4
  %311 = icmp sle i32 %309, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %34, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %34, align 4
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 1, i32* %319, align 4
  br label %308

320:                                              ; preds = %308
  br label %337

321:                                              ; preds = %285
  %322 = load i8*, i8** %11, align 8
  %323 = load i8*, i8** %26, align 8
  %324 = icmp ugt i8* %322, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %321
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = load i8*, i8** %26, align 8
  %330 = call i64 @atoi(i8* %329)
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 1, i32* %331, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 12
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %334, 1
  store i64 %335, i64* %333, align 8
  br label %336

336:                                              ; preds = %325, %321
  br label %337

337:                                              ; preds = %336, %320
  br label %338

338:                                              ; preds = %337, %284
  br label %125

339:                                              ; preds = %125
  br label %340

340:                                              ; preds = %339, %111
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 11
  store i64 0, i64* %342, align 8
  br label %407

343:                                              ; preds = %104
  %344 = load i32, i32* %9, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %355, label %346

346:                                              ; preds = %343
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @CLUSTER_MANAGER_FLAG_MYSELF, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %346
  br label %57

354:                                              ; preds = %346
  br label %563

355:                                              ; preds = %343
  %356 = load i8*, i8** %14, align 8
  %357 = icmp eq i8* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load i32, i32* @stderr, align 4
  %360 = call i32 @fprintf(i32 %359, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %564

361:                                              ; preds = %355
  %362 = load i8*, i8** %14, align 8
  %363 = call i8* @strrchr(i8* %362, i8 signext 64)
  store i8* %363, i8** %36, align 8
  %364 = load i8*, i8** %36, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = load i8*, i8** %36, align 8
  store i8 0, i8* %367, align 1
  br label %368

368:                                              ; preds = %366, %361
  %369 = load i8*, i8** %14, align 8
  %370 = call i8* @strrchr(i8* %369, i8 signext 58)
  store i8* %370, i8** %36, align 8
  %371 = load i8*, i8** %36, align 8
  %372 = icmp eq i8* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load i32, i32* @stderr, align 4
  %375 = call i32 @fprintf(i32 %374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %564

376:                                              ; preds = %368
  %377 = load i8*, i8** %36, align 8
  store i8 0, i8* %377, align 1
  %378 = load i8*, i8** %36, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %36, align 8
  %380 = call i64 @atoi(i8* %379)
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %37, align 4
  %382 = load i8*, i8** %14, align 8
  %383 = call i8* @sdsnew(i8* %382)
  %384 = load i32, i32* %37, align 4
  %385 = call %struct.TYPE_15__* @clusterManagerNewNode(i8* %383, i32 %384)
  store %struct.TYPE_15__* %385, %struct.TYPE_15__** %24, align 8
  %386 = load i32, i32* @CLUSTER_MANAGER_FLAG_FRIEND, align 4
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 8
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 10
  %393 = load i32*, i32** %392, align 8
  %394 = icmp eq i32* %393, null
  br i1 %394, label %395, label %400

395:                                              ; preds = %376
  %396 = call i8* (...) @listCreate()
  %397 = bitcast i8* %396 to i32*
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 10
  store i32* %397, i32** %399, align 8
  br label %400

400:                                              ; preds = %395, %376
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 10
  %403 = load i32*, i32** %402, align 8
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %405 = call i32 @listAddNodeTail(i32* %403, %struct.TYPE_15__* %404)
  br label %406

406:                                              ; preds = %400
  br label %407

407:                                              ; preds = %406, %340
  %408 = load i8*, i8** %13, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %425

410:                                              ; preds = %407
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 9
  %413 = load i8*, i8** %412, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %420

415:                                              ; preds = %410
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 9
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 @sdsfree(i8* %418)
  br label %420

420:                                              ; preds = %415, %410
  %421 = load i8*, i8** %13, align 8
  %422 = call i8* @sdsnew(i8* %421)
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 9
  store i8* %422, i8** %424, align 8
  br label %425

425:                                              ; preds = %420, %407
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 7
  %428 = load i32*, i32** %427, align 8
  %429 = icmp ne i32* %428, null
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 7
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @freeClusterManagerNodeFlags(i32* %433)
  br label %435

435:                                              ; preds = %430, %425
  %436 = call i8* (...) @listCreate()
  %437 = bitcast i8* %436 to i32*
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 7
  store i32* %437, i32** %439, align 8
  br label %440

440:                                              ; preds = %525, %435
  %441 = load i8*, i8** %15, align 8
  %442 = call i32 @strlen(i8* %441)
  store i32 %442, i32* %38, align 4
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %531

444:                                              ; preds = %440
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %39, align 8
  %445 = load i8*, i8** %15, align 8
  %446 = call i8* @strchr(i8* %445, i8 signext 44)
  store i8* %446, i8** %40, align 8
  %447 = load i8*, i8** %40, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %456

449:                                              ; preds = %444
  %450 = load i8*, i8** %40, align 8
  store i8 0, i8* %450, align 1
  %451 = load i8*, i8** %15, align 8
  %452 = call i8* @sdsnew(i8* %451)
  %453 = bitcast i8* %452 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %453, %struct.TYPE_15__** %39, align 8
  %454 = load i8*, i8** %40, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 1
  store i8* %455, i8** %15, align 8
  br label %464

456:                                              ; preds = %444
  %457 = load i8*, i8** %15, align 8
  %458 = call i8* @sdsnew(i8* %457)
  %459 = bitcast i8* %458 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %459, %struct.TYPE_15__** %39, align 8
  %460 = load i32, i32* %38, align 4
  %461 = load i8*, i8** %15, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds i8, i8* %461, i64 %462
  store i8* %463, i8** %15, align 8
  br label %464

464:                                              ; preds = %456, %449
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %466 = call i64 @strcmp(%struct.TYPE_15__* %465, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %474

468:                                              ; preds = %464
  %469 = load i32, i32* @CLUSTER_MANAGER_FLAG_NOADDR, align 4
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  br label %525

474:                                              ; preds = %464
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %476 = call i64 @strcmp(%struct.TYPE_15__* %475, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %474
  %479 = load i32, i32* @CLUSTER_MANAGER_FLAG_DISCONNECT, align 4
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %524

484:                                              ; preds = %474
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %486 = call i64 @strcmp(%struct.TYPE_15__* %485, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %484
  %489 = load i32, i32* @CLUSTER_MANAGER_FLAG_FAIL, align 4
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %489
  store i32 %493, i32* %491, align 8
  br label %523

494:                                              ; preds = %484
  %495 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %496 = call i64 @strcmp(%struct.TYPE_15__* %495, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %522

498:                                              ; preds = %494
  %499 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %500 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %501 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = or i32 %502, %499
  store i32 %503, i32* %501, align 8
  %504 = load i8*, i8** %16, align 8
  %505 = icmp ne i8* %504, null
  br i1 %505, label %506, label %521

506:                                              ; preds = %498
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 8
  %509 = load i8*, i8** %508, align 8
  %510 = icmp ne i8* %509, null
  br i1 %510, label %511, label %516

511:                                              ; preds = %506
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 8
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @sdsfree(i8* %514)
  br label %516

516:                                              ; preds = %511, %506
  %517 = load i8*, i8** %16, align 8
  %518 = call i8* @sdsnew(i8* %517)
  %519 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %520 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %519, i32 0, i32 8
  store i8* %518, i8** %520, align 8
  br label %521

521:                                              ; preds = %516, %498
  br label %522

522:                                              ; preds = %521, %494
  br label %523

523:                                              ; preds = %522, %488
  br label %524

524:                                              ; preds = %523, %478
  br label %525

525:                                              ; preds = %524, %468
  %526 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %526, i32 0, i32 7
  %528 = load i32*, i32** %527, align 8
  %529 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %530 = call i32 @listAddNodeTail(i32* %528, %struct.TYPE_15__* %529)
  br label %440

531:                                              ; preds = %440
  %532 = load i8*, i8** %19, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %539

534:                                              ; preds = %531
  %535 = load i8*, i8** %19, align 8
  %536 = call i8* @atoll(i8* %535)
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 6
  store i8* %536, i8** %538, align 8
  br label %539

539:                                              ; preds = %534, %531
  %540 = load i8*, i8** %17, align 8
  %541 = icmp ne i8* %540, null
  br i1 %541, label %542, label %547

542:                                              ; preds = %539
  %543 = load i8*, i8** %17, align 8
  %544 = call i8* @atoll(i8* %543)
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %546 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %545, i32 0, i32 5
  store i8* %544, i8** %546, align 8
  br label %547

547:                                              ; preds = %542, %539
  %548 = load i8*, i8** %18, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %555

550:                                              ; preds = %547
  %551 = load i8*, i8** %18, align 8
  %552 = call i8* @atoll(i8* %551)
  %553 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %554 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %553, i32 0, i32 4
  store i8* %552, i8** %554, align 8
  br label %555

555:                                              ; preds = %550, %547
  %556 = load i32, i32* %9, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %562, label %558

558:                                              ; preds = %555
  %559 = load i32, i32* %23, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %558
  br label %563

562:                                              ; preds = %558, %555
  br label %57

563:                                              ; preds = %561, %354, %57
  br label %564

564:                                              ; preds = %563, %373, %358, %103, %49
  %565 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %566 = icmp ne %struct.TYPE_16__* %565, null
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %569 = call i32 @freeReplyObject(%struct.TYPE_16__* %568)
  br label %570

570:                                              ; preds = %567, %564
  %571 = load i32, i32* %8, align 4
  ret i32 %571
}

declare dso_local %struct.TYPE_16__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_15__*, %struct.TYPE_16__*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @clusterManagerNodeResetSlots(%struct.TYPE_15__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @zrealloc(%struct.TYPE_15__**, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_15__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @freeClusterManagerNodeFlags(i32*) #1

declare dso_local i64 @strcmp(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @atoll(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
