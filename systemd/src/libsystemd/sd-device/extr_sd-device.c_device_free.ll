; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_sd-device.c_device_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_sd-device.c_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @device_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_7__* %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sd_device_unref(i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @free(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @free(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @free(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @free(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ordered_hashmap_free_free_free(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ordered_hashmap_free_free_free(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hashmap_free_free_free(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_free_free(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_free_free(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @set_free_free(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = call %struct.TYPE_7__* @mfree(%struct.TYPE_7__* %73)
  ret %struct.TYPE_7__* %74
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @sd_device_unref(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ordered_hashmap_free_free_free(i32) #1

declare dso_local i32 @hashmap_free_free_free(i32) #1

declare dso_local i32 @set_free_free(i32) #1

declare dso_local %struct.TYPE_7__* @mfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
