; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetNextToken.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetNextToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i32, i32)* @MSSTYLES_GetNextToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSSTYLES_GetNextToken(i8* %0, i8* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %34, %5
  %17 = load i8*, i8** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %12, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 44
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i1 [ false, %16 ], [ %31, %30 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %12, align 8
  br label %16

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %95

43:                                               ; preds = %37
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %13, align 8
  br label %45

45:                                               ; preds = %61, %43
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 44
  br label %59

59:                                               ; preds = %54, %49, %45
  %60 = phi i1 [ false, %49 ], [ false, %45 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  br label %45

64:                                               ; preds = %59
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %14, align 8
  br label %66

66:                                               ; preds = %72, %64
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %14, align 8
  br label %66

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = call i32 @min(i32 %78, i32 %85)
  %87 = call i32 @lstrcpynW(i32 %76, i8* %77, i32 %86)
  %88 = load i8**, i8*** %9, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load i8*, i8** %12, align 8
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %75
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %41
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @lstrcpynW(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
