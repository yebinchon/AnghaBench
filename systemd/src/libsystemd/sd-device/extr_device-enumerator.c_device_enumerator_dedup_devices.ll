; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_device_enumerator_dedup_devices.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_device_enumerator_dedup_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @device_enumerator_dedup_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_enumerator_dedup_devices(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = call i32 @assert(%struct.TYPE_4__* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32** %19, i32*** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  store i32** %22, i32*** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %25, i64 %29
  store i32** %30, i32*** %5, align 8
  br label %31

31:                                               ; preds = %62, %15
  %32 = load i32**, i32*** %3, align 8
  %33 = load i32**, i32*** %5, align 8
  %34 = icmp ult i32** %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i32**, i32*** %3, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sd_device_get_devpath(i32* %37, i8** %6)
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @sd_device_get_devpath(i32* %43, i8** %7)
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @path_equal(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i32**, i32*** %3, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @sd_device_unref(i32* %54)
  br label %61

56:                                               ; preds = %35
  %57 = load i32**, i32*** %3, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %4, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i32 1
  store i32** %60, i32*** %4, align 8
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32**, i32*** %3, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i32 1
  store i32** %64, i32*** %3, align 8
  br label %31

65:                                               ; preds = %31
  %66 = load i32**, i32*** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = ptrtoint i32** %66 to i64
  %71 = ptrtoint i32** %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = add nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %65, %14
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_device_get_devpath(i32*, i8**) #1

declare dso_local i64 @path_equal(i8*, i8*) #1

declare dso_local i32 @sd_device_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
