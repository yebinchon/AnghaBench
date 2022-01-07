; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @test_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_buffer(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @FIRST_CHAR, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %8, align 1
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %43, %3
  %15 = load i8, i8* %8, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* @FIRST_CHAR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %51

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i8, i8* %8, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %8, align 1
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  br label %14

50:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
