; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaopen_io.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaopen_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_fclose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@iolib = common dso_local global i32 0, align 4
@io_noclose = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@io_pclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaopen_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaopen_io(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @createmeta(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @io_fclose, align 4
  %7 = call i32 @newfenv(i32* %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_replace(i32* %8, i32 -10001)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @iolib, align 4
  %12 = call i32 @luaL_register(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @io_noclose, align 4
  %15 = call i32 @newfenv(i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @stdin, align 4
  %18 = call i32 @createstdfile(i32* %16, i32 %17, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @createstdfile(i32* %19, i32 %20, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @createstdfile(i32* %22, i32 %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 1)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_getfield(i32* %27, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @io_pclose, align 4
  %31 = call i32 @newfenv(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_setfenv(i32* %32, i32 -2)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 1)
  ret i32 1
}

declare dso_local i32 @createmeta(i32*) #1

declare dso_local i32 @newfenv(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @luaL_register(i32*, i8*, i32) #1

declare dso_local i32 @createstdfile(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
