; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_fcmp_core.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_fcmp_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @stb_fcmp_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb_fcmp_core(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %2, %46
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fread(i8* %11, i32 1, i32 1024, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fread(i8* %14, i32 1, i32 1024, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* %7, align 4
  br label %26

24:                                               ; preds = %10
  %25 = load i32, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @memcmp(i8* %17, i8* %18, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %47

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 1
  store i32 %41, i32* %9, align 4
  br label %47

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  br label %10

47:                                               ; preds = %45, %36, %31
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
