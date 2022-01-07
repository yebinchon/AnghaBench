; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zstreamdump/extr_zstreamdump.c_ssread.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zstreamdump/extr_zstreamdump.c_ssread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@send_stream = common dso_local global i32 0, align 4
@do_cksum = common dso_local global i64 0, align 8
@do_byteswap = common dso_local global i64 0, align 8
@total_stream_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32*)* @ssread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssread(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @send_stream, align 4
  %12 = call i64 @fread(i8* %9, i64 %10, i32 1, i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load i64, i64* @do_cksum, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i64, i64* @do_byteswap, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @fletcher_4_incremental_byteswap(i8* %22, i64 %23, i32* %24)
  br label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fletcher_4_incremental_native(i8* %27, i64 %28, i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @total_stream_len, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* @total_stream_len, align 8
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %32, %14
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @fread(i8*, i64, i32, i32) #1

declare dso_local i32 @fletcher_4_incremental_byteswap(i8*, i64, i32*) #1

declare dso_local i32 @fletcher_4_incremental_native(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
