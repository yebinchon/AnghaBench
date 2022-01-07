; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lstrlib.c_str_packsize.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lstrlib.c_str_packsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_packsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_packsize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @luaL_checkstring(i32* %9, i32 1)
  store i8* %10, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @initheader(i32* %11, i32* %3)
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @getdetails(i32* %3, i64 %19, i8** %4, i32* %6, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @MAXSIZE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = icmp ule i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @luaL_argcheck(i32* %24, i32 %31, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %41 [
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %18, %18
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @luaL_argerror(i32* %39, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %18, %38
  br label %42

42:                                               ; preds = %41
  br label %13

43:                                               ; preds = %13
  %44 = load i32*, i32** %2, align 8
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @lua_pushinteger(i32* %44, i32 %46)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @initheader(i32*, i32*) #1

declare dso_local i32 @getdetails(i32*, i64, i8**, i32*, i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
