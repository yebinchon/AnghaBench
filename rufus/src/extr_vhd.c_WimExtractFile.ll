; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractFile.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wim_flags = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WIM_HAS_7Z_EXTRACT = common dso_local global i32 0, align 4
@WIM_HAS_API_EXTRACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WimExtractFile(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* @wim_flags, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = call i32 (...) @WimExtractCheck()
  %14 = call i32 @WIM_HAS_EXTRACT(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %12, %4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %18
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %24
  %30 = load i32, i32* @wim_flags, align 4
  %31 = load i32, i32* @WIM_HAS_7Z_EXTRACT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @WimExtractFile_7z(i8* %35, i32 %36, i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* @wim_flags, align 4
  %43 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @WimExtractFile_API(i8* %47, i32 %48, i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %41
  %54 = phi i1 [ false, %41 ], [ %52, %46 ]
  br label %55

55:                                               ; preds = %53, %34
  %56 = phi i1 [ true, %34 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %27, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @WIM_HAS_EXTRACT(i32) #1

declare dso_local i32 @WimExtractCheck(...) #1

declare dso_local i64 @WimExtractFile_7z(i8*, i32, i8*, i8*) #1

declare dso_local i64 @WimExtractFile_API(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
