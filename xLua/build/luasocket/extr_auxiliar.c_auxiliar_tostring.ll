; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_auxiliar.c_auxiliar_tostring.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_auxiliar.c_auxiliar_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"invalid object passed to 'auxiliar.c:__tostring'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxiliar_tostring(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [32 x i8], align 16
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_getmetatable(i32* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_pushstring(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettable(i32* %12, i32 -2)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_istable(i32* %14, i32 -1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %37

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushstring(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_gettable(i32* %21, i32 -2)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_isstring(i32* %23, i32 -1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %37

27:                                               ; preds = %18
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_touserdata(i32* %29, i32 1)
  %31 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_tostring(i32* %33, i32 -1)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %36 = call i32 @lua_pushfstring(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* %35)
  store i32 1, i32* %2, align 4
  br label %42

37:                                               ; preds = %26, %17, %8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushstring(i32* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_error(i32* %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i8*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
