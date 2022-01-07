; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_partition_info.c_write_partition_start_sector_number.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_partition_info.c_write_partition_start_sector_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_partition_start_sector_number(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, 255
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, 65280
  %20 = lshr i64 %19, 8
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, 16711680
  %25 = lshr i64 %24, 16
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %26, i8* %27, align 1
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, 4278190080
  %30 = lshr i64 %29, 24
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 %31, i8* %32, align 1
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %35 = call i32 @write_data(i32* %33, i32 28, i8* %34, i32 4)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %13, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @write_data(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
