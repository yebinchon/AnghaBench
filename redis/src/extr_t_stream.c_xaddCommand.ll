; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xaddCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xaddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_29__**, %struct.TYPE_25__* }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"The MAXLEN argument must be >= 0.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"wrong number of arguments for XADD\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [77 x i8] c"The ID specified in XADD is equal or smaller than the target stream top item\00", align 1
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"xadd\00", align 1
@server = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"xtrim\00", align 1
@BLOCKED_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xaddCommand(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 -1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %16

16:                                               ; preds = %144, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %147

22:                                               ; preds = %16
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %31, i64 %33
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 42
  br i1 %42, label %43, label %50

43:                                               ; preds = %22
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %147

50:                                               ; preds = %43, %22
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strcasecmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %128, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %128

57:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %60, i64 %63
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 2
  br i1 %69, label %70, label %85

70:                                               ; preds = %57
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 126
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %104

85:                                               ; preds = %76, %70, %57
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 61
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %94, %88, %85
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %108, i64 %111
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_28__* %105, %struct.TYPE_29__* %113, i64* %5, i32* null)
  %115 = load i64, i64* @C_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %285

118:                                              ; preds = %104
  %119 = load i64, i64* %5, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %123 = call i32 @addReplyError(%struct.TYPE_28__* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %285

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %7, align 4
  br label %142

128:                                              ; preds = %54, %50
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %132, i64 %134
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %135, align 8
  %137 = call i64 @streamParseStrictIDOrReply(%struct.TYPE_28__* %129, %struct.TYPE_29__* %136, i32* %3, i32 0)
  %138 = load i64, i64* @C_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %285

141:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  br label %147

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %16

147:                                              ; preds = %141, %49, %16
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  %155 = icmp slt i32 %154, 2
  br i1 %155, label %164, label %156

156:                                              ; preds = %147
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %159, %160
  %162 = srem i32 %161, 2
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %156, %147
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %166 = call i32 @addReplyError(%struct.TYPE_28__* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %285

167:                                              ; preds = %156
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %171, i64 1
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  %174 = call %struct.TYPE_27__* @streamTypeLookupWriteOrCreate(%struct.TYPE_28__* %168, %struct.TYPE_29__* %173)
  store %struct.TYPE_27__* %174, %struct.TYPE_27__** %13, align 8
  %175 = icmp eq %struct.TYPE_27__* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %285

177:                                              ; preds = %167
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %14, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %184, i64 %186
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sdiv i32 %192, 2
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %177
  br label %198

197:                                              ; preds = %177
  br label %198

198:                                              ; preds = %197, %196
  %199 = phi i32* [ %3, %196 ], [ null, %197 ]
  %200 = call i64 @streamAppendItem(i32* %181, %struct.TYPE_29__** %187, i32 %193, i32* %3, i32* %199)
  %201 = load i64, i64* @C_ERR, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %205 = call i32 @addReplyError(%struct.TYPE_28__* %204, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  br label %285

206:                                              ; preds = %198
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %208 = call i32 @addReplyStreamID(%struct.TYPE_28__* %207, i32* %3)
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %214, i64 1
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %215, align 8
  %217 = call i32 @signalModifiedKey(%struct.TYPE_25__* %211, %struct.TYPE_29__* %216)
  %218 = load i32, i32* @NOTIFY_STREAM, align 4
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %221, i64 1
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %222, align 8
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @notifyKeyspaceEvent(i32 %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_29__* %223, i32 %228)
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @server, i32 0, i32 1), align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @server, i32 0, i32 1), align 8
  %232 = load i64, i64* %5, align 8
  %233 = icmp sge i64 %232, 0
  br i1 %233, label %234, label %262

234:                                              ; preds = %206
  %235 = load i32*, i32** %14, align 8
  %236 = load i64, i64* %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i64 @streamTrimByLength(i32* %235, i64 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %234
  %241 = load i32, i32* @NOTIFY_STREAM, align 4
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %244, i64 1
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %245, align 8
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @notifyKeyspaceEvent(i32 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_29__* %246, i32 %251)
  br label %253

253:                                              ; preds = %240, %234
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %258 = load i32*, i32** %14, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @streamRewriteApproxMaxlen(%struct.TYPE_28__* %257, i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %253
  br label %262

262:                                              ; preds = %261, %206
  %263 = call %struct.TYPE_27__* @createObjectFromStreamID(i32* %3)
  store %struct.TYPE_27__* %263, %struct.TYPE_27__** %15, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %267 = call i32 @rewriteClientCommandArgument(%struct.TYPE_28__* %264, i32 %265, %struct.TYPE_27__* %266)
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %269 = call i32 @decrRefCount(%struct.TYPE_27__* %268)
  %270 = load i64*, i64** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @server, i32 0, i32 0), align 8
  %271 = load i64, i64* @BLOCKED_STREAM, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %262
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %277, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %281, i64 1
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %282, align 8
  %284 = call i32 @signalKeyAsReady(%struct.TYPE_25__* %278, %struct.TYPE_29__* %283)
  br label %285

285:                                              ; preds = %117, %121, %140, %164, %176, %203, %275, %262
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_28__*, %struct.TYPE_29__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_28__*, i8*) #1

declare dso_local i64 @streamParseStrictIDOrReply(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local %struct.TYPE_27__* @streamTypeLookupWriteOrCreate(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i64 @streamAppendItem(i32*, %struct.TYPE_29__**, i32, i32*, i32*) #1

declare dso_local i32 @addReplyStreamID(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_25__*, %struct.TYPE_29__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @streamTrimByLength(i32*, i64, i32) #1

declare dso_local i32 @streamRewriteApproxMaxlen(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local %struct.TYPE_27__* @createObjectFromStreamID(i32*) #1

declare dso_local i32 @rewriteClientCommandArgument(%struct.TYPE_28__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_27__*) #1

declare dso_local i32 @signalKeyAsReady(%struct.TYPE_25__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
