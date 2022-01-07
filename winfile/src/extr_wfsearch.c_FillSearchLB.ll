; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfsearch.c_FillSearchLB.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfsearch.c_FillSearchLB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@maxExt = common dso_local global i64 0, align 8
@iDirsRead = common dso_local global i32 0, align 4
@dwLastUpdateTime = common dso_local global i64 0, align 8
@_TRUNCATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_SETSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FillSearchLB(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [20 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i32* null, i32** %17, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @lstrcpy(i8* %22, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @lstrcpy(i8* %26, i32 %29)
  %31 = call i32 @StripPath(i8* %22)
  %32 = call i32 @StripFilespec(i8* %26)
  store i8* %22, i8** %16, align 8
  store i64 0, i64* @maxExt, align 8
  store i32 1, i32* @iDirsRead, align 4
  store i64 0, i64* @dwLastUpdateTime, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %64, %4
  %34 = load i8*, i8** %16, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i8*, i8** %16, align 8
  store i8* %38, i8** %15, align 8
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i8*, i8** %16, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %16, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 59
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %16, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %16, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 59
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call signext i8 @TEXT(i8 signext 0)
  %61 = load i8*, i8** %16, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %16, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %67 = call i32 @COUNTOF(i8* %66)
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* @_TRUNCATE, align 4
  %70 = call i32 @wcsncpy_s(i8* %65, i32 %67, i8* %68, i32 %69)
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %72 = call i32 @FixUpFileSpec(i8* %71)
  %73 = load i32, i32* %5, align 4
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i64 @SearchList(i32 %73, i8* %26, i8* %74, i32 %75, i32 %76, i32** %17, i64 %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %10, align 8
  br label %33

81:                                               ; preds = %33
  %82 = load i64, i64* @LB_ERR, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @LB_GETCURSEL, align 4
  %85 = call i64 @SendMessage(i32 %83, i32 %84, i32 0, i64 0)
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @LB_SETSEL, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i64 @SendMessage(i32 %88, i32 %89, i32 %90, i64 0)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load i64, i64* %9, align 8
  %94 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %94)
  ret i64 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpy(i8*, i32) #2

declare dso_local i32 @StripPath(i8*) #2

declare dso_local i32 @StripFilespec(i8*) #2

declare dso_local signext i8 @TEXT(i8 signext) #2

declare dso_local i32 @wcsncpy_s(i8*, i32, i8*, i32) #2

declare dso_local i32 @COUNTOF(i8*) #2

declare dso_local i32 @FixUpFileSpec(i8*) #2

declare dso_local i64 @SearchList(i32, i8*, i8*, i32, i32, i32**, i64, i32) #2

declare dso_local i64 @SendMessage(i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
