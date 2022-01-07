; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_lfn.c_LFNMergePath.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_lfn.c_LFNMergePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i64 0, align 8
@CHAR_DOT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LFNMergePath(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = mul nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = call i32 @lstrcpy(i64* %12, i64* %13)
  %15 = call i32 @RemoveLast(i64* %12)
  %16 = call i32 @AddBackslash(i64* %12)
  %17 = load i64, i64* @CHAR_BACKSLASH, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* @CHAR_NULL, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %59, label %28

28:                                               ; preds = %22, %2
  %29 = call i32 @lstrlen(i64* %12)
  store i32 %29, i32* %7, align 4
  %30 = load i64*, i64** %4, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = call i32 @FindFileName(i64* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %12, i64 %34
  %36 = call i64 @COUNTOF(i64* %12)
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = call i32 @I_LFNEditName(i64* %30, i32 %32, i64* %35, i64 %39)
  %41 = call i32 @lstrlen(i64* %12)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load i64, i64* @CHAR_DOT, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %12, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i64, i64* @CHAR_NULL, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %12, i64 %56
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %44, %28
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i64*, i64** %3, align 8
  %61 = call i32 @lstrcpy(i64* %60, i64* %12)
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpy(i64*, i64*) #2

declare dso_local i32 @RemoveLast(i64*) #2

declare dso_local i32 @AddBackslash(i64*) #2

declare dso_local i32 @lstrlen(i64*) #2

declare dso_local i32 @I_LFNEditName(i64*, i32, i64*, i64) #2

declare dso_local i32 @FindFileName(i64*) #2

declare dso_local i64 @COUNTOF(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
