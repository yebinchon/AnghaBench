; ModuleID = '/home/carl/AnghaBench/sway/common/extr_background-image.c_parse_background_mode.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_background-image.c_parse_background_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@BACKGROUND_MODE_STRETCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@BACKGROUND_MODE_FILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fit\00", align 1
@BACKGROUND_MODE_FIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@BACKGROUND_MODE_CENTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@BACKGROUND_MODE_TILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"solid_color\00", align 1
@BACKGROUND_MODE_SOLID_COLOR = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Unsupported background mode: %s\00", align 1
@BACKGROUND_MODE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_background_mode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @BACKGROUND_MODE_STRETCH, align 4
  store i32 %8, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @BACKGROUND_MODE_FILL, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @BACKGROUND_MODE_FIT, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @BACKGROUND_MODE_CENTER, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @BACKGROUND_MODE_TILE, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @BACKGROUND_MODE_SOLID_COLOR, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @SWAY_ERROR, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @sway_log(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @BACKGROUND_MODE_INVALID, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %37, %31, %25, %19, %13, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
