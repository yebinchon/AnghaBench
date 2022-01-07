; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_ValidateCommandLine.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_ValidateCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-get\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: Multiple '-get' arguments specified.\0A\00", align 1
@ErrValidate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ERROR: Multiple '-set' arguments specified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"ERROR: Multiple '-strip' arguments specified.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-info\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ERROR: Multiple '-info' arguments specified.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"ERROR: Multiple output files specified.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-frame\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-bgcolor\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"-duration\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"ERROR: Multiple loop counts specified.\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"ERROR: Multiple background colors specified.\0A\00", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"ERROR: Loop count and background color are relevant only in case of animation.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"ERROR: Can not combine -duration and -frame commands.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ValidateCommandLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ValidateCommandLine(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @CountOccurrences(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ErrValidate, align 4
  %20 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @CountOccurrences(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ErrValidate, align 4
  %27 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @CountOccurrences(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ErrValidate, align 4
  %34 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @CountOccurrences(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ErrValidate, align 4
  %41 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @CountOccurrences(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @ErrValidate, align 4
  %48 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @CountOccurrences(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @CountOccurrences(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @CountOccurrences(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @CountOccurrences(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @ErrValidate, align 4
  %62 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @ErrValidate, align 4
  %68 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @ErrValidate, align 4
  %79 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %72, %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ErrValidate, align 4
  %88 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %83, %80
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %4, align 8
  store i32 %97, i32* %98, align 4
  br label %112

99:                                               ; preds = %89
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32*, i32** %4, align 8
  store i32 1, i32* %103, align 4
  br label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32*, i32** %4, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %102
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CountOccurrences(i32*, i8*) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
