; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetAllInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetAllInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }

@FILE_ALL_INFORMATION = common dso_local global i32 0, align 4
@NameInformation = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i64*)* @VfatGetAllInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatGetAllInformation(i32 %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_14__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %14 = call i32 @ASSERT(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = call i32 @ASSERT(%struct.TYPE_14__* %15)
  %17 = load i64*, i64** %11, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @FILE_ALL_INFORMATION, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @NameInformation, i32 0, i32 0), align 4
  %21 = call i64 @FIELD_OFFSET(i32 %19, i32 %20)
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %24, i32* %6, align 4
  br label %99

25:                                               ; preds = %5
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 12
  store i64 %28, i64* %26, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load i64*, i64** %11, align 8
  %35 = call i32 @VfatGetBasicInformation(i32 %29, %struct.TYPE_14__* %30, i32 %31, i32* %33, i64* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %99

41:                                               ; preds = %25
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load i64*, i64** %11, align 8
  %46 = call i32 @VfatGetStandardInformation(%struct.TYPE_14__* %42, i32* %44, i64* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @NT_SUCCESS(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %99

52:                                               ; preds = %41
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @VfatGetInternalInformation(%struct.TYPE_14__* %53, i32 %54, i32* %56, i64* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %99

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load i64*, i64** %11, align 8
  %71 = call i32 @VfatGetEaInformation(i32 %65, %struct.TYPE_14__* %66, i32 %67, i32* %69, i64* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %99

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64*, i64** %11, align 8
  %84 = call i32 @VfatGetPositionInformation(i32 %78, %struct.TYPE_14__* %79, i32 %80, i32* %82, i64* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @NT_SUCCESS(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %99

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64*, i64** %11, align 8
  %97 = call i32 @VfatGetNameInformation(i32 %91, %struct.TYPE_14__* %92, i32 %93, i32* %95, i64* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %90, %88, %75, %62, %50, %39, %23
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(%struct.TYPE_14__*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @VfatGetBasicInformation(i32, %struct.TYPE_14__*, i32, i32*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @VfatGetStandardInformation(%struct.TYPE_14__*, i32*, i64*) #1

declare dso_local i32 @VfatGetInternalInformation(%struct.TYPE_14__*, i32, i32*, i64*) #1

declare dso_local i32 @VfatGetEaInformation(i32, %struct.TYPE_14__*, i32, i32*, i64*) #1

declare dso_local i32 @VfatGetPositionInformation(i32, %struct.TYPE_14__*, i32, i32*, i64*) #1

declare dso_local i32 @VfatGetNameInformation(i32, %struct.TYPE_14__*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
