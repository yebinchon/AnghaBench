; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xpendingCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xpendingCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_40__**, i32 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_39__ = type { i32*, i32* }
%struct.TYPE_41__ = type { i32, %struct.TYPE_38__*, i32 }
%struct.TYPE_38__ = type { i64, i64, %struct.TYPE_37__*, i32* }
%struct.TYPE_37__ = type { i32 }

@shared = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@C_ERR = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@OBJ_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"-NOGROUP No such key '%s' or consumer group '%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c">=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpendingCommand(%struct.TYPE_42__* %0) #0 {
  %2 = alloca %struct.TYPE_42__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca %struct.TYPE_39__*, align 8
  %12 = alloca %struct.TYPE_41__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [4 x i8], align 1
  %19 = alloca [4 x i8], align 1
  %20 = alloca %struct.TYPE_41__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_38__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %2, align 8
  %27 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 3
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %34, i64 1
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  store %struct.TYPE_40__* %36, %struct.TYPE_40__** %4, align 8
  %37 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %39, i64 2
  %41 = load %struct.TYPE_40__*, %struct.TYPE_40__** %40, align 8
  store %struct.TYPE_40__* %41, %struct.TYPE_40__** %5, align 8
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %49, i64 6
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %50, align 8
  br label %53

52:                                               ; preds = %1
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi %struct.TYPE_40__* [ %51, %46 ], [ null, %52 ]
  store %struct.TYPE_40__* %54, %struct.TYPE_40__** %6, align 8
  %55 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 6
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 7
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @shared, i32 0, i32 0), align 4
  %72 = call i32 @addReply(%struct.TYPE_42__* %70, i32 %71)
  br label %356

73:                                               ; preds = %64, %59, %53
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 6
  br i1 %77, label %78, label %117

78:                                               ; preds = %73
  %79 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %82, i64 5
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %83, align 8
  %85 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_42__* %79, %struct.TYPE_40__* %84, i64* %9, i32* null)
  %86 = load i64, i64* @C_ERR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %356

89:                                               ; preds = %78
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i64 0, i64* %9, align 8
  br label %93

93:                                               ; preds = %92, %89
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %95 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %97, i64 3
  %99 = load %struct.TYPE_40__*, %struct.TYPE_40__** %98, align 8
  %100 = call i64 @streamParseIDOrReply(%struct.TYPE_42__* %94, %struct.TYPE_40__* %99, i32* %7, i32 0)
  %101 = load i64, i64* @C_ERR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %356

