; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_machine_info_clear.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_machine_info_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine_info*)* @machine_info_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_info_clear(%struct.machine_info* %0) #0 {
  %2 = alloca %struct.machine_info*, align 8
  %3 = alloca { i64, i32 }, align 4
  store %struct.machine_info* %0, %struct.machine_info** %2, align 8
  %4 = load %struct.machine_info*, %struct.machine_info** %2, align 8
  %5 = call i32 @assert(%struct.machine_info* %4)
  %6 = load %struct.machine_info*, %struct.machine_info** %2, align 8
  %7 = getelementptr inbounds %struct.machine_info, %struct.machine_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @free(i32 %8)
  %10 = load %struct.machine_info*, %struct.machine_info** %2, align 8
  %11 = getelementptr inbounds %struct.machine_info, %struct.machine_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free(i32 %12)
  %14 = load %struct.machine_info*, %struct.machine_info** %2, align 8
  %15 = getelementptr inbounds %struct.machine_info, %struct.machine_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free(i32 %16)
  %18 = load %struct.machine_info*, %struct.machine_info** %2, align 8
  %19 = bitcast { i64, i32 }* %3 to i8*
  %20 = bitcast %struct.machine_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @zero(i64 %22, i32 %24)
  ret void
}

declare dso_local i32 @assert(%struct.machine_info*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @zero(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
