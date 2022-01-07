; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lnewconf.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lnewconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, %struct.table*, %struct.table* }
%struct.context = type { i32, %struct.context*, %struct.context* }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memory error\00", align 1
@pconv = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*)* @lnewconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnewconf(%struct.table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.context, align 8
  %6 = alloca %struct.table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.table* %0, %struct.table** %3, align 8
  store %struct.table* null, %struct.table** %6, align 8
  %9 = load %struct.table*, %struct.table** %3, align 8
  %10 = load i32, i32* @LUA_TTABLE, align 4
  %11 = call i32 @luaL_checktype(%struct.table* %9, i32 1, i32 %10)
  %12 = call %struct.table* (...) @luaL_newstate()
  %13 = bitcast %struct.table* %12 to %struct.context*
  %14 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  store %struct.context* %13, %struct.context** %14, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  store %struct.context* null, %struct.context** %15, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %18 = load %struct.context*, %struct.context** %17, align 8
  %19 = icmp eq %struct.context* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.table*, %struct.table** %3, align 8
  %22 = call i32 @lua_pushliteral(%struct.table* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %80

23:                                               ; preds = %1
  %24 = call i64 @malloc(i32 24)
  %25 = inttoptr i64 %24 to %struct.table*
  store %struct.table* %25, %struct.table** %6, align 8
  %26 = load %struct.table*, %struct.table** %6, align 8
  %27 = icmp eq %struct.table* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %30 = load %struct.context*, %struct.context** %29, align 8
  %31 = bitcast %struct.context* %30 to %struct.table*
  %32 = call i32 @lua_close(%struct.table* %31)
  %33 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  store %struct.context* null, %struct.context** %33, align 8
  %34 = load %struct.table*, %struct.table** %3, align 8
  %35 = call i32 @lua_pushliteral(%struct.table* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %80

36:                                               ; preds = %23
  %37 = load %struct.table*, %struct.table** %6, align 8
  %38 = call i32 @memset(%struct.table* %37, i32 0, i32 24)
  %39 = load %struct.table*, %struct.table** %6, align 8
  %40 = bitcast %struct.table* %39 to %struct.context*
  %41 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  store %struct.context* %40, %struct.context** %41, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %43 = load %struct.context*, %struct.context** %42, align 8
  %44 = bitcast %struct.context* %43 to %struct.table*
  %45 = load i32, i32* @pconv, align 4
  %46 = call i32 @lua_pushcfunction(%struct.table* %44, i32 %45)
  %47 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %48 = load %struct.context*, %struct.context** %47, align 8
  %49 = bitcast %struct.context* %48 to %struct.table*
  %50 = bitcast %struct.context* %5 to %struct.table*
  %51 = call i32 @lua_pushlightuserdata(%struct.table* %49, %struct.table* %50)
  %52 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %53 = load %struct.context*, %struct.context** %52, align 8
  %54 = bitcast %struct.context* %53 to %struct.table*
  %55 = load %struct.table*, %struct.table** %3, align 8
  %56 = call i32 @lua_pushlightuserdata(%struct.table* %54, %struct.table* %55)
  %57 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %58 = load %struct.context*, %struct.context** %57, align 8
  %59 = bitcast %struct.context* %58 to %struct.table*
  %60 = call i32 @lua_pcall(%struct.table* %59, i32 2, i32 1, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @LUA_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %66 = load %struct.context*, %struct.context** %65, align 8
  %67 = bitcast %struct.context* %66 to %struct.table*
  %68 = call i8* @lua_tolstring(%struct.table* %67, i32 -1, i64* %7)
  store i8* %68, i8** %8, align 8
  %69 = load %struct.table*, %struct.table** %3, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @lua_pushlstring(%struct.table* %69, i8* %70, i64 %71)
  br label %80

73:                                               ; preds = %36
  %74 = bitcast %struct.context* %5 to %struct.table*
  %75 = load %struct.table*, %struct.table** %6, align 8
  %76 = call i32 @convert_stringmap(%struct.table* %74, %struct.table* %75)
  %77 = load %struct.table*, %struct.table** %3, align 8
  %78 = load %struct.table*, %struct.table** %6, align 8
  %79 = call i32 @lua_pushlightuserdata(%struct.table* %77, %struct.table* %78)
  store i32 1, i32* %2, align 4
  br label %98

80:                                               ; preds = %64, %28, %20
  %81 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %82 = load %struct.context*, %struct.context** %81, align 8
  %83 = icmp ne %struct.context* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %86 = load %struct.context*, %struct.context** %85, align 8
  %87 = bitcast %struct.context* %86 to %struct.table*
  %88 = call i32 @lua_close(%struct.table* %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.table*, %struct.table** %6, align 8
  %91 = icmp ne %struct.table* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.table*, %struct.table** %6, align 8
  %94 = call i32 @delete_tbl(%struct.table* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.table*, %struct.table** %3, align 8
  %97 = call i32 @lua_error(%struct.table* %96)
  store i32 -1, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %73
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @luaL_checktype(%struct.table*, i32, i32) #1

declare dso_local %struct.table* @luaL_newstate(...) #1

declare dso_local i32 @lua_pushliteral(%struct.table*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @lua_close(%struct.table*) #1

declare dso_local i32 @memset(%struct.table*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(%struct.table*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(%struct.table*, %struct.table*) #1

declare dso_local i32 @lua_pcall(%struct.table*, i32, i32, i32) #1

declare dso_local i8* @lua_tolstring(%struct.table*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(%struct.table*, i8*, i64) #1

declare dso_local i32 @convert_stringmap(%struct.table*, %struct.table*) #1

declare dso_local i32 @delete_tbl(%struct.table*) #1

declare dso_local i32 @lua_error(%struct.table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
