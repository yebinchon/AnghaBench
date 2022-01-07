; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_free_transform_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_free_transform_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform_desc = type { %struct.transform_desc*, %struct.transform_desc*, %struct.transform_desc*, %struct.transform_desc*, %struct.transform_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform_desc*)* @free_transform_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_transform_desc(%struct.transform_desc* %0) #0 {
  %2 = alloca %struct.transform_desc*, align 8
  store %struct.transform_desc* %0, %struct.transform_desc** %2, align 8
  %3 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %4 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %3, i32 0, i32 4
  %5 = load %struct.transform_desc*, %struct.transform_desc** %4, align 8
  %6 = call i32 @msi_free(%struct.transform_desc* %5)
  %7 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %8 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %7, i32 0, i32 3
  %9 = load %struct.transform_desc*, %struct.transform_desc** %8, align 8
  %10 = call i32 @msi_free(%struct.transform_desc* %9)
  %11 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %12 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %11, i32 0, i32 2
  %13 = load %struct.transform_desc*, %struct.transform_desc** %12, align 8
  %14 = call i32 @msi_free(%struct.transform_desc* %13)
  %15 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %16 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %15, i32 0, i32 1
  %17 = load %struct.transform_desc*, %struct.transform_desc** %16, align 8
  %18 = call i32 @msi_free(%struct.transform_desc* %17)
  %19 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %20 = getelementptr inbounds %struct.transform_desc, %struct.transform_desc* %19, i32 0, i32 0
  %21 = load %struct.transform_desc*, %struct.transform_desc** %20, align 8
  %22 = call i32 @msi_free(%struct.transform_desc* %21)
  %23 = load %struct.transform_desc*, %struct.transform_desc** %2, align 8
  %24 = call i32 @msi_free(%struct.transform_desc* %23)
  ret void
}

declare dso_local i32 @msi_free(%struct.transform_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
