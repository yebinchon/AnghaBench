; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_setvalue.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_setvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.table* }
%struct.table = type { i32 }
%struct.node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.table*, i32, i32, i32, i32 }

@VALUETYPE_NIL = common dso_local global i32 0, align 4
@VALUETYPE_INTEGER = common dso_local global i32 0, align 4
@VALUETYPE_REAL = common dso_local global i32 0, align 4
@VALUETYPE_STRING = common dso_local global i32 0, align 4
@VALUETYPE_BOOLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memory error\00", align 1
@convtable = common dso_local global i32 0, align 4
@VALUETYPE_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupport value type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32*, i32, %struct.node*)* @setvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setvalue(%struct.context* %0, i32* %1, i32 %2, %struct.node* %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.table*, align 8
  %13 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.node* %3, %struct.node** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @lua_type(i32* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %121 [
    i32 131, label %18
    i32 130, label %22
    i32 129, label %48
    i32 132, label %62
    i32 128, label %72
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @VALUETYPE_NIL, align 4
  %20 = load %struct.node*, %struct.node** %8, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %127

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lua_isinteger(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @lua_tointeger(i32* %28, i32 %29)
  %31 = load %struct.node*, %struct.node** %8, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @VALUETYPE_INTEGER, align 4
  %35 = load %struct.node*, %struct.node** %8, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %47

37:                                               ; preds = %22
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @lua_tonumber(i32* %38, i32 %39)
  %41 = load %struct.node*, %struct.node** %8, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @VALUETYPE_REAL, align 4
  %45 = load %struct.node*, %struct.node** %8, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %37, %27
  br label %127

48:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @lua_tolstring(i32* %49, i32 %50, i64* %10)
  store i8* %51, i8** %11, align 8
  %52 = load %struct.context*, %struct.context** %5, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @stringindex(%struct.context* %52, i8* %53, i64 %54)
  %56 = load %struct.node*, %struct.node** %8, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @VALUETYPE_STRING, align 4
  %60 = load %struct.node*, %struct.node** %8, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %127

62:                                               ; preds = %4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @lua_toboolean(i32* %63, i32 %64)
  %66 = load %struct.node*, %struct.node** %8, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @VALUETYPE_BOOLEAN, align 4
  %70 = load %struct.node*, %struct.node** %8, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %127

72:                                               ; preds = %4
  %73 = load %struct.context*, %struct.context** %5, align 8
  %74 = getelementptr inbounds %struct.context, %struct.context* %73, i32 0, i32 0
  %75 = load %struct.table*, %struct.table** %74, align 8
  store %struct.table* %75, %struct.table** %12, align 8
  %76 = call i64 @malloc(i32 4)
  %77 = inttoptr i64 %76 to %struct.table*
  %78 = load %struct.context*, %struct.context** %5, align 8
  %79 = getelementptr inbounds %struct.context, %struct.context* %78, i32 0, i32 0
  store %struct.table* %77, %struct.table** %79, align 8
  %80 = load %struct.context*, %struct.context** %5, align 8
  %81 = getelementptr inbounds %struct.context, %struct.context* %80, i32 0, i32 0
  %82 = load %struct.table*, %struct.table** %81, align 8
  %83 = icmp eq %struct.table* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.table*, %struct.table** %12, align 8
  %86 = load %struct.context*, %struct.context** %5, align 8
  %87 = getelementptr inbounds %struct.context, %struct.context* %86, i32 0, i32 0
  store %struct.table* %85, %struct.table** %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 (i32*, i8*, ...) @luaL_error(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %72
  %91 = load %struct.context*, %struct.context** %5, align 8
  %92 = getelementptr inbounds %struct.context, %struct.context* %91, i32 0, i32 0
  %93 = load %struct.table*, %struct.table** %92, align 8
  %94 = call i32 @memset(%struct.table* %93, i32 0, i32 4)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @lua_absindex(i32* %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @convtable, align 4
  %100 = call i32 @lua_pushcfunction(i32* %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @lua_pushvalue(i32* %101, i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.context*, %struct.context** %5, align 8
  %106 = call i32 @lua_pushlightuserdata(i32* %104, %struct.context* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @lua_call(i32* %107, i32 2, i32 0)
  %109 = load %struct.context*, %struct.context** %5, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 0
  %111 = load %struct.table*, %struct.table** %110, align 8
  %112 = load %struct.node*, %struct.node** %8, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store %struct.table* %111, %struct.table** %114, align 8
  %115 = load i32, i32* @VALUETYPE_TABLE, align 4
  %116 = load %struct.node*, %struct.node** %8, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.table*, %struct.table** %12, align 8
  %119 = load %struct.context*, %struct.context** %5, align 8
  %120 = getelementptr inbounds %struct.context, %struct.context* %119, i32 0, i32 0
  store %struct.table* %118, %struct.table** %120, align 8
  br label %127

121:                                              ; preds = %4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @lua_typename(i32* %123, i32 %124)
  %126 = call i32 (i32*, i8*, ...) @luaL_error(i32* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %90, %62, %48, %47, %18
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @stringindex(%struct.context*, i8*, i64) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.table*, i32, i32) #1

declare dso_local i32 @lua_absindex(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.context*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
