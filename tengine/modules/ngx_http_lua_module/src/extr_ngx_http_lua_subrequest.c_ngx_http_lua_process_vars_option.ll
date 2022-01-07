; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_process_vars_option.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_process_vars_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"here\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"attempt to use a non-string key in the \22vars\22 option table\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"attempt to use bad variable value type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32, i32**)* @ngx_http_lua_process_vars_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_process_vars_option(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %13, %4
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @ngx_array_create(i32 %27, i32 4, i32 32)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = call i32 @dd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 (i32*, i8*, ...) @luaL_error(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %93

35:                                               ; preds = %24
  %36 = load i32*, i32** %9, align 8
  %37 = load i32**, i32*** %8, align 8
  store i32* %36, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %19
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @lua_pushnil(i32* %39)
  br label %41

41:                                               ; preds = %72, %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @lua_next(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @lua_type(i32* %47, i32 -2)
  %49 = load i64, i64* @LUA_TSTRING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 (i32*, i8*, ...) @luaL_error(i32* %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %93

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @lua_isstring(i32* %55, i32 -1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @luaL_typename(i32* %60, i32 -1)
  %62 = call i32 (i32*, i8*, ...) @luaL_error(i32* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %93

63:                                               ; preds = %54
  %64 = load i32*, i32** %9, align 8
  %65 = call %struct.TYPE_9__* @ngx_array_push(i32* %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %10, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = icmp eq %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @dd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 (i32*, i8*, ...) @luaL_error(i32* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %93

72:                                               ; preds = %63
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i64 @lua_tolstring(i32* %73, i32 -2, i32* %76)
  %78 = inttoptr i64 %77 to i32*
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32* %78, i32** %81, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i64 @lua_tolstring(i32* %82, i32 -1, i32* %85)
  %87 = inttoptr i64 %86 to i32*
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32* %87, i32** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @lua_pop(i32* %91, i32 1)
  br label %41

93:                                               ; preds = %31, %51, %58, %68, %41
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @dd(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_array_push(i32*) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
