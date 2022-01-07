; ModuleID = '/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-enumerate.c_udev_enumerate_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-enumerate.c_udev_enumerate_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_enumerate = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udev_enumerate* (%struct.udev_enumerate*)* @udev_enumerate_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udev_enumerate* @udev_enumerate_free(%struct.udev_enumerate* %0) #0 {
  %2 = alloca %struct.udev_enumerate*, align 8
  store %struct.udev_enumerate* %0, %struct.udev_enumerate** %2, align 8
  %3 = load %struct.udev_enumerate*, %struct.udev_enumerate** %2, align 8
  %4 = call i32 @assert(%struct.udev_enumerate* %3)
  %5 = load %struct.udev_enumerate*, %struct.udev_enumerate** %2, align 8
  %6 = getelementptr inbounds %struct.udev_enumerate, %struct.udev_enumerate* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @udev_list_free(i32 %7)
  %9 = load %struct.udev_enumerate*, %struct.udev_enumerate** %2, align 8
  %10 = getelementptr inbounds %struct.udev_enumerate, %struct.udev_enumerate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sd_device_enumerator_unref(i32 %11)
  %13 = load %struct.udev_enumerate*, %struct.udev_enumerate** %2, align 8
  %14 = call %struct.udev_enumerate* @mfree(%struct.udev_enumerate* %13)
  ret %struct.udev_enumerate* %14
}

declare dso_local i32 @assert(%struct.udev_enumerate*) #1

declare dso_local i32 @udev_list_free(i32) #1

declare dso_local i32 @sd_device_enumerator_unref(i32) #1

declare dso_local %struct.udev_enumerate* @mfree(%struct.udev_enumerate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
