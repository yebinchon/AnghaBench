; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathIsValidCharW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathIsValidCharW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHELL_charclass = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"PathIsValidCharW failed: 0x%02x got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathIsValidCharW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathIsValidCharW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 127
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pPathIsValidCharW(i32 %7, i32 -1)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** @SHELL_charclass, align 8
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %11, %6
  %20 = phi i1 [ true, %6 ], [ %18, %11 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %3

28:                                               ; preds = %3
  store i32 127, i32* %2, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %2, align 4
  %31 = icmp ule i32 %30, 65535
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @pPathIsValidCharW(i32 %33, i32 -1)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %29

42:                                               ; preds = %29
  ret void
}

declare dso_local i32 @pPathIsValidCharW(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
