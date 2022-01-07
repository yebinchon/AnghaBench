; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_abs_size_mm.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_abs_size_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_absinfo = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_absinfo*)* @abs_size_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abs_size_mm(%struct.input_absinfo* %0) #0 {
  %2 = alloca %struct.input_absinfo*, align 8
  store %struct.input_absinfo* %0, %struct.input_absinfo** %2, align 8
  %3 = load %struct.input_absinfo*, %struct.input_absinfo** %2, align 8
  %4 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.input_absinfo*, %struct.input_absinfo** %2, align 8
  %7 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %5, %8
  %10 = load %struct.input_absinfo*, %struct.input_absinfo** %2, align 8
  %11 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %9, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
