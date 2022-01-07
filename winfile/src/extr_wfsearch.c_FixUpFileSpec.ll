; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfsearch.c_FixUpFileSpec.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfsearch.c_FixUpFileSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@CHAR_DOT = common dso_local global i64 0, align 8
@SZ_STAR = common dso_local global i64* null, align 8
@CHAR_STAR = common dso_local global i64 0, align 8
@SZ_DOTSTAR = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FixUpFileSpec(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHAR_DOT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64*, i64** @SZ_STAR, align 8
  %18 = call i32 @lstrcpy(i64* %11, i64* %17)
  %19 = load i64*, i64** %3, align 8
  %20 = call i32 @lstrcat(i64* %11, i64* %19)
  %21 = load i64*, i64** %3, align 8
  %22 = call i32 @lstrcpy(i64* %21, i64* %11)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i64*, i64** %3, align 8
  store i64* %24, i64** %6, align 8
  br label %25

25:                                               ; preds = %36, %23
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHAR_DOT, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %6, align 8
  br label %25

39:                                               ; preds = %34
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load i64*, i64** %6, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = icmp ne i64* %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 -1
  store i64* %49, i64** %6, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHAR_STAR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64*, i64** %6, align 8
  %56 = load i64*, i64** @SZ_DOTSTAR, align 8
  %57 = call i32 @lstrcat(i64* %55, i64* %56)
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %43, %39
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpy(i64*, i64*) #2

declare dso_local i32 @lstrcat(i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
