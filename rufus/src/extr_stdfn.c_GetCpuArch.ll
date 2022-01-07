; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetCpuArch.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetCpuArch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CPU_ARCH_X86_64 = common dso_local global i32 0, align 4
@CPU_ARCH_ARM_64 = common dso_local global i32 0, align 4
@CPU_ARCH_ARM_32 = common dso_local global i32 0, align 4
@CPU_ARCH_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetCpuArch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false)
  %4 = call i32 @GetNativeSystemInfo(%struct.TYPE_3__* %2)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 131, label %7
    i32 128, label %9
    i32 129, label %11
    i32 130, label %13
  ]

7:                                                ; preds = %0
  %8 = load i32, i32* @CPU_ARCH_X86_64, align 4
  store i32 %8, i32* %1, align 4
  br label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @CPU_ARCH_X86_64, align 4
  store i32 %10, i32* %1, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @CPU_ARCH_ARM_64, align 4
  store i32 %12, i32* %1, align 4
  br label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @CPU_ARCH_ARM_32, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @CPU_ARCH_UNDEFINED, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetNativeSystemInfo(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
