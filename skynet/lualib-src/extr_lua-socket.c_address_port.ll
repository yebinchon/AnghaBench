; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_address_port.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_address_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Invalid address %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i32, i32*)* @address_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @address_port(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @lua_isnoneornil(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %98

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 91)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 93)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i8* %35, i8* %36, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i8* @strchr(i8* %53, i8 signext 58)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %34
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %34
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @strtoul(i8* %63, i32* null, i32 10)
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %97

66:                                               ; preds = %18
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 58)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @luaL_error(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i8* %76, i8* %77, i32 %83)
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %85, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @strtoul(i8* %94, i32* null, i32 10)
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %75, %61
  br label %104

98:                                               ; preds = %5
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %11, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @luaL_optinteger(i32* %100, i32 %101, i32 0)
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %97
  %105 = load i8*, i8** %11, align 8
  ret i8* %105
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
