; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_vlapic_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_vlapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, %struct.LAPIC*, i32 }
%struct.LAPIC = type { i32 }
%struct.vmx = type { i32*, i32 }
%struct.vlapic_vtx = type { %struct.vmx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlapic* (i8*, i32)* @vmx_vlapic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlapic* @vmx_vlapic_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca %struct.vlapic*, align 8
  %7 = alloca %struct.vlapic_vtx*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.vmx*
  store %struct.vmx* %9, %struct.vmx** %5, align 8
  %10 = call %struct.vlapic* @malloc(i32 8)
  store %struct.vlapic* %10, %struct.vlapic** %6, align 8
  %11 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %12 = call i32 @assert(%struct.vlapic* %11)
  %13 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %14 = call i32 @bzero(%struct.vlapic* %13, i32 24)
  %15 = load %struct.vmx*, %struct.vmx** %5, align 8
  %16 = getelementptr inbounds %struct.vmx, %struct.vmx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %19 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %22 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vmx*, %struct.vmx** %5, align 8
  %24 = getelementptr inbounds %struct.vmx, %struct.vmx* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.LAPIC*
  %30 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %31 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %30, i32 0, i32 1
  store %struct.LAPIC* %29, %struct.LAPIC** %31, align 8
  %32 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %33 = bitcast %struct.vlapic* %32 to %struct.vlapic_vtx*
  store %struct.vlapic_vtx* %33, %struct.vlapic_vtx** %7, align 8
  %34 = load %struct.vmx*, %struct.vmx** %5, align 8
  %35 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %7, align 8
  %36 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %35, i32 0, i32 0
  store %struct.vmx* %34, %struct.vmx** %36, align 8
  %37 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %38 = call i32 @vlapic_init(%struct.vlapic* %37)
  %39 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  ret %struct.vlapic* %39
}

declare dso_local %struct.vlapic* @malloc(i32) #1

declare dso_local i32 @assert(%struct.vlapic*) #1

declare dso_local i32 @bzero(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_init(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
