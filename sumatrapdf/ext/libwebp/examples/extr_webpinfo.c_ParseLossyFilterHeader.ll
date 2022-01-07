; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossyFilterHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossyFilterHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"  Simple filter:    %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"  Level:            %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  Sharpness:        %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  Use lf delta:     %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  Update lf delta:  %d\0A\00", align 1
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*)* @ParseLossyFilterHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseLossyFilterHeader(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @GET_BITS(i32 %16, i32 1)
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @GET_BITS(i32 %18, i32 6)
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @GET_BITS(i32 %20, i32 3)
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @GET_BITS(i32 %22, i32 1)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @GET_BITS(i32 %35, i32 1)
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @GET_BITS(i32 %46, i32 1)
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @GET_BITS(i32 %51, i32 7)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %42

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %4
  %60 = load i32, i32* @WEBP_INFO_OK, align 4
  ret i32 %60
}

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
