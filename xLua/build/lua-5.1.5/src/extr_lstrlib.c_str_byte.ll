; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lstrlib.c_str_byte.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lstrlib.c_str_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_byte(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_optinteger(i32* %12, i32 2, i32 1)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @posrelat(i32 %13, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @luaL_optinteger(i32* %16, i32 3, i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @posrelat(i32 %18, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @luaL_checkstack(i32* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %70, %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @uchar(i8 signext %67)
  %69 = call i32 @lua_pushinteger(i32* %59, i32 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %36
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @uchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
