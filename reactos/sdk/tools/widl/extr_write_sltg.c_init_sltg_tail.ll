; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_init_sltg_tail.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_init_sltg_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_tail*)* @init_sltg_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sltg_tail(%struct.sltg_tail* %0) #0 {
  %2 = alloca %struct.sltg_tail*, align 8
  store %struct.sltg_tail* %0, %struct.sltg_tail** %2, align 8
  %3 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %4 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %3, i32 0, i32 26
  store i64 0, i64* %4, align 8
  %5 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %6 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %5, i32 0, i32 25
  store i64 0, i64* %6, align 8
  %7 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %8 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %7, i32 0, i32 24
  store i64 0, i64* %8, align 8
  %9 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %10 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %9, i32 0, i32 23
  store i64 0, i64* %10, align 8
  %11 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %12 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %14 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %16 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %15, i32 0, i32 2
  store i32 -1, i32* %16, align 8
  %17 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %18 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %17, i32 0, i32 3
  store i32 -1, i32* %18, align 4
  %19 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %20 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %19, i32 0, i32 4
  store i32 -1, i32* %20, align 8
  %21 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %22 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %21, i32 0, i32 5
  store i32 -1, i32* %22, align 4
  %23 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %24 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %23, i32 0, i32 6
  store i32 -1, i32* %24, align 8
  %25 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %26 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %25, i32 0, i32 7
  store i32 -1, i32* %26, align 4
  %27 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %28 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %27, i32 0, i32 22
  store i64 0, i64* %28, align 8
  %29 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %30 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %29, i32 0, i32 21
  store i64 0, i64* %30, align 8
  %31 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %32 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %31, i32 0, i32 20
  store i64 0, i64* %32, align 8
  %33 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %34 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %33, i32 0, i32 19
  store i64 0, i64* %34, align 8
  %35 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %36 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %35, i32 0, i32 18
  store i64 0, i64* %36, align 8
  %37 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %38 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %37, i32 0, i32 8
  store i32 4, i32* %38, align 8
  %39 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %40 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %39, i32 0, i32 9
  store i32 -1, i32* %40, align 4
  %41 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %42 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %41, i32 0, i32 10
  store i32 -1, i32* %42, align 8
  %43 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %44 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %43, i32 0, i32 17
  store i64 0, i64* %44, align 8
  %45 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %46 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %45, i32 0, i32 11
  store i32 -1, i32* %46, align 4
  %47 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %48 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %47, i32 0, i32 12
  store i32 -1, i32* %48, align 8
  %49 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %50 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %49, i32 0, i32 13
  store i32 -1, i32* %50, align 4
  %51 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %52 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %51, i32 0, i32 14
  store i32 -1, i32* %52, align 8
  %53 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %54 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %53, i32 0, i32 16
  store i64 0, i64* %54, align 8
  %55 = load %struct.sltg_tail*, %struct.sltg_tail** %2, align 8
  %56 = getelementptr inbounds %struct.sltg_tail, %struct.sltg_tail* %55, i32 0, i32 15
  store i64 0, i64* %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
