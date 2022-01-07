; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_iso_color_tables.h_iso_23001_8_cp_to_vlc_primaries.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_iso_color_tables.h_iso_23001_8_cp_to_vlc_primaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_23001_8_CP_EBU_3213 = common dso_local global i64 0, align 8
@COLOR_PRIMARIES_EBU_3213 = common dso_local global i32 0, align 4
@iso_23001_8_cp_to_vlc_primaries_table = common dso_local global i32* null, align 8
@COLOR_PRIMARIES_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @iso_23001_8_cp_to_vlc_primaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso_23001_8_cp_to_vlc_primaries(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @ISO_23001_8_CP_EBU_3213, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @COLOR_PRIMARIES_EBU_3213, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i32*, i32** @iso_23001_8_cp_to_vlc_primaries_table, align 8
  %12 = call i64 @ARRAY_SIZE(i32* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32*, i32** @iso_23001_8_cp_to_vlc_primaries_table, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %9
  %20 = load i32, i32* @COLOR_PRIMARIES_UNDEF, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %18, %14 ], [ %20, %19 ]
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
