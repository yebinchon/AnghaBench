; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_spopWithCountCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_spopWithCountCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_41__**, %struct.TYPE_43__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_43__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_44__ zeroinitializer, align 8
@OBJ_SET = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"spop\00", align 1
@server = common dso_local global %struct.TYPE_40__ zeroinitializer, align 8
@SET_OP_UNION = common dso_local global i32 0, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SREM\00", align 1
@SPOP_MOVE_STRATEGY_MUL = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spopWithCountCommand(%struct.TYPE_42__* %0) #0 {
  %2 = alloca %struct.TYPE_42__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca [3 x %struct.TYPE_41__*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_41__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %2, align 8
  %15 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %18, i64 2
  %20 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %21 = call i64 @getLongFromObjectOrReply(%struct.TYPE_42__* %15, %struct.TYPE_41__* %20, i64* %3, i32* null)
  %22 = load i64, i64* @C_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %316

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %4, align 8
  br label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 3), align 8
  %33 = call i32 @addReply(%struct.TYPE_42__* %31, i32 %32)
  br label %316

34:                                               ; preds = %28
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %36 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %38, i64 1
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %39, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 2), align 8
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_41__* @lookupKeyWriteOrReply(%struct.TYPE_42__* %35, %struct.TYPE_41__* %40, i32 %46)
  store %struct.TYPE_41__* %47, %struct.TYPE_41__** %6, align 8
  %48 = icmp eq %struct.TYPE_41__* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %52 = load i32, i32* @OBJ_SET, align 4
  %53 = call i64 @checkType(%struct.TYPE_42__* %50, %struct.TYPE_41__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %34
  br label %316

56:                                               ; preds = %49
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 1), align 8
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @addReply(%struct.TYPE_42__* %60, i32 %66)
  br label %316

