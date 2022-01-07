; ModuleID = '/home/carl/AnghaBench/robotgo/base/extr_io.c_imageTypeFromExtension.c'
source_filename = "/home/carl/AnghaBench/robotgo/base/extr_io.c_imageTypeFromExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kInvalidImageType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"png\00", align 1
@kPNGImageType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@kBMPImageType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imageTypeFromExtension(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 4, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @kInvalidImageType, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call signext i8 @tolower(i8 signext %23)
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %25
  store i8 %24, i8* %26, align 1
  br label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %7

30:                                               ; preds = %7
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %31
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @kPNGImageType, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %30
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @kBMPImageType, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @kInvalidImageType, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %36, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
