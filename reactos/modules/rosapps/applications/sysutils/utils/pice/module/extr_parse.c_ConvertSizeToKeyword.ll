; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertSizeToKeyword.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertSizeToKeyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertSizeToKeyword(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @StrLenUpToWhiteChar(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 98, label %16
    i32 66, label %16
    i32 119, label %18
    i32 87, label %18
    i32 100, label %20
    i32 68, label %20
    i32 113, label %22
    i32 81, label %22
  ]

16:                                               ; preds = %13, %13
  %17 = load i32*, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %26

18:                                               ; preds = %13, %13
  %19 = load i32*, i32** %5, align 8
  store i32 2, i32* %19, align 4
  br label %26

20:                                               ; preds = %13, %13
  %21 = load i32*, i32** %5, align 8
  store i32 4, i32* %21, align 4
  br label %26

22:                                               ; preds = %13, %13
  %23 = load i32*, i32** %5, align 8
  store i32 4, i32* %23, align 4
  br label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %22, %20, %18, %16
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @StrLenUpToWhiteChar(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
