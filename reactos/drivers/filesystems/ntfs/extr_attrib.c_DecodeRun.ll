; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_DecodeRun.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_DecodeRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"DataRunOffsetSize: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"DataRunLengthSize: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DataRunOffset: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DataRunLength: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DecodeRun(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %36, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 8
  %30 = shl i32 %27, %29
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  store i32 -1, i32* %43, align 4
  br label %75

44:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 %52, %54
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %4, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 8
  %70 = shl i32 %67, %69
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %70, %72
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %42
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i32 @DPRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
