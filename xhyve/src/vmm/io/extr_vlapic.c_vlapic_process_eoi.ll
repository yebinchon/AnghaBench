; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_process_eoi.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_process_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"invalid vlapic isrvec_stk_top %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"EOI vector %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"vlapic_process_eoi\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Gratuitous EOI\00", align 1
@VLAPIC_GRATUITOUS_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_process_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_process_eoi(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %10 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %11 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %10, i32 0, i32 3
  %12 = load %struct.LAPIC*, %struct.LAPIC** %11, align 8
  store %struct.LAPIC* %12, %struct.LAPIC** %3, align 8
  %13 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %14 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %13, i32 0, i32 0
  store i32* %14, i32** %4, align 8
  %15 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %16 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %15, i32 0, i32 1
  store i32* %16, i32** %5, align 8
  store i32 7, i32* %6, align 4
  br label %17

17:                                               ; preds = %92, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fls(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %20
  %33 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %34 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %39 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @xhyve_abort(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 32
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %57 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %60 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @VCPU_CTR1(i32 %58, i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %65 = call i32 @VLAPIC_CTR_ISR(%struct.vlapic* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %67 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %71 = call i32 @vlapic_update_ppr(%struct.vlapic* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %42
  %82 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %83 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %86 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @vioapic_process_eoi(i32 %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %42
  br label %111

91:                                               ; preds = %20
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %6, align 4
  br label %17

95:                                               ; preds = %17
  %96 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %97 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %100 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @VCPU_CTR0(i32 %98, i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %104 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %107 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @VLAPIC_GRATUITOUS_EOI, align 4
  %110 = call i32 @vmm_stat_incr(i32 %105, i32 %108, i32 %109, i32 1)
  br label %111

111:                                              ; preds = %95, %90
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @xhyve_abort(i8*, i64) #1

declare dso_local i32 @VCPU_CTR1(i32, i32, i8*, i32) #1

declare dso_local i32 @VLAPIC_CTR_ISR(%struct.vlapic*, i8*) #1

declare dso_local i32 @vlapic_update_ppr(%struct.vlapic*) #1

declare dso_local i32 @vioapic_process_eoi(i32, i32, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
