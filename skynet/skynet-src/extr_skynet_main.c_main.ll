; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c_main.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_config = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.lua_State = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"Need a config file. Please read skynet wiki : https://github.com/cloudwu/skynet/wiki/Config\0Ausage: skynet configfilename\0A\00", align 1
@load_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"=[skynet config]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@LUA_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./cservice/?.so\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"harbor\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"bootstrap\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"snlua bootstrap\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"logger\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"logservice\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"profile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.skynet_config, align 8
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

19:                                               ; preds = %12
  %20 = call i32 (...) @skynet_globalinit()
  %21 = call i32 (...) @skynet_env_init()
  %22 = call i32 (...) @sigign()
  %23 = call %struct.lua_State* (...) @luaL_newstate()
  store %struct.lua_State* %23, %struct.lua_State** %8, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %25 = call i32 @luaL_openlibs(%struct.lua_State* %24)
  %26 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %27 = load i32, i32* @load_config, align 4
  %28 = load i32, i32* @load_config, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = call i32 @luaL_loadbufferx(%struct.lua_State* %26, i32 %27, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @LUA_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @lua_pushstring(%struct.lua_State* %36, i8* %37)
  %39 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %40 = call i32 @lua_pcall(%struct.lua_State* %39, i32 1, i32 1, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %19
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %46 = call i8* @lua_tostring(%struct.lua_State* %45, i32 -1)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %49 = call i32 @lua_close(%struct.lua_State* %48)
  store i32 1, i32* %3, align 4
  br label %73

50:                                               ; preds = %19
  %51 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %52 = call i32 @_init_env(%struct.lua_State* %51)
  %53 = call i8* @optint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %54 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 7
  store i8* %53, i8** %54, align 8
  %55 = call i8* @optstring(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 6
  store i8* %55, i8** %56, align 8
  %57 = call i8* @optint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %58 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 5
  store i8* %57, i8** %58, align 8
  %59 = call i8* @optstring(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 4
  store i8* %59, i8** %60, align 8
  %61 = call i8* @optstring(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* null)
  %62 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 3
  store i8* %61, i8** %62, align 8
  %63 = call i8* @optstring(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %64 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = call i8* @optstring(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = call i32 @optboolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %68 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %70 = call i32 @lua_close(%struct.lua_State* %69)
  %71 = call i32 @skynet_start(%struct.skynet_config* %7)
  %72 = call i32 (...) @skynet_globalexit()
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %50, %43, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @skynet_globalinit(...) #1

declare dso_local i32 @skynet_env_init(...) #1

declare dso_local i32 @sigign(...) #1

declare dso_local %struct.lua_State* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(%struct.lua_State*) #1

declare dso_local i32 @luaL_loadbufferx(%struct.lua_State*, i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lua_pushstring(%struct.lua_State*, i8*) #1

declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_close(%struct.lua_State*) #1

declare dso_local i32 @_init_env(%struct.lua_State*) #1

declare dso_local i8* @optint(i8*, i32) #1

declare dso_local i8* @optstring(i8*, i8*) #1

declare dso_local i32 @optboolean(i8*, i32) #1

declare dso_local i32 @skynet_start(%struct.skynet_config*) #1

declare dso_local i32 @skynet_globalexit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
