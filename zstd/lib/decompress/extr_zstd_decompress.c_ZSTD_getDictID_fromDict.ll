; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_getDictID_fromDict.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_getDictID_fromDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_MAGIC_DICTIONARY = common dso_local global i64 0, align 8
@ZSTD_FRAMEIDSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ZSTD_getDictID_fromDict(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @MEM_readLE32(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @ZSTD_MAGIC_DICTIONARY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %22

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @ZSTD_FRAMEIDSIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 @MEM_readLE32(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %15, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @MEM_readLE32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
