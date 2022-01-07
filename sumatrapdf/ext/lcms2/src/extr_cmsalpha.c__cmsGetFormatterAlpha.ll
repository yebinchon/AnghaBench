; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c__cmsGetFormatterAlpha.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c__cmsGetFormatterAlpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cmsGetFormatterAlpha.FormattersAlpha = internal global [6 x [6 x i32*]] [[6 x i32*] [i32* inttoptr (i64 157 to i32*), i32* inttoptr (i64 147 to i32*), i32* inttoptr (i64 146 to i32*), i32* inttoptr (i64 143 to i32*), i32* inttoptr (i64 144 to i32*), i32* inttoptr (i64 145 to i32*)], [6 x i32*] [i32* inttoptr (i64 151 to i32*), i32* inttoptr (i64 160 to i32*), i32* inttoptr (i64 152 to i32*), i32* inttoptr (i64 148 to i32*), i32* inttoptr (i64 149 to i32*), i32* inttoptr (i64 150 to i32*)], [6 x i32*] [i32* inttoptr (i64 156 to i32*), i32* inttoptr (i64 152 to i32*), i32* inttoptr (i64 160 to i32*), i32* inttoptr (i64 153 to i32*), i32* inttoptr (i64 154 to i32*), i32* inttoptr (i64 155 to i32*)], [6 x i32*] [i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 132 to i32*), i32* inttoptr (i64 131 to i32*), i32* inttoptr (i64 160 to i32*), i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 129 to i32*)], [6 x i32*] [i32* inttoptr (i64 135 to i32*), i32* inttoptr (i64 137 to i32*), i32* inttoptr (i64 136 to i32*), i32* inttoptr (i64 133 to i32*), i32* inttoptr (i64 159 to i32*), i32* inttoptr (i64 134 to i32*)], [6 x i32*] [i32* inttoptr (i64 140 to i32*), i32* inttoptr (i64 142 to i32*), i32* inttoptr (i64 141 to i32*), i32* inttoptr (i64 138 to i32*), i32* inttoptr (i64 139 to i32*), i32* inttoptr (i64 158 to i32*)]], align 16
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unrecognized alpha channel width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @_cmsGetFormatterAlpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_cmsGetFormatterAlpha(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @FormatterPos(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @FormatterPos(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19, %16, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %28 = call i32 @cmsSignalError(i32 %26, i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* @_cmsGetFormatterAlpha.FormattersAlpha, i64 0, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i32*], [6 x i32*]* %32, i64 0, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32 @FormatterPos(i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
