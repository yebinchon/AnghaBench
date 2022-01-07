; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_frameHeaderSize.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_frameHeaderSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTDv07_frameHeaderSize_min = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv07_did_fieldSize = common dso_local global i64* null, align 8
@ZSTDv07_fcs_fieldSize = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ZSTDv07_frameHeaderSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv07_frameHeaderSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @srcSize_wrong, align 4
  %15 = call i64 @ERROR(i32 %14)
  store i64 %15, i64* %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 3
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 5
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 6
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = add i64 %31, %36
  %38 = load i64*, i64** @ZSTDv07_did_fieldSize, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %37, %41
  %43 = load i64*, i64** @ZSTDv07_fcs_fieldSize, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %42, %46
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %16
  %51 = load i64*, i64** @ZSTDv07_fcs_fieldSize, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %50, %16
  %58 = phi i1 [ false, %16 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = add i64 %47, %60
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %57, %13
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
