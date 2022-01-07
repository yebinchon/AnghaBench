; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filters/mountmgr/extr_mountmgr.c_IsOffline.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filters/mountmgr/extr_mountmgr.c_IsOffline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64*, i32, i64*, i32, i32, i32 }

@RTL_QUERY_REGISTRY_DIRECT = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@RTL_REGISTRY_ABSOLUTE = common dso_local global i32 0, align 4
@OfflinePath = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsOffline(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.TYPE_6__], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %8 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %7, i32 80)
  %9 = load i32, i32* @RTL_QUERY_REGISTRY_DIRECT, align 4
  %10 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 16
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64* %4, i64** %18, align 16
  %19 = load i32, i32* @REG_DWORD, align 4
  %20 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 8, i32* %23, align 8
  %24 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i64* %5, i64** %25, align 16
  store i64 0, i64* %5, align 8
  %26 = load i32, i32* @RTL_REGISTRY_ABSOLUTE, align 4
  %27 = load i32, i32* @OfflinePath, align 4
  %28 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %29 = call i32 @RtlQueryRegistryValues(i32 %26, i32 %27, %struct.TYPE_6__* %28, i32* null, i32* null)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RtlQueryRegistryValues(i32, i32, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
