; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_nsstyle_to_bstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_nsstyle_to_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_NO_NULL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ATTR_REMOVE_COMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @nsstyle_to_bstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsstyle_to_bstr(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ATTR_NO_NULL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i8* @SysAllocStringLen(i32* null, i32 0)
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ null, %24 ]
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %99

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @SysAllocString(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %35, i32* %4, align 4
  br label %99

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @SysStringLen(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ATTR_REMOVE_COMMA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %95

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %53, %43
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @strchrW(i8* %47, i8 signext 44)
  store i8* %48, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %11, align 8
  br label %46

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @SysAllocStringLen(i32* null, i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @SysFreeString(i8* %66)
  %68 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %68, i32* %4, align 4
  br label %99

69:                                               ; preds = %60
  %70 = load i8*, i8** %13, align 8
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %87, %69
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 44
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %11, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @SysFreeString(i8* %91)
  %93 = load i8*, i8** %13, align 8
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %90, %56
  br label %95

95:                                               ; preds = %94, %36
  %96 = load i8*, i8** %8, align 8
  %97 = load i8**, i8*** %7, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* @S_OK, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %65, %34, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i8* @SysAllocStringLen(i32*, i32) #1

declare dso_local i8* @SysAllocString(i8*) #1

declare dso_local i32 @SysStringLen(i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @SysFreeString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
