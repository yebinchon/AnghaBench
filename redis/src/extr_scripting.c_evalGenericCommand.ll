; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_evalGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_evalGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, i8*, i64, i32, i64, i32, i64, %struct.TYPE_26__*, i64, i64, i64, i32*, i64, i32, %struct.TYPE_29__*, i64, i64, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__**, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@server = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Number of keys can't be greater than number of args\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Number of keys can't be negative\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"__redis__err__handler\00", align 1
@shared = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@ldb = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@luaMaskCountHook = common dso_local global i32* null, align 8
@LUA_MASKCOUNT = common dso_local global i32 0, align 4
@luaLdbLineHook = common dso_local global i32* null, align 8
@LUA_MASKLINE = common dso_local global i32 0, align 4
@evalGenericCommand.gc_count = internal global i64 0, align 8
@LUA_GCSTEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Error running script (call to %s): %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"EVAL\00", align 1
@LUA_GC_CYCLE_PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evalGenericCommand(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [43 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1 x i32*], align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 12), align 8
  store i32* %15, i32** %5, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 0), align 8
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = call i32 @redisSrand48(i32 0)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 18), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 17), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 16), align 8
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 7), align 8
  %19 = load i32, i32* @PROPAGATE_AOF, align 4
  %20 = load i32, i32* @PROPAGATE_REPL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 1), align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %25, i64 2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_26__* %22, %struct.TYPE_23__* %27, i64* %7, i32* null)
  %29 = load i64, i64* @C_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %370

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %42 = call i32 @addReplyError(%struct.TYPE_26__* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %370

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %48 = call i32 @addReplyError(%struct.TYPE_26__* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %370

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  store i8 102, i8* %51, align 16
  %52 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 1
  store i8 95, i8* %52, align 1
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %60, i64 1
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %67, i64 1
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @sdslen(i8* %71)
  %73 = call i32 @sha1hex(i8* %57, i8* %64, i32 %72)
  br label %128

74:                                               ; preds = %50
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %77, i64 1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %123, %74
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 40
  br i1 %84, label %85, label %126

85:                                               ; preds = %82
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sge i32 %91, 65
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 90
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = add nsw i32 %107, 32
  br label %116

109:                                              ; preds = %93, %85
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  br label %116

116:                                              ; preds = %109, %101
  %117 = phi i32 [ %108, %101 ], [ %115, %109 ]
  %118 = trunc i32 %117 to i8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 %121
  store i8 %118, i8* %122, align 1
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %82

126:                                              ; preds = %82
  %127 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 42
  store i8 0, i8* %127, align 2
  br label %128

128:                                              ; preds = %126, %55
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @lua_getglobal(i32* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  %133 = call i32 @lua_getglobal(i32* %131, i8* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i64 @lua_isnil(i32* %134, i32 -1)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %128
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @lua_pop(i32* %138, i32 1)
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @lua_pop(i32* %143, i32 1)
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @shared, i32 0, i32 0), align 4
  %147 = call i32 @addReply(%struct.TYPE_26__* %145, i32 %146)
  br label %370

148:                                              ; preds = %137
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %153, i64 1
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = call i32* @luaCreateFunction(%struct.TYPE_26__* %149, i32* %150, %struct.TYPE_23__* %155)
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @lua_pop(i32* %159, i32 1)
  br label %370

161:                                              ; preds = %148
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  %164 = call i32 @lua_getglobal(i32* %162, i8* %163)
  %165 = load i32*, i32** %5, align 8
  %166 = call i64 @lua_isnil(i32* %165, i32 -1)
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @serverAssert(i32 %169)
  br label %171

171:                                              ; preds = %161, %128
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %175, i64 3
  %177 = load i64, i64* %7, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @luaSetGlobalArray(i32* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_23__** %176, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %183, i64 3
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %184, i64 %185
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 3
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %7, align 8
  %193 = sub nsw i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @luaSetGlobalArray(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_23__** %186, i32 %194)
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 15), align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @selectDb(%struct.TYPE_29__* %196, i32 %201)
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 15), align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  store i32 2, i32* %204, align 4
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_26__* %205, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 8), align 8
  %206 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  store i8* %207, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 2), align 8
  %208 = call i32 (...) @mstime()
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 13), align 8
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 3), align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %171
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ldb, i32 0, i32 0), align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32*, i32** %5, align 8
  %216 = load i32*, i32** @luaMaskCountHook, align 8
  %217 = load i32, i32* @LUA_MASKCOUNT, align 4
  %218 = call i32 @lua_sethook(i32* %215, i32* %216, i32 %217, i32 100000)
  store i32 1, i32* %9, align 4
  br label %230

219:                                              ; preds = %211, %171
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ldb, i32 0, i32 0), align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32*, i32** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 12), align 8
  %224 = load i32*, i32** @luaLdbLineHook, align 8
  %225 = load i32, i32* @LUA_MASKLINE, align 4
  %226 = load i32, i32* @LUA_MASKCOUNT, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @lua_sethook(i32* %223, i32* %224, i32 %227, i32 100000)
  store i32 1, i32* %9, align 4
  br label %229

229:                                              ; preds = %222, %219
  br label %230

230:                                              ; preds = %229, %214
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @lua_pcall(i32* %231, i32 0, i32 1, i32 -2)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @lua_sethook(i32* %236, i32* null, i32 0, i32 0)
  br label %238

