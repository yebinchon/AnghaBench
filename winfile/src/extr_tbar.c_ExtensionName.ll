; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_ExtensionName.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_ExtensionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@iNumExtensions = common dso_local global i64 0, align 8
@extensions = common dso_local global %struct.TYPE_2__* null, align 8
@MAXEXTNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExtensionName(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call i32 @TEXT(i8 signext 0)
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @iNumExtensions, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @extensions, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %23 = call i32 @COUNTOF(i32* %22)
  %24 = call i64 @GetModuleFileName(i32 %20, i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %14
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %28 = call i32 @TEXT(i8 signext 92)
  %29 = call i32* @StrRChr(i32* %27, i32* null, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* @MAXEXTNAME, align 4
  %36 = call i32 @StrNCpy(i32* %32, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %26, %14, %2
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @TEXT(i8 signext) #1

declare dso_local i64 @GetModuleFileName(i32, i32*, i32) #1

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32* @StrRChr(i32*, i32*, i32) #1

declare dso_local i32 @StrNCpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
