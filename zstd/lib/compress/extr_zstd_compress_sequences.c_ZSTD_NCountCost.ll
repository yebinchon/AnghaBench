; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_NCountCost.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_NCountCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_NCOUNTBOUND = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i32)* @ZSTD_NCountCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_NCountCost(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @FSE_NCOUNTBOUND, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MaxSeq, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @FSE_optimalTableLog(i32 %21, i64 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FSE_normalizeCount(i32* %20, i32 %25, i32* %26, i64 %27, i32 %28)
  %30 = call i32 @FORWARD_IF_ERROR(i32 %29)
  %31 = mul nuw i64 4, %14
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @FSE_writeNCount(i32* %16, i32 %32, i32* %20, i32 %33, i32 %34)
  %36 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i64 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FSE_optimalTableLog(i32, i64, i32) #2

declare dso_local i32 @FORWARD_IF_ERROR(i32) #2

declare dso_local i32 @FSE_normalizeCount(i32*, i32, i32*, i64, i32) #2

declare dso_local i64 @FSE_writeNCount(i32*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
