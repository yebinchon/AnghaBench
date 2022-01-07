; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_get_lvtptr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_get_lvtptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.LAPIC* }
%struct.LAPIC = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"vlapic_get_lvt: invalid LVT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.vlapic*, i32)* @vlapic_get_lvtptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlapic_get_lvtptr(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.LAPIC*, align 8
  %7 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %9 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %8, i32 0, i32 0
  %10 = load %struct.LAPIC*, %struct.LAPIC** %9, align 8
  store %struct.LAPIC* %10, %struct.LAPIC** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 134, label %12
    i32 128, label %15
    i32 129, label %15
    i32 130, label %15
    i32 132, label %15
    i32 131, label %15
    i32 133, label %15
  ]

12:                                               ; preds = %2
  %13 = load %struct.LAPIC*, %struct.LAPIC** %6, align 8
  %14 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %13, i32 0, i32 0
  store i32* %14, i32** %3, align 8
  br label %26

15:                                               ; preds = %2, %2, %2, %2, %2, %2
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 128
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load %struct.LAPIC*, %struct.LAPIC** %6, align 8
  %20 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %3, align 8
  br label %26

24:                                               ; preds = %2
  %25 = call i32 @xhyve_abort(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %12, %15, %24
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @xhyve_abort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
