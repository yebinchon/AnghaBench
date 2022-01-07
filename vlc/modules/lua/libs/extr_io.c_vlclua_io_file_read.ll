; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_io.c_vlclua_io_file_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_io.c_vlclua_io_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"io_file\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Attempt to use a closed file\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"*l\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid file:read() format: %s\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_io_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_io_file_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @luaL_checkudata(i32* %6, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i32**
  store i32** %8, i32*** %4, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @luaL_error(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_type(i32* %16, i32 2)
  %18 = load i64, i64* @LUA_TNUMBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_tointeger(i32* %22, i32 2)
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @vlclua_io_file_read_chars(i32* %21, i64 %23, i32* %25)
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %15
  %28 = load i32*, i32** %3, align 8
  %29 = call i8* @luaL_optstring(i32* %28, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 42
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32*, i8*, ...) @luaL_error(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %2, align 4
  br label %64

38:                                               ; preds = %27
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %59 [
    i32 108, label %43
    i32 110, label %48
    i32 97, label %53
  ]

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = load i32**, i32*** %4, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vlclua_io_file_read_line(i32* %44, i32* %46)
  store i32 %47, i32* %2, align 4
  br label %64

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vlclua_io_file_read_number(i32* %49, i32* %51)
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %38
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* @SIZE_MAX, align 8
  %56 = load i32**, i32*** %4, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @vlclua_io_file_read_chars(i32* %54, i64 %55, i32* %57)
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32*, i8*, ...) @luaL_error(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %53, %48, %43, %34, %20, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @vlclua_io_file_read_chars(i32*, i64, i32*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @vlclua_io_file_read_line(i32*, i32*) #1

declare dso_local i32 @vlclua_io_file_read_number(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
