; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_file_indexed.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_file_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversion_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i32] [i32 114, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 78, i32 73, i32 67, i32 79, i32 68, i32 69, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_token_data_file_indexed(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i8* null, i8** %4, align 8
  br label %94

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  store i8* null, i8** %4, align 8
  br label %94

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = call i32* @utf8_to_wchar(i8* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @conversion_error, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @uprintf(i32 %40, i8* %41)
  br label %82

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i32* @utf8_to_wchar(i8* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @conversion_error, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @uprintf(i32 %49, i8* %50)
  br label %82

52:                                               ; preds = %43
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @_wfopen(i32* %53, i8* bitcast ([15 x i32]* @.str to i8*))
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %82

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %80, %58
  %60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %61 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %62 = call i32 @ARRAYSIZE(i32* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = call i32* @fgetws(i32* %60, i32 %62, i32* %63)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %69 = call i32* @get_token_data_line(i32* %67, i32* %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = call i8* @wchar_to_utf8(i32* %78)
  store i8* %79, i8** %14, align 8
  br label %81

80:                                               ; preds = %72, %66
  br label %59

81:                                               ; preds = %77, %59
  br label %82

82:                                               ; preds = %81, %57, %48, %39
  %83 = load i32*, i32** %13, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @safe_free(i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @safe_free(i32* %91)
  %93 = load i8*, i8** %14, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %88, %33, %20
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i32* @utf8_to_wchar(i8*) #1

declare dso_local i32 @uprintf(i32, i8*) #1

declare dso_local i32* @_wfopen(i32*, i8*) #1

declare dso_local i32* @fgetws(i32*, i32, i32*) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32* @get_token_data_line(i32*, i32*) #1

declare dso_local i8* @wchar_to_utf8(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @safe_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
