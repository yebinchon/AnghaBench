; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_luac.c_pmain.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_luac.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@LUA_OK = common dso_local global i64 0, align 8
@listing = common dso_local global i32 0, align 4
@dumping = common dso_local global i64 0, align 8
@output = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@writer = common dso_local global i32 0, align 4
@stripping = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @lua_tointeger(i32* %9, i32 1)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @lua_touserdata(i32* %12, i32 2)
  %14 = inttoptr i64 %13 to i8**
  store i8** %14, i8*** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @lua_checkstack(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = call i64 @IS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %36

30:                                               ; preds = %26
  %31 = load i8**, i8*** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i8* [ null, %29 ], [ %35, %30 ]
  store i8* %37, i8** %7, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @luaL_loadfile(i32* %38, i8* %39)
  %41 = load i64, i64* @LUA_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %2, align 8
  %45 = call i8* @lua_tostring(i32* %44, i32 -1)
  %46 = call i32 @fatal(i8* %45)
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32* @combine(i32* %52, i32 %53)
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* @listing, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @listing, align 4
  %60 = icmp sgt i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @luaU_print(i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i64, i64* @dumping, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %63
  %67 = load i32*, i32** @output, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32*, i32** @stdout, align 8
  br label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** @output, align 8
  %73 = call i32* @fopen(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32* [ %70, %69 ], [ %73, %71 ]
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @cannot(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @lua_lock(i32* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @writer, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @stripping, align 4
  %88 = call i32 @luaU_dump(i32* %83, i32* %84, i32 %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @lua_unlock(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i64 @ferror(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %80
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @fclose(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %63
  ret i32 0
}

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @IS(i8*) #1

declare dso_local i64 @luaL_loadfile(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @combine(i32*, i32) #1

declare dso_local i32 @luaU_print(i32*, i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @cannot(i8*) #1

declare dso_local i32 @lua_lock(i32*) #1

declare dso_local i32 @luaU_dump(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @lua_unlock(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
