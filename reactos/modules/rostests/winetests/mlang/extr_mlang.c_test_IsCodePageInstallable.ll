; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_IsCodePageInstallable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_IsCodePageInstallable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"code page %u is valid but not installable 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_IsCodePageInstallable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsCodePageInstallable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 65535
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @IMultiLanguage2_IsCodePageInstallable(i32* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @IsValidCodePage(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @S_FALSE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @broken(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @E_INVALIDARG, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @broken(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %19, %15
  %34 = phi i1 [ true, %19 ], [ true, %15 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %33, %8
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local i64 @IMultiLanguage2_IsCodePageInstallable(i32*, i32) #1

declare dso_local i64 @IsValidCodePage(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