104:                                              ; preds = %93
  %105 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %106 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %108, i64 4
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %109, align 8
  %111 = load i32, i32* @UINT64_MAX, align 4
  %112 = call i64 @streamParseIDOrReply(%struct.TYPE_42__* %105, %struct.TYPE_40__* %110, i32* %8, i32 %111)
  %113 = load i64, i64* @C_ERR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %356

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %73
  %118 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %123, i64 1
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %124, align 8
  %126 = call %struct.TYPE_40__* @lookupKeyRead(i32 %120, %struct.TYPE_40__* %125)
  store %struct.TYPE_40__* %126, %struct.TYPE_40__** %10, align 8
  %127 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %128 = icmp ne %struct.TYPE_40__* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %117
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %132 = load i32, i32* @OBJ_STREAM, align 4
  %133 = call i64 @checkType(%struct.TYPE_42__* %130, %struct.TYPE_40__* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %356

136:                                              ; preds = %129, %117
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %138 = icmp eq %struct.TYPE_40__* %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call %struct.TYPE_39__* @streamLookupCG(i64 %142, i64 %145)
  store %struct.TYPE_39__* %146, %struct.TYPE_39__** %11, align 8
  %147 = icmp eq %struct.TYPE_39__* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %139, %136
  %149 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 @addReplyErrorFormat(%struct.TYPE_42__* %149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %153, i8* %157)
  br label %356

159:                                              ; preds = %139
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %246

162:                                              ; preds = %159
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %164 = call i32 @addReplyArrayLen(%struct.TYPE_42__* %163, i32 4)
  %165 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i64 @raxSize(i32* %168)
  %170 = call i32 @addReplyLongLong(%struct.TYPE_42__* %165, i64 %169)
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @raxSize(i32* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %162
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %178 = call i32 @addReplyNull(%struct.TYPE_42__* %177)
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %180 = call i32 @addReplyNull(%struct.TYPE_42__* %179)
  %181 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %182 = call i32 @addReplyNullArray(%struct.TYPE_42__* %181)
  br label %245

183:                                              ; preds = %162
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @raxStart(%struct.TYPE_41__* %12, i32* %186)
  %188 = call i32 @raxSeek(%struct.TYPE_41__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 0)
  %189 = call i64 @raxNext(%struct.TYPE_41__* %12)
  %190 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @streamDecodeID(i32 %191, i32* %7)
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %194 = call i32 @addReplyStreamID(%struct.TYPE_42__* %193, i32* %7)
  %195 = call i32 @raxSeek(%struct.TYPE_41__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 0)
  %196 = call i64 @raxNext(%struct.TYPE_41__* %12)
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @streamDecodeID(i32 %198, i32* %8)
  %200 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %201 = call i32 @addReplyStreamID(%struct.TYPE_42__* %200, i32* %8)
  %202 = call i32 @raxStop(%struct.TYPE_41__* %12)
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @raxStart(%struct.TYPE_41__* %12, i32* %205)
  %207 = call i32 @raxSeek(%struct.TYPE_41__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 0)
  %208 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %209 = call i8* @addReplyDeferredLen(%struct.TYPE_42__* %208)
  store i8* %209, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %210

210:                                              ; preds = %222, %221, %183
  %211 = call i64 @raxNext(%struct.TYPE_41__* %12)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %239

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 1
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %214, align 8
  store %struct.TYPE_38__* %215, %struct.TYPE_38__** %15, align 8
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = call i64 @raxSize(i32* %218)
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %210

222:                                              ; preds = %213
  %223 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %224 = call i32 @addReplyArrayLen(%struct.TYPE_42__* %223, i32 2)
  %225 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @addReplyBulkCBuffer(%struct.TYPE_42__* %225, i32 %227, i32 %229)
  %231 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %232 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i64 @raxSize(i32* %234)
  %236 = call i32 @addReplyBulkLongLong(%struct.TYPE_42__* %231, i64 %235)
  %237 = load i64, i64* %14, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %14, align 8
  br label %210

239:                                              ; preds = %210
  %240 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %241 = load i8*, i8** %13, align 8
  %242 = load i64, i64* %14, align 8
  %243 = call i32 @setDeferredArrayLen(%struct.TYPE_42__* %240, i8* %241, i64 %242)
  %244 = call i32 @raxStop(%struct.TYPE_41__* %12)
  br label %245

245:                                              ; preds = %239, %176
  br label %356

246:                                              ; preds = %159
  %247 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %248 = icmp ne %struct.TYPE_40__* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %251 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call %struct.TYPE_38__* @streamLookupConsumer(%struct.TYPE_39__* %250, i64 %253, i32 0)
  br label %256

255:                                              ; preds = %246
  br label %256

256:                                              ; preds = %255, %249
  %257 = phi %struct.TYPE_38__* [ %254, %249 ], [ null, %255 ]
  store %struct.TYPE_38__* %257, %struct.TYPE_38__** %16, align 8
  %258 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %259 = icmp ne %struct.TYPE_40__* %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %262 = icmp eq %struct.TYPE_38__* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %265 = call i32 @addReplyArrayLen(%struct.TYPE_42__* %264, i32 0)
  br label %356

266:                                              ; preds = %260, %256
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %268 = icmp ne %struct.TYPE_38__* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  br label %277

273:                                              ; preds = %266
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  br label %277

277:                                              ; preds = %273, %269
  %278 = phi i32* [ %272, %269 ], [ %276, %273 ]
  store i32* %278, i32** %17, align 8
  %279 = call i64 (...) @mstime()
  store i64 %279, i64* %21, align 8
  %280 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %281 = call i32 @streamEncodeID(i8* %280, i32* %7)
  %282 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %283 = call i32 @streamEncodeID(i8* %282, i32* %8)
  %284 = load i32*, i32** %17, align 8
  %285 = call i32 @raxStart(%struct.TYPE_41__* %20, i32* %284)
  %286 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %287 = call i32 @raxSeek(%struct.TYPE_41__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %286, i32 4)
  %288 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %289 = call i8* @addReplyDeferredLen(%struct.TYPE_42__* %288)
  store i8* %289, i8** %22, align 8
  store i64 0, i64* %23, align 8
  br label %290

290:                                              ; preds = %341, %277
  %291 = load i64, i64* %9, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = call i64 @raxNext(%struct.TYPE_41__* %20)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @memcmp(i32 %298, i8* %299, i32 %301)
  %303 = icmp sle i64 %302, 0
  br label %304

304:                                              ; preds = %296, %293, %290
  %305 = phi i1 [ false, %293 ], [ false, %290 ], [ %303, %296 ]
  br i1 %305, label %306, label %350

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 1
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %307, align 8
  store %struct.TYPE_38__* %308, %struct.TYPE_38__** %24, align 8
  %309 = load i64, i64* %23, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %23, align 8
  %311 = load i64, i64* %9, align 8
  %312 = add nsw i64 %311, -1
  store i64 %312, i64* %9, align 8
  %313 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %314 = call i32 @addReplyArrayLen(%struct.TYPE_42__* %313, i32 4)
  %315 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @streamDecodeID(i32 %316, i32* %25)
  %318 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %319 = call i32 @addReplyStreamID(%struct.TYPE_42__* %318, i32* %25)
  %320 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %321 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_37__*, %struct.TYPE_37__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %327 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_37__*, %struct.TYPE_37__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @sdslen(i32 %330)
  %332 = call i32 @addReplyBulkCBuffer(%struct.TYPE_42__* %320, i32 %325, i32 %331)
  %333 = load i64, i64* %21, align 8
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %335 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = sub nsw i64 %333, %336
  store i64 %337, i64* %26, align 8
  %338 = load i64, i64* %26, align 8
  %339 = icmp slt i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %306
  store i64 0, i64* %26, align 8
  br label %341

341:                                              ; preds = %340, %306
  %342 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %343 = load i64, i64* %26, align 8
  %344 = call i32 @addReplyLongLong(%struct.TYPE_42__* %342, i64 %343)
  %345 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %346 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @addReplyLongLong(%struct.TYPE_42__* %345, i64 %348)
  br label %290

350:                                              ; preds = %304
  %351 = call i32 @raxStop(%struct.TYPE_41__* %20)
  %352 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %353 = load i8*, i8** %22, align 8
  %354 = load i64, i64* %23, align 8
  %355 = call i32 @setDeferredArrayLen(%struct.TYPE_42__* %352, i8* %353, i64 %354)
  br label %356

356:                                              ; preds = %69, %88, %103, %115, %135, %148, %263, %350, %245
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_42__*, %struct.TYPE_40__*, i64*, i32*) #1

declare dso_local i64 @streamParseIDOrReply(%struct.TYPE_42__*, %struct.TYPE_40__*, i32*, i32) #1

declare dso_local %struct.TYPE_40__* @lookupKeyRead(i32, %struct.TYPE_40__*) #1

declare dso_local i64 @checkType(%struct.TYPE_42__*, %struct.TYPE_40__*, i32) #1

declare dso_local %struct.TYPE_39__* @streamLookupCG(i64, i64) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_42__*, i8*, i8*, i8*) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_42__*, i64) #1

declare dso_local i64 @raxSize(i32*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_42__*) #1

declare dso_local i32 @addReplyNullArray(%struct.TYPE_42__*) #1

declare dso_local i32 @raxStart(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @raxSeek(%struct.TYPE_41__*, i8*, i8*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_41__*) #1

declare dso_local i32 @streamDecodeID(i32, i32*) #1

declare dso_local i32 @addReplyStreamID(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @raxStop(%struct.TYPE_41__*) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_42__*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_42__*, i64) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_42__*, i8*, i64) #1

declare dso_local %struct.TYPE_38__* @streamLookupConsumer(%struct.TYPE_39__*, i64, i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @streamEncodeID(i8*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
