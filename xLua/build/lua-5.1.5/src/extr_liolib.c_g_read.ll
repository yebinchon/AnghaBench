; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_liolib.c_g_read.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_liolib.c_g_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MINSTACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_read(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @clearerr(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @read_line(i32* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %111

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @LUA_MINSTACK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @luaL_checkstack(i32* %27, i64 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %107, %26
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %110

43:                                               ; preds = %41
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @lua_type(i32* %44, i32 %45)
  %47 = load i64, i64* @LUA_TNUMBER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @lua_tointeger(i32* %50, i32 %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @test_eof(i32* %57, i32* %58)
  br label %65

60:                                               ; preds = %49
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @read_chars(i32* %61, i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %59, %56 ], [ %64, %60 ]
  store i32 %66, i32* %9, align 4
  br label %106

67:                                               ; preds = %43
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i8* @lua_tostring(i32* %68, i32 %69)
  store i8* %70, i8** %12, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 42
  br label %80

80:                                               ; preds = %74, %67
  %81 = phi i1 [ false, %67 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @luaL_argcheck(i32* %71, i32 %82, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %101 [
    i32 110, label %89
    i32 108, label %93
    i32 97, label %97
  ]

89:                                               ; preds = %80
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @read_number(i32* %90, i32* %91)
  store i32 %92, i32* %9, align 4
  br label %105

93:                                               ; preds = %80
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @read_line(i32* %94, i32* %95)
  store i32 %96, i32* %9, align 4
  br label %105

97:                                               ; preds = %80
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @read_chars(i32* %98, i32* %99, i64 -1)
  store i32 1, i32* %9, align 4
  br label %105

101:                                              ; preds = %80
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @luaL_argerror(i32* %102, i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %130

105:                                              ; preds = %97, %93, %89
  br label %106

106:                                              ; preds = %105, %65
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %34

110:                                              ; preds = %41
  br label %111

111:                                              ; preds = %110, %20
  %112 = load i32*, i32** %6, align 8
  %113 = call i64 @ferror(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @pushresult(i32* %116, i32 0, i32* null)
  store i32 %117, i32* %4, align 4
  br label %130

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @lua_pop(i32* %122, i32 1)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @lua_pushnil(i32* %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %115, %101
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @read_line(i32*, i32*) #1

declare dso_local i32 @luaL_checkstack(i32*, i64, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @test_eof(i32*, i32*) #1

declare dso_local i32 @read_chars(i32*, i32*, i64) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @read_number(i32*, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