238:                                              ; preds = %235, %230
  %239 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 11), align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 11), align 8
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %243 = call i32 @unprotectClient(%struct.TYPE_26__* %242)
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 10), align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 9), align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 9), align 8
  %251 = call i32 @queueClientForReprocessing(i64 %250)
  br label %252

252:                                              ; preds = %249, %246, %241
  br label %253

253:                                              ; preds = %252, %238
  store %struct.TYPE_26__* null, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 8), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 2), align 8
  %254 = load i64, i64* @evalGenericCommand.gc_count, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* @evalGenericCommand.gc_count, align 8
  %256 = load i64, i64* @evalGenericCommand.gc_count, align 8
  %257 = icmp eq i64 %256, 50
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32*, i32** %5, align 8
  %260 = load i32, i32* @LUA_GCSTEP, align 4
  %261 = call i32 @lua_gc(i32* %259, i32 %260, i64 50)
  store i64 0, i64* @evalGenericCommand.gc_count, align 8
  br label %262

262:                                              ; preds = %258, %253
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %267 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @lua_tostring(i32* %268, i32 -1)
  %270 = call i32 @addReplyErrorFormat(%struct.TYPE_26__* %266, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %267, i32 %269)
  %271 = load i32*, i32** %5, align 8
  %272 = call i32 @lua_pop(i32* %271, i32 2)
  br label %279

273:                                              ; preds = %262
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %275 = load i32*, i32** %5, align 8
  %276 = call i32 @luaReplyToRedisReply(%struct.TYPE_26__* %274, i32* %275)
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @lua_pop(i32* %277, i32 1)
  br label %279

279:                                              ; preds = %273, %265
  %280 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 5), align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %279
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %284 = call i32 @preventCommandPropagation(%struct.TYPE_26__* %283)
  %285 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 7), align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %304

287:                                              ; preds = %282
  %288 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %289 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  store i32* %288, i32** %289, align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 6), align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  %297 = load i32, i32* @PROPAGATE_AOF, align 4
  %298 = load i32, i32* @PROPAGATE_REPL, align 4
  %299 = or i32 %297, %298
  %300 = call i32 @alsoPropagate(i32 %290, i32 %295, i32** %296, i32 1, i32 %299)
  %301 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @decrRefCount(i32* %302)
  br label %304

304:                                              ; preds = %287, %282
  br label %305

305:                                              ; preds = %304, %279
  %306 = load i32, i32* %4, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %370

308:                                              ; preds = %305
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 5), align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %370, label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %314, i64 1
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @replicationScriptCacheExists(i8* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %369, label %321

321:                                              ; preds = %311
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 4), align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %325, i64 1
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = call i32* @dictFetchValue(i32 %322, i8* %329)
  store i32* %330, i32** %14, align 8
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %333, i64 1
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @replicationScriptCacheAdd(i8* %337)
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %340 = load i32*, i32** %14, align 8
  %341 = icmp ne i32* %340, null
  %342 = zext i1 %341 to i32
  %343 = call i32 @serverAssertWithInfo(%struct.TYPE_26__* %339, i32* null, i32 %342)
  %344 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 0), align 8
  %345 = load i64, i64* %8, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %355

347:                                              ; preds = %321
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %349 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %350 = call i32* @resetRefCount(i32* %349)
  %351 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %352 = call i32* @resetRefCount(i32* %351)
  %353 = load i32*, i32** %14, align 8
  %354 = call i32 @rewriteClientCommandVector(%struct.TYPE_26__* %348, i32 3, i32* %350, i32* %352, i32* %353)
  br label %363

355:                                              ; preds = %321
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %357 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %358 = call i32* @resetRefCount(i32* %357)
  %359 = call i32 @rewriteClientCommandArgument(%struct.TYPE_26__* %356, i32 0, i32* %358)
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %361 = load i32*, i32** %14, align 8
  %362 = call i32 @rewriteClientCommandArgument(%struct.TYPE_26__* %360, i32 1, i32* %361)
  br label %363

363:                                              ; preds = %355, %347
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %365 = load i32, i32* @PROPAGATE_REPL, align 4
  %366 = load i32, i32* @PROPAGATE_AOF, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @forceCommandPropagation(%struct.TYPE_26__* %364, i32 %367)
  br label %369

369:                                              ; preds = %363, %311
  br label %370

370:                                              ; preds = %31, %40, %46, %142, %158, %369, %308, %305
  ret void
}

declare dso_local i32 @redisSrand48(i32) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_26__*, %struct.TYPE_23__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @sha1hex(i8*, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @luaCreateFunction(%struct.TYPE_26__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @luaSetGlobalArray(i32*, i8*, %struct.TYPE_23__**, i32) #1

declare dso_local i32 @selectDb(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @lua_sethook(i32*, i32*, i32, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @unprotectClient(%struct.TYPE_26__*) #1

declare dso_local i32 @queueClientForReprocessing(i64) #1

declare dso_local i32 @lua_gc(i32*, i32, i64) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_26__*, i8*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaReplyToRedisReply(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @preventCommandPropagation(%struct.TYPE_26__*) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @alsoPropagate(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @replicationScriptCacheExists(i8*) #1

declare dso_local i32* @dictFetchValue(i32, i8*) #1

declare dso_local i32 @replicationScriptCacheAdd(i8*) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_26__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @resetRefCount(i32*) #1

declare dso_local i32 @rewriteClientCommandArgument(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @forceCommandPropagation(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
