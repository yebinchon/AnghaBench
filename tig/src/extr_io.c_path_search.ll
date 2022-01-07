; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_path_search.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_path_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEFPATH = common dso_local global i8* null, align 8
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_search(i8* %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** @_PATH_DEFPATH, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i32, i32* @SIZEOF_STR, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @SIZEOF_STR, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %106

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strchr(i8* %34, i8 signext 47)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @access(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %106

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @string_ncopy_do(i8* %44, i64 %45, i8* %46, i32 %48)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %106

50:                                               ; preds = %33
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %58, %53, %50
  br label %61

61:                                               ; preds = %104, %60
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br i1 %70, label %71, label %105

71:                                               ; preds = %69
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strcspn(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %16, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @string_ncopy(i8* %25, i8* %77, i32 %79)
  br label %83

81:                                               ; preds = %71
  %82 = call i32 @string_ncopy(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i64, i64* %16, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %12, align 8
  br label %93

93:                                               ; preds = %90, %83
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @string_format(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %94)
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @access(i8* %22, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @strlen(i8* %22)
  %103 = call i32 @string_ncopy_do(i8* %100, i64 %101, i8* %22, i32 %102)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %106

104:                                              ; preds = %93
  br label %61

105:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %99, %43, %42, %32
  %107 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @string_ncopy_do(i8*, i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @string_ncopy(i8*, i8*, i32) #2

declare dso_local i32 @string_format(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
