; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_add_filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"adding all automatic stream filters\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"inserted an automatic stream filter\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Unable to open requested stream filter '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_stream_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_stream_add_filter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @vlclua_get_this(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_settop(i32* %11, i32 2)
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @luaL_checkudata(i32* %13, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i32**
  store i32** %15, i32*** %5, align 8
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @vlclua_error(i32* %20)
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  store i8* null, i8** %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @lua_isstring(i32* %23, i32 2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @lua_tostring(i32* %27, i32 2)
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %51
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @vlc_stream_FilterNew(i32* %41, i8* null)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %52

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %7, align 8
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %51

51:                                               ; preds = %46
  br label %39

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @luaL_getmetatable(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_setmetatable(i32* %55, i32 1)
  br label %76

57:                                               ; preds = %32
  %58 = load i32**, i32*** %5, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32* @vlc_stream_FilterNew(i32* %59, i8* %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %75

68:                                               ; preds = %57
  %69 = load i32*, i32** %8, align 8
  %70 = load i32**, i32*** %5, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @luaL_getmetatable(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_setmetatable(i32* %73, i32 1)
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %52
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @vlclua_error(i32*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32* @vlc_stream_FilterNew(i32*, i8*) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
