; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lutf8lib.c_iter_aux.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lutf8lib.c_iter_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @iter_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_aux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checklstring(i32* %9, i32 1, i64* %4)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_tointeger(i32* %11, i32 2)
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %30, %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = call i64 @iscont(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %24

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %63

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = call i8* @utf8_decode(i8* %43, i32* %7)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @iscont(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %40
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @luaL_error(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load i32*, i32** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @lua_pushinteger(i32* %55, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @lua_pushinteger(i32* %60, i32 %61)
  store i32 2, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %51, %39
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @iscont(i8*) #1

declare dso_local i8* @utf8_decode(i8*, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
