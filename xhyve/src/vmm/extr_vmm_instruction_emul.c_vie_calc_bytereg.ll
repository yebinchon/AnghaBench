; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vie_calc_bytereg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vie_calc_bytereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i64, i32 }

@gpr_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vie*, i32*, i32*)* @vie_calc_bytereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vie_calc_bytereg(%struct.vie* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.vie*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.vie* %0, %struct.vie** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** @gpr_map, align 8
  %9 = load %struct.vie*, %struct.vie** %4, align 8
  %10 = getelementptr inbounds %struct.vie, %struct.vie* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vie*, %struct.vie** %4, align 8
  %16 = getelementptr inbounds %struct.vie, %struct.vie* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %3
  %20 = load %struct.vie*, %struct.vie** %4, align 8
  %21 = getelementptr inbounds %struct.vie, %struct.vie* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 4
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** @gpr_map, align 8
  %28 = load %struct.vie*, %struct.vie** %4, align 8
  %29 = getelementptr inbounds %struct.vie, %struct.vie* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 3
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %19
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
