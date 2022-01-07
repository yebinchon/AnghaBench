; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_atom.c_test_error_handling.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_atom.c_test_error_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"add succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"find succeeded\0A\00", align 1
@unicode_OS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_error_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_error_handling() #0 {
  %1 = alloca [260 x i8], align 16
  %2 = alloca [260 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i8 signext 97, i32 256)
  %6 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 256
  store i8 0, i8* %6, align 16
  %7 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %8 = call i32 @GlobalAddAtomA(i8* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %14 = call i32 @GlobalFindAtomA(i8* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @unicode_OS, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %29, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 %27
  store i8 98, i8* %28, align 1
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %22

32:                                               ; preds = %22
  %33 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 256
  store i8 0, i8* %33, align 16
  %34 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %35 = call i32 @GlobalAddAtomW(i8* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %41 = call i32 @GlobalFindAtomW(i8* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GlobalAddAtomA(i8*) #1

declare dso_local i32 @GlobalFindAtomA(i8*) #1

declare dso_local i32 @GlobalAddAtomW(i8*) #1

declare dso_local i32 @GlobalFindAtomW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
