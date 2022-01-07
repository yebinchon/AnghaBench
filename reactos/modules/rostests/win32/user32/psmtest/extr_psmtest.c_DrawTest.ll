; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/psmtest/extr_psmtest.c_DrawTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/psmtest/extr_psmtest.c_DrawTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 82, i32 101, i32 116, i32 117, i32 114, i32 110, i32 32, i32 86, i32 97, i32 108, i32 117, i32 101, i32 32, i32 61, i32 32, i32 37, i32 100, i32 0], align 4
@USERLPK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32)* @DrawTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTest(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i32], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @LPK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @wcslen(i32* %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 10, %22 ], [ %25, %23 ]
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @LpkPSMTextOut(i32 %17, i32 0, i32 %18, i32* %19, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @StringCchPrintfW(i32* %30, i32 100, i8* bitcast ([18 x i32]* @.str to i8*), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %37 = call i32 @wcslen(i32* %36)
  %38 = call i32 @TextOutW(i32 %33, i32 200, i32 %34, i32* %35, i32 %37)
  br label %61

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @USERLPK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @wcslen(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @UserLpkPSMTextOut(i32 %44, i32 400, i32 %45, i32* %46, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @StringCchPrintfW(i32* %51, i32 100, i8* bitcast ([18 x i32]* @.str to i8*), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %58 = call i32 @wcslen(i32* %57)
  %59 = call i32 @TextOutW(i32 %54, i32 600, i32 %55, i32* %56, i32 %58)
  br label %60

60:                                               ; preds = %43, %39
  br label %61

61:                                               ; preds = %60, %26
  ret void
}

declare dso_local i32 @LpkPSMTextOut(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @StringCchPrintfW(i32*, i32, i8*, i32) #1

declare dso_local i32 @TextOutW(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @UserLpkPSMTextOut(i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
