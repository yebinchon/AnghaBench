; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsBmp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsBmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IsBmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsBmp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_stream_Peek(i32* %8, i32** %4, i32 18)
  %10 = icmp slt i32 %9, 18
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @memcmp(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @memcmp(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @memcmp(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @memcmp(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @memcmp(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @memcmp(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %73

37:                                               ; preds = %32, %28, %24, %20, %16, %12
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i32 @GetDWLE(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 10
  %43 = call i32 @GetDWLE(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 14
  %46 = call i32 @GetDWLE(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 14
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 14, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %73

59:                                               ; preds = %54, %49, %37
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 14
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %73

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 12
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 40
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %73

72:                                               ; preds = %68, %65
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %71, %64, %58, %36, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GetDWLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
