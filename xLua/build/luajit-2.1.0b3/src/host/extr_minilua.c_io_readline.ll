; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_io_readline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_io_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_readline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call i64 @lua_touserdata(i32* %6, i32 %7)
  %9 = inttoptr i64 %8 to i32**
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @luaL_error(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @read_line(i32* %17, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @ferror(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 (i32*, i8*, ...) @luaL_error(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %46

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_upvalueindex(i32 2)
  %35 = call i64 @lua_toboolean(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_settop(i32* %38, i32 0)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_upvalueindex(i32 1)
  %42 = call i32 @lua_pushvalue(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @aux_close(i32* %43)
  br label %45

45:                                               ; preds = %37, %32
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %31, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @read_line(i32*, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @aux_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
