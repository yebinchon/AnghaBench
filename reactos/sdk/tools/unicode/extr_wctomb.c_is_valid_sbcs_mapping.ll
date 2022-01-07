; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_is_valid_sbcs_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_is_valid_sbcs_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WC_NO_BEST_FIT_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i64, i8)* @is_valid_sbcs_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_sbcs_mapping(%struct.sbcs_table* %0, i32 %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbcs_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.sbcs_table* %0, %struct.sbcs_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %18 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %14, %4
  %25 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %26 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
