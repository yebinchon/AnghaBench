; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_GetNextValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_GetNextValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @UXINI_GetNextValue(i32 %0, i32* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @UXINI_GetNextLine(i32 %17, i32* %16)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %108

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 91
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @UXINI_UnGetToLine(i32 %29, i8* %30)
  store i8* null, i8** %5, align 8
  br label %108

32:                                               ; preds = %22
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %12, align 8
  br label %38

38:                                               ; preds = %49, %32
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 61
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %38

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 61
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* null, i8** %5, align 8
  br label %108

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %72, %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @UXINI_isspace(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  br label %63

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %87, %75
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @UXINI_isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ult i8* %82, %83
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i1 [ false, %76 ], [ %84, %81 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  br label %76

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  store i8* %91, i8** %13, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sub nsw i64 %93, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %12, align 8
  store i8* %107, i8** %5, align 8
  br label %108

108:                                              ; preds = %90, %59, %28, %21
  %109 = load i8*, i8** %5, align 8
  ret i8* %109
}

declare dso_local i8* @UXINI_GetNextLine(i32, i32*) #1

declare dso_local i32 @UXINI_UnGetToLine(i32, i8*) #1

declare dso_local i64 @UXINI_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
