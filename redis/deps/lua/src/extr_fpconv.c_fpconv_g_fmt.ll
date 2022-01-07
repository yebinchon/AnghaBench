; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_fpconv.c_fpconv_g_fmt.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_fpconv.c_fpconv_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPCONV_G_FMT_BUFSIZE = common dso_local global i32 0, align 4
@locale_decimal_point = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpconv_g_fmt(i8* %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @set_number_format(i8* %18, i32 %19)
  %21 = load i8, i8* @locale_decimal_point, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %28 = load double, double* %6, align 8
  %29 = call i32 @snprintf(i8* %25, i32 %26, i8* %27, double %28)
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %59

30:                                               ; preds = %3
  %31 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %33 = load double, double* %6, align 8
  %34 = call i32 @snprintf(i8* %17, i32 %31, i8* %32, double %33)
  store i32 %34, i32* %11, align 4
  store i8* %17, i8** %12, align 8
  br label %35

35:                                               ; preds = %52, %30
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @locale_decimal_point, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i32 [ 46, %42 ], [ %46, %43 ]
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  store i8 %49, i8* %50, align 1
  br label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  %55 = load i8, i8* %53, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %35, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %24
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_number_format(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
