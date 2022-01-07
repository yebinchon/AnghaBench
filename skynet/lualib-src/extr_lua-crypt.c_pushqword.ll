; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_pushqword.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_pushqword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pushqword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushqword(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %32, i32* %33, align 16
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %44, i32* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @lua_pushlstring(i32* %52, i8* %54, i32 8)
  ret i32 1
}

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
