; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptingInit.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptingInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__*, i64, i32, i64, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@shaScriptObjectDictType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@luaRedisCallCommand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@luaRedisPCallCommand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@luaLogCommand = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"setresp\00", align 1
@luaSetResp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"LOG_DEBUG\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"LOG_VERBOSE\00", align 1
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"LOG_NOTICE\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"LOG_WARNING\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"sha1hex\00", align 1
@luaRedisSha1hexCommand = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"error_reply\00", align 1
@luaRedisErrorReplyCommand = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"status_reply\00", align 1
@luaRedisStatusReplyCommand = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"replicate_commands\00", align 1
@luaRedisReplicateCommandsCommand = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"set_repl\00", align 1
@luaRedisSetReplCommand = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"REPL_NONE\00", align 1
@PROPAGATE_NONE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"REPL_AOF\00", align 1
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"REPL_SLAVE\00", align 1
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"REPL_REPLICA\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"REPL_ALL\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"breakpoint\00", align 1
@luaRedisBreakpointCommand = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@luaRedisDebugCommand = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@redis_math_random = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@redis_math_randomseed = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [120 x i8] c"function __redis__compare_helper(a,b)\0A  if a == false then a = '' end\0A  if b == false then b = '' end\0A  return a<b\0Aend\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"@cmp_func_def\00", align 1
@.str.26 = private unnamed_addr constant [256 x i8] c"local dbg = debug\0Afunction __redis__err__handler(err)\0A  local i = dbg.getinfo(2,'nSl')\0A  if i and i.what == 'C' then\0A    i = dbg.getinfo(3,'nSl')\0A  end\0A  if i then\0A    return i.source .. ':' .. i.currentline .. ': ' .. err\0A  else\0A    return err\0A  end\0Aend\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"@err_handler_def\00", align 1
@CLIENT_LUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scriptingInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32* (...) @lua_open()
  store i32* %6, i32** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 4), align 8
  %10 = call i32 (...) @ldbInit()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaLoadLibraries(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaRemoveUnsupportedFunctions(i32* %14)
  %16 = call i32 @dictCreate(i32* @shaScriptObjectDictType, i32* null)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 2), align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_newtable(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushstring(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @luaRedisCallCommand, align 4
  %23 = call i32 @lua_pushcfunction(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_settable(i32* %24, i32 -3)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushstring(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @luaRedisPCallCommand, align 4
  %30 = call i32 @lua_pushcfunction(i32* %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_settable(i32* %31, i32 -3)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushstring(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @luaLogCommand, align 4
  %37 = call i32 @lua_pushcfunction(i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_settable(i32* %38, i32 -3)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_pushstring(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @luaSetResp, align 4
  %44 = call i32 @lua_pushcfunction(i32* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_settable(i32* %45, i32 -3)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pushstring(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @LL_DEBUG, align 4
  %51 = call i32 @lua_pushnumber(i32* %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_settable(i32* %52, i32 -3)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pushstring(i32* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @LL_VERBOSE, align 4
  %58 = call i32 @lua_pushnumber(i32* %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_settable(i32* %59, i32 -3)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_pushstring(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @LL_NOTICE, align 4
  %65 = call i32 @lua_pushnumber(i32* %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_settable(i32* %66, i32 -3)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @lua_pushstring(i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @LL_WARNING, align 4
  %72 = call i32 @lua_pushnumber(i32* %70, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_settable(i32* %73, i32 -3)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_pushstring(i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @luaRedisSha1hexCommand, align 4
  %79 = call i32 @lua_pushcfunction(i32* %77, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_settable(i32* %80, i32 -3)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_pushstring(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @luaRedisErrorReplyCommand, align 4
  %86 = call i32 @lua_pushcfunction(i32* %84, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @lua_settable(i32* %87, i32 -3)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_pushstring(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @luaRedisStatusReplyCommand, align 4
  %93 = call i32 @lua_pushcfunction(i32* %91, i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @lua_settable(i32* %94, i32 -3)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @lua_pushstring(i32* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @luaRedisReplicateCommandsCommand, align 4
  %100 = call i32 @lua_pushcfunction(i32* %98, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @lua_settable(i32* %101, i32 -3)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_pushstring(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* @luaRedisSetReplCommand, align 4
  %107 = call i32 @lua_pushcfunction(i32* %105, i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_settable(i32* %108, i32 -3)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @lua_pushstring(i32* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @PROPAGATE_NONE, align 4
  %114 = call i32 @lua_pushnumber(i32* %112, i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @lua_settable(i32* %115, i32 -3)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @lua_pushstring(i32* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @PROPAGATE_AOF, align 4
  %121 = call i32 @lua_pushnumber(i32* %119, i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @lua_settable(i32* %122, i32 -3)
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @lua_pushstring(i32* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @PROPAGATE_REPL, align 4
  %128 = call i32 @lua_pushnumber(i32* %126, i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @lua_settable(i32* %129, i32 -3)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @lua_pushstring(i32* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* @PROPAGATE_REPL, align 4
  %135 = call i32 @lua_pushnumber(i32* %133, i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @lua_settable(i32* %136, i32 -3)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @lua_pushstring(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* @PROPAGATE_AOF, align 4
  %142 = load i32, i32* @PROPAGATE_REPL, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @lua_pushnumber(i32* %140, i32 %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @lua_settable(i32* %145, i32 -3)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @lua_pushstring(i32* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* @luaRedisBreakpointCommand, align 4
  %151 = call i32 @lua_pushcfunction(i32* %149, i32 %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @lua_settable(i32* %152, i32 -3)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @lua_pushstring(i32* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* @luaRedisDebugCommand, align 4
  %158 = call i32 @lua_pushcfunction(i32* %156, i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @lua_settable(i32* %159, i32 -3)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @lua_setglobal(i32* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @lua_getglobal(i32* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @lua_pushstring(i32* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %167 = load i32*, i32** %3, align 8
  %168 = load i32, i32* @redis_math_random, align 4
  %169 = call i32 @lua_pushcfunction(i32* %167, i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @lua_settable(i32* %170, i32 -3)
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @lua_pushstring(i32* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %174 = load i32*, i32** %3, align 8
  %175 = load i32, i32* @redis_math_randomseed, align 4
  %176 = call i32 @lua_pushcfunction(i32* %174, i32 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @lua_settable(i32* %177, i32 -3)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @lua_setglobal(i32* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  store i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.24, i64 0, i64 0), i8** %4, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = call i32 @luaL_loadbuffer(i32* %181, i8* %182, i32 %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @lua_pcall(i32* %186, i32 0, i32 0, i32 0)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.26, i64 0, i64 0), i8** %5, align 8
  %188 = load i32*, i32** %3, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @strlen(i8* %190)
  %192 = call i32 @luaL_loadbuffer(i32* %188, i8* %189, i32 %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @lua_pcall(i32* %193, i32 0, i32 0, i32 0)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), align 8
  %196 = icmp eq %struct.TYPE_4__* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %11
  %198 = call %struct.TYPE_4__* @createClient(i32* null)
  store %struct.TYPE_4__* %198, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), align 8
  %199 = load i32, i32* @CLIENT_LUA, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %197, %11
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @scriptingEnableGlobalsProtection(i32* %205)
  %207 = load i32*, i32** %3, align 8
  store i32* %207, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32* @lua_open(...) #1

declare dso_local i32 @ldbInit(...) #1

declare dso_local i32 @luaLoadLibraries(i32*) #1

declare dso_local i32 @luaRemoveUnsupportedFunctions(i32*) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @createClient(i32*) #1

declare dso_local i32 @scriptingEnableGlobalsProtection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
