; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_test_compression.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_test_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@storage1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Compressed %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_compression(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @storage1, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @stb_compress(i32 %9, i8* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* @storage1, align 4
  %17 = call i32 @stb_decompress_length(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @storage1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @stb_decompress(i8* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  store i32 -1, i32* %3, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @memcmp(i8* %31, i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  store i32 -1, i32* %3, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @stb_compress(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @stb_decompress_length(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @stb_decompress(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
