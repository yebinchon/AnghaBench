; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_document_length.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_document_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Invalid document at %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Insert need documents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @document_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @document_length(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @lua_isuserdata(i32* %9, i32 3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @lua_touserdata(i32* %13, i32 3)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @get_length(i32* %15)
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @lua_istable(i32* %18, i32 3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_rawlen(i32* %22, i32 3)
  store i32 %23, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %50, %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @lua_rawgeti(i32* %29, i32 3, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @lua_touserdata(i32* %32, i32 -1)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_pop(i32* %37, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @get_length(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %17
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @luaL_error(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %53, %36, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @lua_isuserdata(i32*, i32) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @get_length(i32*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
