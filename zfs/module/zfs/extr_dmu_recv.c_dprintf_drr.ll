; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dprintf_drr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dprintf_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_record_arg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drr_object_range, %struct.drr_spill, %struct.drr_free, %struct.drr_write_embedded, %struct.drr_write_byref, %struct.drr_write, %struct.drr_freeobjects, %struct.drr_object }
%struct.drr_object_range = type { i32, i32, i32 }
%struct.drr_spill = type { i32, i32 }
%struct.drr_free = type { i32, i32, i32 }
%struct.drr_write_embedded = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drr_write_byref = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drr_write = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drr_freeobjects = type { i32, i32 }
%struct.drr_object = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.receive_record_arg*, i32)* @dprintf_drr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprintf_drr(%struct.receive_record_arg* %0, i32 %1) #0 {
  %3 = alloca %struct.receive_record_arg*, align 8
  %4 = alloca i32, align 4
  store %struct.receive_record_arg* %0, %struct.receive_record_arg** %3, align 8
  store i32 %1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
