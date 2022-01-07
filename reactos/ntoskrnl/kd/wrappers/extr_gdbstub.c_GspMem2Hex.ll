; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspMem2Hex.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspMem2Hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GspMemoryError = common dso_local global i64 0, align 8
@HexChars = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i64)* @GspMem2Hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GspMem2Hex(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %52, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @GspReadMemSafe(i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* @GspMemoryError, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %5, align 8
  br label %58

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i8**, i8*** @HexChars, align 8
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i8**, i8*** @HexChars, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %30
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load i32*, i32** %7, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %55, %24
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32 @GspReadMemSafe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
