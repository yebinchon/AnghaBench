; ModuleID = '/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair_json.c_nvlist_print_json_string.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair_json.c_nvlist_print_json_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @nvlist_print_json_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_print_json_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 @bzero(i32* %6, i32 4)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %70, %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @MB_CUR_MAX, align 4
  %15 = call i64 @mbrtowc(i32* %7, i8* %13, i32 %14, i32* %6)
  store i64 %15, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %40 [
    i32 34, label %19
    i32 10, label %22
    i32 13, label %25
    i32 92, label %28
    i32 12, label %31
    i32 9, label %34
    i32 8, label %37
  ]

19:                                               ; preds = %17
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %70

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %70

25:                                               ; preds = %17
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %70

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %70

31:                                               ; preds = %17
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %70

34:                                               ; preds = %17
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %70

37:                                               ; preds = %17
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %70

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 31
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 127
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 65535
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %43
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = and i32 65535, %54
  %56 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  br label %69

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 32
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %61, 127
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = and i32 255, %65
  %67 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %60, %57
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %37, %34, %31, %28, %25, %22, %19
  %71 = load i64, i64* %8, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %5, align 8
  br label %12

74:                                               ; preds = %12
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %78, -2
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  store i32 -1, i32* %3, align 4
  br label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %80
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @FPRINTF(i32*, i8*, ...) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
