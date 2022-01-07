; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_push64.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_push64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @push64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push64(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 16
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 32
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %23, i32* %24, align 16
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 40
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 48
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 56
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @lua_pushlstring(i32* %37, i8* %39, i32 8)
  ret void
}

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
