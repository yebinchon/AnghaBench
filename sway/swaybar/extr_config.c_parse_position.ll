; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_config.c_parse_position.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_config.c_parse_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"top\00", align 1
@ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid position: %s, defaulting to bottom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_position(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT, align 4
  %6 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @SWAY_ERROR, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @sway_log(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %19, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
