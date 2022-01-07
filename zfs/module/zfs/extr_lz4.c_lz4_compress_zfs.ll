; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_lz4.c_lz4_compress_zfs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_lz4.c_lz4_compress_zfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lz4_compress_zfs(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp uge i64 %15, 8
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, 8
  %25 = call i64 @real_LZ4_compress(i8* %19, i8* %21, i64 %22, i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %6, align 8
  br label %37

30:                                               ; preds = %5
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @BE_32(i64 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to i64*
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i64, i64* %6, align 8
  ret i64 %38
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @real_LZ4_compress(i8*, i8*, i64, i64) #1

declare dso_local i64 @BE_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
