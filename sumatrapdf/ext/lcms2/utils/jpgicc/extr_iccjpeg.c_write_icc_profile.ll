; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_iccjpeg.c_write_icc_profile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_iccjpeg.c_write_icc_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DATA_BYTES_IN_MARKER = common dso_local global i32 0, align 4
@ICC_MARKER = common dso_local global i32 0, align 4
@ICC_OVERHEAD_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_icc_profile(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_DATA_BYTES_IN_MARKER, align 4
  %12 = udiv i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_DATA_BYTES_IN_MARKER, align 4
  %15 = mul i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %3
  br label %22

22:                                               ; preds = %85, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MAX_DATA_BYTES_IN_MARKER, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @MAX_DATA_BYTES_IN_MARKER, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ICC_MARKER, align 4
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @ICC_OVERHEAD_LEN, align 8
  %41 = add nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @jpeg_write_m_header(i32 %36, i32 %37, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @jpeg_write_m_byte(i32 %44, i32 73)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @jpeg_write_m_byte(i32 %46, i32 67)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @jpeg_write_m_byte(i32 %48, i32 67)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @jpeg_write_m_byte(i32 %50, i32 95)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @jpeg_write_m_byte(i32 %52, i32 80)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @jpeg_write_m_byte(i32 %54, i32 82)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @jpeg_write_m_byte(i32 %56, i32 79)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @jpeg_write_m_byte(i32 %58, i32 70)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @jpeg_write_m_byte(i32 %60, i32 73)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @jpeg_write_m_byte(i32 %62, i32 76)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @jpeg_write_m_byte(i32 %64, i32 69)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @jpeg_write_m_byte(i32 %66, i32 0)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @jpeg_write_m_byte(i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @jpeg_write_m_byte(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %78, %32
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @jpeg_write_m_byte(i32 %79, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  br label %74

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %22

88:                                               ; preds = %22
  ret void
}

declare dso_local i32 @jpeg_write_m_header(i32, i32, i32) #1

declare dso_local i32 @jpeg_write_m_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
