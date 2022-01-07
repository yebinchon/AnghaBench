; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_tmr_level.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_tmr_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid vector %d\00", align 1
@APIC_DELMODE_FIXED = common dso_local global i32 0, align 4
@APIC_DELMODE_LOWPRIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Ignoring level trigger-mode for delivery-mode %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"vector %d set to level-triggered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_set_tmr_level(%struct.vlapic* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vlapic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp sle i32 %16, 255
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ false, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @APIC_DELMODE_LOWPRIO, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @VLAPIC_CTR1(%struct.vlapic* %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %62

36:                                               ; preds = %28, %18
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @APIC_DELMODE_LOWPRIO, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %42 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @vlapic_calcdest(i32 %43, i32* %11, i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %49 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @CPU_ISSET(i32 %51, i32* %11)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %36
  br label %62

55:                                               ; preds = %36
  %56 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @VLAPIC_CTR1(%struct.vlapic* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @vlapic_set_tmr(%struct.vlapic* %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %55, %54, %32
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

declare dso_local i32 @vlapic_calcdest(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vlapic_set_tmr(%struct.vlapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
