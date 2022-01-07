; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_writeNCount.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_writeNCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_writeNCount(i8* %0, i64 %1, i16* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i16* %2, i16** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSE_MAX_TABLELOG, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @tableLog_tooLarge, align 4
  %17 = call i64 @ERROR(i32 %16)
  store i64 %17, i64* %6, align 8
  br label %45

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @GENERIC, align 4
  %24 = call i64 @ERROR(i32 %23)
  store i64 %24, i64* %6, align 8
  br label %45

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @FSE_NCountWriteBound(i32 %27, i32 %28)
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i16*, i16** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @FSE_writeNCount_generic(i8* %32, i64 %33, i16* %34, i32 %35, i32 %36, i32 0)
  store i64 %37, i64* %6, align 8
  br label %45

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i16*, i16** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @FSE_writeNCount_generic(i8* %39, i64 %40, i16* %41, i32 %42, i32 %43, i32 1)
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %38, %31, %22, %15
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @FSE_NCountWriteBound(i32, i32) #1

declare dso_local i64 @FSE_writeNCount_generic(i8*, i64, i16*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
