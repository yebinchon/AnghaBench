; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_expand_buffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_expand_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENCODE_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"object is too large (>%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32)* @expand_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_buffer(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %12, %3
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %9, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENCODE_MAXSIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ENCODE_MAXSIZE, align 4
  %23 = call i32 @luaL_error(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i8* null, i8** %4, align 8
  br label %38

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @lua_newuserdata(i32* %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @lua_upvalueindex(i32 1)
  %30 = call i32 @lua_replace(i32* %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lua_pushinteger(i32* %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @lua_upvalueindex(i32 2)
  %36 = call i32 @lua_replace(i32* %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
