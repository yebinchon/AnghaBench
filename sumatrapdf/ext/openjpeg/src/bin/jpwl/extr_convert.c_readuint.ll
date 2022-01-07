; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_readuint.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_readuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"\0AError: fread return a number of element different from the expected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @readuint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readuint(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @fread(i8* %6, i32 1, i32 1, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fread(i8* %7, i32 1, i32 1, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fread(i8* %8, i32 1, i32 1, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fread(i8* %9, i32 1, i32 1, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 24
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 16
  %47 = add nsw i32 %43, %46
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = add nsw i32 %47, %50
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %51, %53
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %37
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 24
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 16
  %62 = add nsw i32 %58, %61
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = add nsw i32 %62, %65
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %55, %40, %34, %27, %20, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
