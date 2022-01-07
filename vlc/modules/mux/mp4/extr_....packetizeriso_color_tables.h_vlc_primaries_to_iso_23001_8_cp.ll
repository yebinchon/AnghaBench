; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizeriso_color_tables.h_vlc_primaries_to_iso_23001_8_cp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizeriso_color_tables.h_vlc_primaries_to_iso_23001_8_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iso_23001_8_cp_to_vlc_primaries_table = common dso_local global i64* null, align 8
@COLOR_PRIMARIES_EBU_3213 = common dso_local global i64 0, align 8
@ISO_23001_8_CP_EBU_3213 = common dso_local global i32 0, align 4
@ISO_23001_8_CP_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @vlc_primaries_to_iso_23001_8_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_primaries_to_iso_23001_8_cp(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 1, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64*, i64** @iso_23001_8_cp_to_vlc_primaries_table, align 8
  %8 = call i64 @ARRAY_SIZE(i64* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load i64*, i64** @iso_23001_8_cp_to_vlc_primaries_table, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %5
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @COLOR_PRIMARIES_EBU_3213, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ISO_23001_8_CP_EBU_3213, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ISO_23001_8_CP_UNSPECIFIED, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
