; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wmiutils/extr_path.c_init_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wmiutils/extr_path.c_init_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, i64, i32*, i64, i32*, i64, i32*, i32*, i64, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*)* @init_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_path(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  %3 = load %struct.path*, %struct.path** %2, align 8
  %4 = getelementptr inbounds %struct.path, %struct.path* %3, i32 0, i32 11
  store i32* null, i32** %4, align 8
  %5 = load %struct.path*, %struct.path** %2, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 10
  store i64 0, i64* %6, align 8
  %7 = load %struct.path*, %struct.path** %2, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 9
  store i32* null, i32** %8, align 8
  %9 = load %struct.path*, %struct.path** %2, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.path*, %struct.path** %2, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 7
  store i32* null, i32** %12, align 8
  %13 = load %struct.path*, %struct.path** %2, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = load %struct.path*, %struct.path** %2, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.path*, %struct.path** %2, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.path*, %struct.path** %2, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.path*, %struct.path** %2, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.path*, %struct.path** %2, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.path*, %struct.path** %2, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
