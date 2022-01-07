; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_list_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_list_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_offset_list = type { i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.patch_offset_list* ()* @patch_offset_list_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.patch_offset_list* @patch_offset_list_create() #0 {
  %1 = alloca %struct.patch_offset_list*, align 8
  %2 = call %struct.patch_offset_list* @msi_alloc(i32 32)
  store %struct.patch_offset_list* %2, %struct.patch_offset_list** %1, align 8
  %3 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  %4 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %3, i32 0, i32 4
  %5 = call i32 @list_init(i32* %4)
  %6 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  %7 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %6, i32 0, i32 3
  %8 = call i32 @list_init(i32* %7)
  %9 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  %10 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  %12 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  %14 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %13, i32 0, i32 0
  store i32 999999, i32* %14, align 8
  %15 = load %struct.patch_offset_list*, %struct.patch_offset_list** %1, align 8
  ret %struct.patch_offset_list* %15
}

declare dso_local %struct.patch_offset_list* @msi_alloc(i32) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
