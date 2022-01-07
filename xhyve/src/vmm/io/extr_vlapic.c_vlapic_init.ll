; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"vlapic_init: vm is not initialized\00", align 1
@VM_MAXCPU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"vlapic_init: vcpuid is not initialized\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"vlapic_init: apic_page is not initialized\00", align 1
@DEFAULT_APIC_BASE = common dso_local global i32 0, align 4
@APICBASE_ENABLED = common dso_local global i32 0, align 4
@APICBASE_BSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_init(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %3 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %4 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %10 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %15 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VM_MAXCPU, align 8
  %18 = icmp slt i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %24 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %30 = call i32 @VLAPIC_TIMER_LOCK_INIT(%struct.vlapic* %29)
  %31 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %32 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %31, i32 0, i32 2
  %33 = call i32 @callout_init(i32* %32, i32 1)
  %34 = load i32, i32* @DEFAULT_APIC_BASE, align 4
  %35 = load i32, i32* @APICBASE_ENABLED, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %38 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %40 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %19
  %44 = load i32, i32* @APICBASE_BSP, align 4
  %45 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %46 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %19
  %50 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %51 = call i32 @vlapic_reset(%struct.vlapic* %50)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VLAPIC_TIMER_LOCK_INIT(%struct.vlapic*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @vlapic_reset(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
