; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_free_machines_list.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_free_machines_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine_info*, i32)* @free_machines_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_machines_list(%struct.machine_info* %0, i32 %1) #0 {
  %3 = alloca %struct.machine_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.machine_info* %0, %struct.machine_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.machine_info*, %struct.machine_info** %3, align 8
  %7 = icmp ne %struct.machine_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %26

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.machine_info*, %struct.machine_info** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.machine_info, %struct.machine_info* %15, i64 %17
  %19 = call i32 @machine_info_clear(%struct.machine_info* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.machine_info*, %struct.machine_info** %3, align 8
  %25 = call i32 @free(%struct.machine_info* %24)
  br label %26

26:                                               ; preds = %23, %8
  ret void
}

declare dso_local i32 @machine_info_clear(%struct.machine_info*) #1

declare dso_local i32 @free(%struct.machine_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
