; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_gsub.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_gsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_gsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checklstring(i32* %15, i32 1, i64* %3)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i8* @luaL_checklstring(i32* %17, i32 2, i64* %4)
  store i8* %18, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_type(i32* %19, i32 3)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  %24 = call i64 @luaL_optinteger(i32* %21, i32 4, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 94
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @LUA_TNUMBER, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @LUA_TSTRING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LUA_TFUNCTION, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @LUA_TTABLE, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38, %34, %1
  %47 = phi i1 [ true, %38 ], [ true, %34 ], [ true, %1 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @luaL_argcheck(i32* %30, i32 %48, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @luaL_buffinit(i32* %50, i32* %13)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32*, i32** %2, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @prepstate(%struct.TYPE_6__* %12, i32* %60, i8* %61, i64 %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %105, %59
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  %71 = call i32 @reprepstate(%struct.TYPE_6__* %12)
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @match(%struct.TYPE_6__* %12, i8* %72, i8* %73)
  store i8* %74, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @add_value(%struct.TYPE_6__* %12, i32* %13, i8* %83, i8* %84, i32 %85)
  %87 = load i8*, i8** %14, align 8
  store i8* %87, i8** %7, align 8
  store i8* %87, i8** %5, align 8
  br label %101

88:                                               ; preds = %76, %70
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ult i8* %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = call i32 @luaL_addchar(i32* %13, i32 %97)
  br label %100

99:                                               ; preds = %88
  br label %106

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  br label %66

106:                                              ; preds = %104, %99, %66
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @luaL_addlstring(i32* %13, i8* %107, i32 %114)
  %116 = call i32 @luaL_pushresult(i32* %13)
  %117 = load i32*, i32** %2, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @lua_pushinteger(i32* %117, i64 %118)
  ret i32 2
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @prepstate(%struct.TYPE_6__*, i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @reprepstate(%struct.TYPE_6__*) #1

declare dso_local i8* @match(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @add_value(%struct.TYPE_6__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
