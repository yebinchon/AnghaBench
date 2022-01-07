; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_native_nvp_op.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_native_nvp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @nvs_native_nvp_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_native_nvp_op(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @native_cp(%struct.TYPE_16__* %13, %struct.TYPE_17__* %14, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @EFAULT, align 4
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %12
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %22
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i64 @i_validate_nvpair_name(%struct.TYPE_17__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @EFAULT, align 4
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = call i32 @NVP_TYPE(%struct.TYPE_17__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = call i32 @NVP_NELEM(%struct.TYPE_17__* %35)
  %37 = call i32 @i_get_value_size(i32 %34, i32* null, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %31
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @NVP_SIZE_CALC(i32 %44, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @EFAULT, align 4
  store i32 %52, i32* %3, align 4
  br label %70

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %67 [
    i32 132, label %55
    i32 131, label %59
    i32 130, label %63
  ]

55:                                               ; preds = %53
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = call i32 @nvpair_native_embedded(%struct.TYPE_16__* %56, %struct.TYPE_17__* %57)
  store i32 %58, i32* %8, align 4
  br label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = call i32 @nvpair_native_embedded_array(%struct.TYPE_16__* %60, %struct.TYPE_17__* %61)
  store i32 %62, i32* %8, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = call i32 @nvpair_native_string_array(%struct.TYPE_16__* %64, %struct.TYPE_17__* %65)
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %63, %59, %55
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %51, %39, %29, %23, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @native_cp(%struct.TYPE_16__*, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @i_validate_nvpair_name(%struct.TYPE_17__*) #1

declare dso_local i32 @NVP_TYPE(%struct.TYPE_17__*) #1

declare dso_local i32 @i_get_value_size(i32, i32*, i32) #1

declare dso_local i32 @NVP_NELEM(%struct.TYPE_17__*) #1

declare dso_local i64 @NVP_SIZE_CALC(i32, i32) #1

declare dso_local i32 @nvpair_native_embedded(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @nvpair_native_embedded_array(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @nvpair_native_string_array(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
