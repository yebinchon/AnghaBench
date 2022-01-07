; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_laddresscommand.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_laddresscommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @laddresscommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @laddresscommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_upvalueindex(i32 1)
  %13 = call %struct.skynet_context* @lua_touserdata(i32* %11, i32 %12)
  store %struct.skynet_context* %13, %struct.skynet_context** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @luaL_checkstring(i32* %14, i32 1)
  store i8* %15, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @luaL_checkstring(i32* %20, i32 2)
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @skynet_command(%struct.skynet_context* %23, i8* %24, i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %93

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %35, label %93

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %86, %35
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = icmp sle i32 %53, 57
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 48
  store i32 %57, i32* %10, align 4
  br label %81

58:                                               ; preds = %52, %43
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 97
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 102
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 97
  %67 = add nsw i32 %66, 10
  store i32 %67, i32* %10, align 4
  br label %80

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 65
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp sle i32 %72, 70
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 65
  %77 = add nsw i32 %76, 10
  store i32 %77, i32* %10, align 4
  br label %79

78:                                               ; preds = %71, %68
  store i32 0, i32* %2, align 4
  br label %94

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 16
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %36

89:                                               ; preds = %36
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @lua_pushinteger(i32* %90, i32 %91)
  store i32 1, i32* %2, align 4
  br label %94

93:                                               ; preds = %29, %22
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %89, %78
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.skynet_context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @skynet_command(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
