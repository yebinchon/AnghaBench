; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_buffer_meth_receive.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_buffer_meth_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, i32)* }

@IO_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*l\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid receive pattern\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_meth_receive(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %13 = load i32, i32* @IO_DONE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_optlstring(i32* %16, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64* %8)
  store i8* %17, i8** %9, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_buffinit(i32* %18, i32* %7)
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @luaL_addlstring(i32* %7, i8* %20, i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_isnumber(i32* %23, i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @luaL_optstring(i32* %27, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 42
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 108
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = call i32 @recvline(%struct.TYPE_8__* %41, i32* %7)
  store i32 %42, i32* %5, align 4
  br label %62

43:                                               ; preds = %34, %26
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 97
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @recvall(%struct.TYPE_8__* %56, i32* %7)
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %49, %43
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @luaL_argcheck(i32* %59, i32 0, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %40
  br label %86

63:                                               ; preds = %2
  %64 = load i32*, i32** %3, align 8
  %65 = call double @lua_tonumber(i32* %64, i32 2)
  store double %65, double* %11, align 8
  %66 = load double, double* %11, align 8
  %67 = fptoui double %66 to i64
  store i64 %67, i64* %12, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load double, double* %11, align 8
  %70 = fcmp oge double %69, 0.000000e+00
  %71 = zext i1 %70 to i32
  %72 = call i32 @luaL_argcheck(i32* %68, i32 %71, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75, %63
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @recvraw(%struct.TYPE_8__* %80, i64 %83, i32* %7)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IO_DONE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = call i32 @luaL_pushresult(i32* %7)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32 (i32, i32)*, i32 (i32, i32)** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 %97(i32 %102, i32 %103)
  %105 = call i32 @lua_pushstring(i32* %92, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_pushvalue(i32* %106, i32 -2)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_pushnil(i32* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @lua_replace(i32* %110, i32 -4)
  br label %118

112:                                              ; preds = %86
  %113 = call i32 @luaL_pushresult(i32* %7)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @lua_pushnil(i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @lua_pushnil(i32* %116)
  br label %118

118:                                              ; preds = %112, %90
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @lua_gettop(i32* %119)
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  ret i32 %122
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @luaL_optlstring(i32*, i32, i8*, i64*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @recvline(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @recvall(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i32 @recvraw(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
