; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @Test_GetFontResourceInfoW_case3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_GetFontResourceInfoW_case3(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 3, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @GetFontResourceInfoW(i32 %9, i32* %6, i32* null, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ok_int(i32 %12, i32 1)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ok_int(i32 %14, i32 4)
  store i32 8, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @GetFontResourceInfoW(i32 %16, i32* %6, i32* null, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ok_int(i32 %19, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ok_int(i32 %21, i32 8)
  store i32 0, i32* %6, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -559023410, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @GetFontResourceInfoW(i32 %24, i32* %6, i32* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ok_int(i32 %28, i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ok_int(i32 %30, i32 4)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ok_int(i32 %33, i32 -559023410)
  store i32 8, i32* %6, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -559023410, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @GetFontResourceInfoW(i32 %36, i32* %6, i32* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ok_int(i32 %40, i32 1)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ok_int(i32 %42, i32 4)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ok_int(i32 %45, i32 1)
  ret void
}

declare dso_local i32 @GetFontResourceInfoW(i32, i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
