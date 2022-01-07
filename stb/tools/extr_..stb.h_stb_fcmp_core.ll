; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fcmp_core.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fcmp_core.c"
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

10:                                               ; preds = %2, %42
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @fread(i8* %11, i32 1, i32 1024, i32* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @fread(i8* %15, i32 1, i32 1024, i32* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @stb_min(i32 %21, i32 %22)
  %24 = call i32 @memcmp(i8* %19, i8* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  br label %43

28:                                               ; preds = %10
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 -1, i32 1
  store i32 %37, i32* %9, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %43

42:                                               ; preds = %38
  br label %10

43:                                               ; preds = %41, %32, %27
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @stb_min(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
