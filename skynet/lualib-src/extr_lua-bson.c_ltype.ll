; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_ltype.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_ltype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Invalid type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ltype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltype(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_type(i32* %8, i32 1)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %42 [
    i32 130, label %11
    i32 132, label %12
    i32 128, label %13
    i32 131, label %14
    i32 129, label %18
  ]

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %48

12:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %48

13:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_upvalueindex(i32 4)
  %17 = call i32 @lua_pushvalue(i32* %15, i32 %16)
  store i32 1, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @lua_tolstring(i32* %19, i32 1, i64* %6)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = icmp uge i64 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 2
  %40 = call i32 @lsubtype(i32* %30, i32 %34, i32* %37, i64 %39)
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %26, %18
  store i32 5, i32* %5, align 4
  br label %48

42:                                               ; preds = %1
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @lua_typename(i32* %44, i32 %45)
  %47 = call i32 @luaL_error(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %2, align 4
  br label %55

48:                                               ; preds = %41, %13, %12, %11
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @lua_upvalueindex(i32 %50)
  %52 = call i32 @lua_pushvalue(i32* %49, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_pushvalue(i32* %53, i32 1)
  store i32 2, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %42, %29, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lsubtype(i32*, i32, i32*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
