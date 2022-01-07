; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_mmio_rw.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_mmio_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { i64 }

@VIOAPIC_BASE = common dso_local global i64 0, align 8
@IOREGSEL = common dso_local global i64 0, align 8
@IOWIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vioapic*, i32, i64, i64*, i32, i32)* @vioapic_mmio_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vioapic_mmio_rw(%struct.vioapic* %0, i32 %1, i64 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vioapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.vioapic* %0, %struct.vioapic** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @VIOAPIC_BASE, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %14, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %28, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @IOREGSEL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @IOWIN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %6
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64*, i64** %11, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  br label %78

34:                                               ; preds = %24, %20
  %35 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %36 = call i32 @VIOAPIC_LOCK(%struct.vioapic* %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @IOREGSEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %45 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  br label %53

48:                                               ; preds = %40
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %52 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %75

54:                                               ; preds = %34
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %61 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @vioapic_read(%struct.vioapic* %58, i32 %59, i64 %62)
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  br label %74

65:                                               ; preds = %54
  %66 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %69 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @vioapic_write(%struct.vioapic* %66, i32 %67, i64 %70, i64 %72)
  br label %74

74:                                               ; preds = %65, %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.vioapic*, %struct.vioapic** %8, align 8
  %77 = call i32 @VIOAPIC_UNLOCK(%struct.vioapic* %76)
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %33
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @VIOAPIC_LOCK(%struct.vioapic*) #1

declare dso_local i64 @vioapic_read(%struct.vioapic*, i32, i64) #1

declare dso_local i32 @vioapic_write(%struct.vioapic*, i32, i64, i64) #1

declare dso_local i32 @VIOAPIC_UNLOCK(%struct.vioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