68:                                               ; preds = %56
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %70 = call i64 @setTypeSize(%struct.TYPE_41__* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i32, i32* @NOTIFY_SET, align 4
  %72 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %74, i64 1
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %75, align 8
  %77 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_43__*, %struct.TYPE_43__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @notifyKeyspaceEvent(i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_41__* %76, i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %137

89:                                               ; preds = %68
  %90 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %91 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %93, i64 1
  %95 = load i32, i32* @SET_OP_UNION, align 4
  %96 = call i32 @sunionDiffGenericCommand(%struct.TYPE_42__* %90, %struct.TYPE_41__** %94, i32 1, i32* null, i32 %95)
  %97 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_43__*, %struct.TYPE_43__** %98, align 8
  %100 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %102, i64 1
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %103, align 8
  %105 = call i32 @dbDelete(%struct.TYPE_43__* %99, %struct.TYPE_41__* %104)
  %106 = load i32, i32* @NOTIFY_GENERIC, align 4
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %109, i64 1
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %110, align 8
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_43__*, %struct.TYPE_43__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @notifyKeyspaceEvent(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_41__* %111, i32 %116)
  %118 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 0), align 8
  %120 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %122, i64 1
  %124 = load %struct.TYPE_41__*, %struct.TYPE_41__** %123, align 8
  %125 = call i32 @rewriteClientCommandVector(%struct.TYPE_42__* %118, i32 2, i32 %119, %struct.TYPE_41__* %124)
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_43__*, %struct.TYPE_43__** %127, align 8
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %131, i64 1
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %132, align 8
  %134 = call i32 @signalModifiedKey(%struct.TYPE_43__* %128, %struct.TYPE_41__* %133)
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  br label %316

137:                                              ; preds = %68
  %138 = call %struct.TYPE_41__* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %139 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 0
  store %struct.TYPE_41__* %138, %struct.TYPE_41__** %139, align 16
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %142, i64 1
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %143, align 8
  %145 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 1
  store %struct.TYPE_41__* %144, %struct.TYPE_41__** %145, align 8
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @addReplySetLen(%struct.TYPE_42__* %146, i64 %147)
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %4, align 8
  %151 = sub i64 %149, %150
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @SPOP_MOVE_STRATEGY_MUL, align 8
  %154 = mul i64 %152, %153
  %155 = load i64, i64* %4, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %211

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %194, %157
  %159 = load i64, i64* %4, align 8
  %160 = add i64 %159, -1
  store i64 %160, i64* %4, align 8
  %161 = icmp ne i64 %159, 0
  br i1 %161, label %162, label %210

162:                                              ; preds = %158
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %164 = call i32 @setTypeRandomElement(%struct.TYPE_41__* %163, i8** %8, i32* %11)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @addReplyBulkLongLong(%struct.TYPE_42__* %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = call %struct.TYPE_41__* @createStringObjectFromLongLong(i32 %172)
  store %struct.TYPE_41__* %173, %struct.TYPE_41__** %9, align 8
  %174 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @intsetRemove(i32 %176, i32 %177, i32* null)
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  br label %194

181:                                              ; preds = %162
  %182 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @sdslen(i8* %184)
  %186 = call i32 @addReplyBulkCBuffer(%struct.TYPE_42__* %182, i8* %183, i32 %185)
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @sdslen(i8* %188)
  %190 = call %struct.TYPE_41__* @createStringObject(i8* %187, i32 %189)
  store %struct.TYPE_41__* %190, %struct.TYPE_41__** %9, align 8
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i32 @setTypeRemove(%struct.TYPE_41__* %191, i8* %192)
  br label %194

194:                                              ; preds = %181, %168
  %195 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %196 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 2
  store %struct.TYPE_41__* %195, %struct.TYPE_41__** %196, align 16
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 1), align 8
  %198 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 0
  %204 = load i32, i32* @PROPAGATE_AOF, align 4
  %205 = load i32, i32* @PROPAGATE_REPL, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @alsoPropagate(i32 %197, i32 %202, %struct.TYPE_41__** %203, i32 3, i32 %206)
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %209 = call i32 @decrRefCount(%struct.TYPE_41__* %208)
  br label %158

210:                                              ; preds = %158
  br label %299

211:                                              ; preds = %137
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %13, align 8
  br label %212

212:                                              ; preds = %234, %211
  %213 = load i64, i64* %12, align 8
  %214 = add i64 %213, -1
  store i64 %214, i64* %12, align 8
  %215 = icmp ne i64 %213, 0
  br i1 %215, label %216, label %243

216:                                              ; preds = %212
  %217 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %218 = call i32 @setTypeRandomElement(%struct.TYPE_41__* %217, i8** %8, i32* %11)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i32, i32* %11, align 4
  %224 = call i8* @sdsfromlonglong(i32 %223)
  store i8* %224, i8** %8, align 8
  br label %228

225:                                              ; preds = %216
  %226 = load i8*, i8** %8, align 8
  %227 = call i8* @sdsdup(i8* %226)
  store i8* %227, i8** %8, align 8
  br label %228

228:                                              ; preds = %225, %222
  %229 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %230 = icmp ne %struct.TYPE_41__* %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i8*, i8** %8, align 8
  %233 = call %struct.TYPE_41__* @setTypeCreate(i8* %232)
  store %struct.TYPE_41__* %233, %struct.TYPE_41__** %13, align 8
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %236 = load i8*, i8** %8, align 8
  %237 = call i32 @setTypeAdd(%struct.TYPE_41__* %235, i8* %236)
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 @setTypeRemove(%struct.TYPE_41__* %238, i8* %239)
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 @sdsfree(i8* %241)
  br label %212

243:                                              ; preds = %212
  %244 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %245 = call i32* @setTypeInitIterator(%struct.TYPE_41__* %244)
  store i32* %245, i32** %14, align 8
  br label %246

246:                                              ; preds = %270, %243
  %247 = load i32*, i32** %14, align 8
  %248 = call i32 @setTypeNext(i32* %247, i8** %8, i32* %11)
  store i32 %248, i32* %10, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %286

250:                                              ; preds = %246
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @addReplyBulkLongLong(%struct.TYPE_42__* %255, i32 %256)
  %258 = load i32, i32* %11, align 4
  %259 = call %struct.TYPE_41__* @createStringObjectFromLongLong(i32 %258)
  store %struct.TYPE_41__* %259, %struct.TYPE_41__** %9, align 8
  br label %270

260:                                              ; preds = %250
  %261 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %262 = load i8*, i8** %8, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = call i32 @sdslen(i8* %263)
  %265 = call i32 @addReplyBulkCBuffer(%struct.TYPE_42__* %261, i8* %262, i32 %264)
  %266 = load i8*, i8** %8, align 8
  %267 = load i8*, i8** %8, align 8
  %268 = call i32 @sdslen(i8* %267)
  %269 = call %struct.TYPE_41__* @createStringObject(i8* %266, i32 %268)
  store %struct.TYPE_41__* %269, %struct.TYPE_41__** %9, align 8
  br label %270

270:                                              ; preds = %260, %254
  %271 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %272 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 2
  store %struct.TYPE_41__* %271, %struct.TYPE_41__** %272, align 16
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 1), align 8
  %274 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_43__*, %struct.TYPE_43__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 0
  %280 = load i32, i32* @PROPAGATE_AOF, align 4
  %281 = load i32, i32* @PROPAGATE_REPL, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @alsoPropagate(i32 %273, i32 %278, %struct.TYPE_41__** %279, i32 3, i32 %282)
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %285 = call i32 @decrRefCount(%struct.TYPE_41__* %284)
  br label %246

