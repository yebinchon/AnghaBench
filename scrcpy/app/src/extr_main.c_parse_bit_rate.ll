; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_parse_bit_rate.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_parse_bit_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Bit-rate parameter is empty\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid bit-rate: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid bit-rate unit: %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Bitrate must be positive and less than 2^32: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parse_bit_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_rate(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strtol(i8* %16, i8** %6, i32 0)
  store i64 %17, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 0, i32* %3, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 77
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 109
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1000000, i32* %8, align 4
  br label %67

46:                                               ; preds = %39, %34
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 75
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 107
  br i1 %55, label %56, label %63

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1000, i32* %8, align 4
  br label %66

63:                                               ; preds = %56, %51
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i32 0, i32* %3, align 4
  br label %86

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i64, i64* %7, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 -1, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %68
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  store i32 0, i32* %3, align 4
  br label %86

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %77, %63, %26, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @LOGE(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
