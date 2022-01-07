; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_create_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_create_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ui_create_cursor(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [128 x i32], align 16
  %15 = alloca [128 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 32
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %6
  store i8* null, i8** %7, align 8
  br label %103

29:                                               ; preds = %25
  %30 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 128)
  %32 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %33 = call i32 @memset(i32* %32, i32 0, i32 128)
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %80, %29
  %35 = load i32, i32* %19, align 4
  %36 = icmp sle i32 %35, 31
  br i1 %36, label %37, label %83

37:                                               ; preds = %34
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, i32* %20, align 4
  %40 = icmp sle i32 %39, 31
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @is24on(i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @is1on(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %22, align 4
  %52 = xor i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %41
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @set1(i32* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @set1(i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %20, align 4
  %74 = call i32 @set1(i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %20, align 4
  br label %38

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %34

83:                                               ; preds = %34
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %85 = call i32 @flipover(i32* %84)
  %86 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %87 = call i32 @flipover(i32* %86)
  %88 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %89 = call i32* @ui_create_glyph(i32 32, i32 32, i32* %88)
  store i32* %89, i32** %16, align 8
  %90 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %91 = call i32* @ui_create_glyph(i32 32, i32 32, i32* %90)
  store i32* %91, i32** %17, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = call i64 @GrNewCursor(i32 32, i32 32, i32 %92, i32 %93, i32 16777215, i32 0, i32* %94, i32* %95)
  store i64 %96, i64* %18, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @ui_destroy_glyph(i32* %97)
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @ui_destroy_glyph(i32* %99)
  %101 = load i64, i64* %18, align 8
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %7, align 8
  br label %103

103:                                              ; preds = %83, %28
  %104 = load i8*, i8** %7, align 8
  ret i8* %104
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @is24on(i32*, i32, i32) #1

declare dso_local i32 @is1on(i32*, i32, i32) #1

declare dso_local i32 @set1(i32*, i32, i32) #1

declare dso_local i32 @flipover(i32*) #1

declare dso_local i32* @ui_create_glyph(i32, i32, i32*) #1

declare dso_local i64 @GrNewCursor(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ui_destroy_glyph(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
