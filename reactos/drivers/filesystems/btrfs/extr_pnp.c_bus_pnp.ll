; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_pnp.c_bus_pnp.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_pnp.c_bus_pnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@BusRelations = common dso_local global i32 0, align 4
@no_pnp = common dso_local global i32 0, align 4
@BusQueryHardwareIDs = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, %struct.TYPE_23__*)* @bus_pnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bus_pnp(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = call %struct.TYPE_24__* @IoGetCurrentIrpStackLocation(%struct.TYPE_23__* %13)
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %48 [
    i32 130, label %18
    i32 129, label %21
    i32 128, label %36
  ]

18:                                               ; preds = %2
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = call i8* @bus_query_capabilities(%struct.TYPE_23__* %19)
  store i8* %20, i8** %6, align 8
  store i32 1, i32* %8, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BusRelations, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @no_pnp, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %21
  br label %48

33:                                               ; preds = %29
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = call i8* @bus_query_device_relations(%struct.TYPE_23__* %34)
  store i8* %35, i8** %6, align 8
  store i32 1, i32* %8, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BusQueryHardwareIDs, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %47 = call i8* @bus_query_hardware_ids(%struct.TYPE_23__* %46)
  store i8* %47, i8** %6, align 8
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %2, %45, %44, %33, %32, %18
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @NT_SUCCESS(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = load i32, i32* @IO_NO_INCREMENT, align 4
  %62 = call i32 @IoCompleteRequest(%struct.TYPE_23__* %60, i32 %61)
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %3, align 8
  br label %76

64:                                               ; preds = %52, %48
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_23__* %69)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = call i8* @IoCallDriver(i32 %73, %struct.TYPE_23__* %74)
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %64, %55
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local %struct.TYPE_24__* @IoGetCurrentIrpStackLocation(%struct.TYPE_23__*) #1

declare dso_local i8* @bus_query_capabilities(%struct.TYPE_23__*) #1

declare dso_local i8* @bus_query_device_relations(%struct.TYPE_23__*) #1

declare dso_local i8* @bus_query_hardware_ids(%struct.TYPE_23__*) #1

declare dso_local i32 @NT_SUCCESS(i8*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_23__*) #1

declare dso_local i8* @IoCallDriver(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
