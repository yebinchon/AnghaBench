; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_siphash24.c_siphash24_finalize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_siphash24.c_siphash24_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siphash24_finalize(%struct.siphash* %0) #0 {
  %2 = alloca %struct.siphash*, align 8
  %3 = alloca i32, align 4
  store %struct.siphash* %0, %struct.siphash** %2, align 8
  %4 = load %struct.siphash*, %struct.siphash** %2, align 8
  %5 = call i32 @assert(%struct.siphash* %4)
  %6 = load %struct.siphash*, %struct.siphash** %2, align 8
  %7 = getelementptr inbounds %struct.siphash, %struct.siphash* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.siphash*, %struct.siphash** %2, align 8
  %10 = getelementptr inbounds %struct.siphash, %struct.siphash* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 56
  %14 = or i32 %8, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.siphash*, %struct.siphash** %2, align 8
  %17 = getelementptr inbounds %struct.siphash, %struct.siphash* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.siphash*, %struct.siphash** %2, align 8
  %21 = call i32 @sipround(%struct.siphash* %20)
  %22 = load %struct.siphash*, %struct.siphash** %2, align 8
  %23 = call i32 @sipround(%struct.siphash* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.siphash*, %struct.siphash** %2, align 8
  %26 = getelementptr inbounds %struct.siphash, %struct.siphash* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.siphash*, %struct.siphash** %2, align 8
  %30 = getelementptr inbounds %struct.siphash, %struct.siphash* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, 255
  store i32 %32, i32* %30, align 4
  %33 = load %struct.siphash*, %struct.siphash** %2, align 8
  %34 = call i32 @sipround(%struct.siphash* %33)
  %35 = load %struct.siphash*, %struct.siphash** %2, align 8
  %36 = call i32 @sipround(%struct.siphash* %35)
  %37 = load %struct.siphash*, %struct.siphash** %2, align 8
  %38 = call i32 @sipround(%struct.siphash* %37)
  %39 = load %struct.siphash*, %struct.siphash** %2, align 8
  %40 = call i32 @sipround(%struct.siphash* %39)
  %41 = load %struct.siphash*, %struct.siphash** %2, align 8
  %42 = getelementptr inbounds %struct.siphash, %struct.siphash* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.siphash*, %struct.siphash** %2, align 8
  %45 = getelementptr inbounds %struct.siphash, %struct.siphash* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %43, %46
  %48 = load %struct.siphash*, %struct.siphash** %2, align 8
  %49 = getelementptr inbounds %struct.siphash, %struct.siphash* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %47, %50
  %52 = load %struct.siphash*, %struct.siphash** %2, align 8
  %53 = getelementptr inbounds %struct.siphash, %struct.siphash* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %51, %54
  ret i32 %55
}

declare dso_local i32 @assert(%struct.siphash*) #1

declare dso_local i32 @sipround(%struct.siphash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
