; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_intr_accepted.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_intr_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i64*, %struct.TYPE_2__, %struct.LAPIC* }
%struct.TYPE_2__ = type { i32 (%struct.vlapic.0*, i32)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"vlapic_intr_accepted\00", align 1
@ISRVEC_STK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"isrvec_stk_top overflow %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_intr_accepted(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.LAPIC*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %11 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %10, i32 0, i32 3
  %12 = load %struct.LAPIC*, %struct.LAPIC** %11, align 8
  store %struct.LAPIC* %12, %struct.LAPIC** %5, align 8
  %13 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.vlapic.0*, i32)*, i32 (%struct.vlapic.0*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.vlapic.0*, i32)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %20 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.vlapic.0*, i32)*, i32 (%struct.vlapic.0*, i32)** %21, align 8
  %23 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %24 = bitcast %struct.vlapic* %23 to %struct.vlapic.0*
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %22(%struct.vlapic.0* %24, i32 %25)
  br label %80

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 32
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %32 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %31, i32 0, i32 0
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %4, align 4
  %38 = srem i32 %37, 32
  %39 = shl i32 1, %38
  %40 = call i32 @atomic_clear_int(i32* %36, i32 %39)
  %41 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %42 = call i32 @VLAPIC_CTR_IRR(%struct.vlapic* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %44 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %43, i32 0, i32 1
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = srem i32 %45, 32
  %47 = shl i32 1, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %55 = call i32 @VLAPIC_CTR_ISR(%struct.vlapic* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %57 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %61 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ISRVEC_STK_SIZE, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %27
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @xhyve_abort(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %27
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %73 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  %78 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %79 = call i32 @vlapic_update_ppr(%struct.vlapic* %78)
  br label %80

80:                                               ; preds = %69, %18
  ret void
}

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @VLAPIC_CTR_IRR(%struct.vlapic*, i8*) #1

declare dso_local i32 @VLAPIC_CTR_ISR(%struct.vlapic*, i8*) #1

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vlapic_update_ppr(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