286:                                              ; preds = %246
  %287 = load i32*, i32** %14, align 8
  %288 = call i32 @setTypeReleaseIterator(i32* %287)
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %290, align 8
  %292 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %294, i64 1
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %295, align 8
  %297 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %298 = call i32 @dbOverwrite(%struct.TYPE_43__* %291, %struct.TYPE_41__* %296, %struct.TYPE_41__* %297)
  br label %299

299:                                              ; preds = %286, %210
  %300 = getelementptr inbounds [3 x %struct.TYPE_41__*], [3 x %struct.TYPE_41__*]* %7, i64 0, i64 0
  %301 = load %struct.TYPE_41__*, %struct.TYPE_41__** %300, align 16
  %302 = call i32 @decrRefCount(%struct.TYPE_41__* %301)
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %304 = call i32 @preventCommandPropagation(%struct.TYPE_42__* %303)
  %305 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_43__*, %struct.TYPE_43__** %306, align 8
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %310, i64 1
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %311, align 8
  %313 = call i32 @signalModifiedKey(%struct.TYPE_43__* %307, %struct.TYPE_41__* %312)
  %314 = load i64, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 8
  br label %316

316:                                              ; preds = %299, %89, %59, %55, %30, %24
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_42__*, %struct.TYPE_41__*, i64*, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_42__*, i32) #1

declare dso_local %struct.TYPE_41__* @lookupKeyWriteOrReply(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @setTypeSize(%struct.TYPE_41__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @sunionDiffGenericCommand(%struct.TYPE_42__*, %struct.TYPE_41__**, i32, i32*, i32) #1

declare dso_local i32 @dbDelete(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_42__*, i32, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_41__* @createStringObject(i8*, i32) #1

declare dso_local i32 @addReplySetLen(%struct.TYPE_42__*, i64) #1

declare dso_local i32 @setTypeRandomElement(%struct.TYPE_41__*, i8**, i32*) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_42__*, i32) #1

declare dso_local %struct.TYPE_41__* @createStringObjectFromLongLong(i32) #1

declare dso_local i32 @intsetRemove(i32, i32, i32*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_42__*, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @setTypeRemove(%struct.TYPE_41__*, i8*) #1

declare dso_local i32 @alsoPropagate(i32, i32, %struct.TYPE_41__**, i32, i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_41__*) #1

declare dso_local i8* @sdsfromlonglong(i32) #1

declare dso_local i8* @sdsdup(i8*) #1

declare dso_local %struct.TYPE_41__* @setTypeCreate(i8*) #1

declare dso_local i32 @setTypeAdd(%struct.TYPE_41__*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32* @setTypeInitIterator(%struct.TYPE_41__*) #1

declare dso_local i32 @setTypeNext(i32*, i8**, i32*) #1

declare dso_local i32 @setTypeReleaseIterator(i32*) #1

declare dso_local i32 @dbOverwrite(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @preventCommandPropagation(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
