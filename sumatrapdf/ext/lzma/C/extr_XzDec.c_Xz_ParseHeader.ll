; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzDec.c_Xz_ParseHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzDec.c_Xz_ParseHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XZ_SIG_SIZE = common dso_local global i32 0, align 4
@XZ_STREAM_FLAGS_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_NO_ARCHIVE = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Xz_ParseHeader(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* @XZ_SIG_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = call i64 @GetBe16(i32* %9)
  %11 = load i64*, i64** %4, align 8
  store i64 %10, i64* %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @XZ_SIG_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* @XZ_STREAM_FLAGS_SIZE, align 4
  %17 = call i64 @CrcCalc(i32* %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @XZ_SIG_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @XZ_STREAM_FLAGS_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i64 @GetUi32(i32* %24)
  %26 = icmp ne i64 %17, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @SZ_ERROR_NO_ARCHIVE, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @XzFlags_IsSupported(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @SZ_OK, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @GetBe16(i32*) #1

declare dso_local i64 @CrcCalc(i32*, i32) #1

declare dso_local i64 @GetUi32(i32*) #1

declare dso_local i64 @XzFlags_IsSupported(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
