; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstrlib.c_str_rep.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstrlib.c_str_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAXSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_rep(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_checklstring(i32* %12, i32 1, i64* %4)
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_checkint(i32* %14, i32 2)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_optlstring(i32* %16, i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64* %5)
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pushliteral(i32* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %89

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  %33 = load i32, i32* @MAXSIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29, %23
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_error(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  br label %90

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = mul i64 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %45, %50
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i8* @luaL_buffinitsize(i32* %52, i32* %10, i64 %53)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %79, %41
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  %58 = icmp sgt i32 %56, 1
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %4, align 8
  %63 = mul i64 %62, 1
  %64 = call i32 @memcpy(i8* %60, i8* %61, i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %11, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = mul i64 %73, 1
  %75 = call i32 @memcpy(i8* %71, i8* %72, i64 %74)
  %76 = load i64, i64* %5, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %70, %59
  br label %55

80:                                               ; preds = %55
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %4, align 8
  %84 = mul i64 %83, 1
  %85 = call i32 @memcpy(i8* %81, i8* %82, i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @luaL_pushresultsize(i32* %10, i64 %86)
  br label %88

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %20
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %38
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i8* @luaL_optlstring(i32*, i32, i8*, i64*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_buffinitsize(i32*, i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @luaL_pushresultsize(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
