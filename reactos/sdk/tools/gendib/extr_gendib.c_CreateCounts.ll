; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateCounts.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateCounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"LeftCount = ((ULONG_PTR) DestBase >> 1) & 0x01;\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LeftCount = (ULONG_PTR) DestBase & 0x03;\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"if ((ULONG)(BltInfo->DestRect.right - BltInfo->DestRect.left) < LeftCount)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"LeftCount = BltInfo->DestRect.right - BltInfo->DestRect.left;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"CenterCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"               LeftCount) / %u;\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"RightCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"              LeftCount - %u * CenterCount);\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"CenterCount = BltInfo->DestRect.right - BltInfo->DestRect.left;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @CreateCounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateCounts(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @MARK(i32* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 32, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @Output(i32* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %26

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @Output(i32* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @Output(i32* %18, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @Output(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @Output(i32* %22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @Output(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @Output(i32* %27, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = udiv i32 32, %30
  %32 = call i32 (i32*, i8*, ...) @Output(i32* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @Output(i32* %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = udiv i32 32, %36
  %38 = call i32 (i32*, i8*, ...) @Output(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i8*, ...) @Output(i32* %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
