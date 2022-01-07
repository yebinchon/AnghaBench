; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_parse_resize_axis.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_parse_resize_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@AXIS_HORIZONTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@AXIS_VERTICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_resize_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_resize_axis(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcasecmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @AXIS_HORIZONTAL, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @AXIS_VERTICAL, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @WLR_EDGE_TOP, align 4
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @WLR_EDGE_LEFT, align 4
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @WLR_EDGE_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %39, %33, %27, %21, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
