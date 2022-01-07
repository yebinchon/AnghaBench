; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_dummy_statfs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_dummy_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_statfs_t = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_statfs_t*)* @dummy_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_statfs(%struct.dummy_statfs_t* %0) #0 {
  %2 = alloca %struct.dummy_statfs_t*, align 8
  store %struct.dummy_statfs_t* %0, %struct.dummy_statfs_t** %2, align 8
  %3 = load %struct.dummy_statfs_t*, %struct.dummy_statfs_t** %2, align 8
  %4 = getelementptr inbounds %struct.dummy_statfs_t, %struct.dummy_statfs_t* %3, i32 0, i32 0
  store i32 262144, i32* %4, align 4
  %5 = load %struct.dummy_statfs_t*, %struct.dummy_statfs_t** %2, align 8
  %6 = getelementptr inbounds %struct.dummy_statfs_t, %struct.dummy_statfs_t* %5, i32 0, i32 1
  store i32 131072, i32* %6, align 4
  %7 = load %struct.dummy_statfs_t*, %struct.dummy_statfs_t** %2, align 8
  %8 = getelementptr inbounds %struct.dummy_statfs_t, %struct.dummy_statfs_t* %7, i32 0, i32 2
  store i32 512, i32* %8, align 4
  %9 = load %struct.dummy_statfs_t*, %struct.dummy_statfs_t** %2, align 8
  %10 = getelementptr inbounds %struct.dummy_statfs_t, %struct.dummy_statfs_t* %9, i32 0, i32 3
  store i32 255, i32* %10, align 4
  %11 = load %struct.dummy_statfs_t*, %struct.dummy_statfs_t** %2, align 8
  %12 = getelementptr inbounds %struct.dummy_statfs_t, %struct.dummy_statfs_t* %11, i32 0, i32 4
  store i32 255, i32* %12, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
