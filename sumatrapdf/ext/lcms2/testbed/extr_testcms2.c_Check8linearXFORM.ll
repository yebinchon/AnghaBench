; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check8linearXFORM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check8linearXFORM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Differences too big (%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @Check8linearXFORM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check8linearXFORM(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @cmsMAXCHANNELS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @cmsMAXCHANNELS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %55, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 255
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = mul nuw i64 8, %15
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i64* %17, i32 %25, i32 %27)
  %29 = call i32 (...) @DbgThread()
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @cmsDoTransform(i32 %29, i32 %30, i64* %17, i64* %20, i32 1)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %20, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @abs(i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %21

58:                                               ; preds = %21
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @Fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

64:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, i64*, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @Fail(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
