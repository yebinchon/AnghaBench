; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliConstructDefaultISAMPTable.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliConstructDefaultISAMPTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64*, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i64, i32 }

@INT_EXTINT = common dso_local global i32 0, align 4
@INT_NMI = common dso_local global i32 0, align 4
@MPCTE_PROCESSOR = common dso_local global i32 0, align 4
@CPU_FLAG_ENABLED = common dso_local global i32 0, align 4
@CPU_FLAG_BSP = common dso_local global i32 0, align 4
@MPCTE_BUS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unknown standard configuration %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ISA   \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EISA  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"MCA   \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"PCI   \00", align 1
@MPCTE_IOAPIC = common dso_local global i32 0, align 4
@MP_IOAPIC_USABLE = common dso_local global i32 0, align 4
@IOAPIC_DEFAULT_BASE = common dso_local global i32 0, align 4
@MPCTE_LINTSRC = common dso_local global i32 0, align 4
@MP_APIC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @HaliConstructDefaultISAMPTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HaliConstructDefaultISAMPTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = load i32, i32* @INT_EXTINT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @INT_NMI, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @MPCTE_PROCESSOR, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 4
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 16, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @CPU_FLAG_ENABLED, align 4
  %22 = load i32, i32* @CPU_FLAG_BSP, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 0, i64* %32, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %45, %1
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = call i32 @HaliMPProcessorInfo(%struct.TYPE_9__* %4)
  %40 = load i32, i32* @CPU_FLAG_BSP, align 4
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load i8*, i8** @MPCTE_BUS, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  switch i32 %52, label %53 [
    i32 1, label %56
    i32 5, label %56
    i32 2, label %60
    i32 6, label %60
    i32 3, label %60
    i32 4, label %64
    i32 7, label %64
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %48, %53
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  br label %68

60:                                               ; preds = %48, %48, %48
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  br label %68

64:                                               ; preds = %48, %48
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = call i32 @HaliMPBusInfo(%struct.TYPE_12__* %5)
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 4
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i8*, i8** @MPCTE_BUS, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %79 = call i32 @HaliMPBusInfo(%struct.TYPE_12__* %5)
  br label %80

80:                                               ; preds = %72, %68
  %81 = load i32, i32* @MPCTE_IOAPIC, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 2, i32* %83, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp sgt i32 %84, 4
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 16, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @MP_IOAPIC_USABLE, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @IOAPIC_DEFAULT_BASE, align 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = call i32 @HaliMPIOApicInfo(%struct.TYPE_10__* %6)
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @HaliConstructDefaultIOIrqMPTable(i32 %94)
  %96 = load i32, i32* @MPCTE_LINTSRC, align 4
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @MP_APIC_ALL, align 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %116, %80
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = call i32 @HaliMPIntLocalInfo(%struct.TYPE_11__* %7)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @HaliMPProcessorInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @HaliMPBusInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @HaliMPIOApicInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @HaliConstructDefaultIOIrqMPTable(i32) #1

declare dso_local i32 @HaliMPIntLocalInfo(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
