; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Compare8bitXFORM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Compare8bitXFORM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Differences too big (%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @Compare8bitXFORM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Compare8bitXFORM(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @cmsMAXCHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @cmsMAXCHANNELS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @cmsMAXCHANNELS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %66, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 255
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = mul nuw i64 8, %18
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i64* %20, i32 %31, i32 %33)
  %35 = call i32 (...) @DbgThread()
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cmsDoTransform(i32 %35, i32 %36, i64* %20, i64* %23, i32 1)
  %38 = call i32 (...) @DbgThread()
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @cmsDoTransform(i32 %38, i32 %39, i64* %20, i64* %26, i32 1)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %62, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %26, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %23, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  %55 = call i32 @abs(i64 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %27

69:                                               ; preds = %27
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @Fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %76

75:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
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
