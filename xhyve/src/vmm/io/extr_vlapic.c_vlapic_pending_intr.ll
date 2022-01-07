; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_pending_intr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_pending_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.TYPE_2__, %struct.LAPIC* }
%struct.TYPE_2__ = type { i32 (%struct.vlapic.0*, i32*)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"pending intr %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_pending_intr(%struct.vlapic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.LAPIC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 1
  %15 = load %struct.LAPIC*, %struct.LAPIC** %14, align 8
  store %struct.LAPIC* %15, %struct.LAPIC** %6, align 8
  %16 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %17 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.vlapic.0*, i32*)*, i32 (%struct.vlapic.0*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.vlapic.0*, i32*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %23 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.vlapic.0*, i32*)*, i32 (%struct.vlapic.0*, i32*)** %24, align 8
  %26 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %27 = bitcast %struct.vlapic* %26 to %struct.vlapic.0*
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 %25(%struct.vlapic.0* %27, i32* %28)
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %2
  %31 = load %struct.LAPIC*, %struct.LAPIC** %6, align 8
  %32 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %31, i32 0, i32 1
  store i64* %32, i64** %11, align 8
  store i32 7, i32* %8, align 4
  br label %33

33:                                               ; preds = %74, %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  %39 = load i64*, i64** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = call i64 @atomic_load_acq_int(i64* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @fls(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 32
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = add nsw i32 %51, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @PRIO(i32 %55)
  %57 = load %struct.LAPIC*, %struct.LAPIC** %6, align 8
  %58 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PRIO(i32 %59)
  %61 = icmp ugt i32 %56, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @VLAPIC_CTR1(%struct.vlapic* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %62
  store i32 1, i32* %3, align 4
  br label %78

72:                                               ; preds = %49
  br label %77

73:                                               ; preds = %36
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %33

77:                                               ; preds = %72, %33
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %71, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @atomic_load_acq_int(i64*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @PRIO(i32) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
