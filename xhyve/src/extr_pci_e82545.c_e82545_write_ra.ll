; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_write_ra.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_write_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { %struct.eth_uni* }
%struct.eth_uni = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32, i32)* @e82545_write_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_write_ra(%struct.e82545_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e82545_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.eth_uni*, align 8
  %8 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 15
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %16 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %15, i32 0, i32 0
  %17 = load %struct.eth_uni*, %struct.eth_uni** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %17, i64 %19
  store %struct.eth_uni* %20, %struct.eth_uni** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E1000_RAH_AV, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @E1000_RAH_AV, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %32 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 3
  %36 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %37 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %43 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 5
  store i8* %41, i8** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %51 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  store i8* %49, i8** %54, align 8
  br label %91

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 24
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %61 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  store i8* %59, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 16
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %70 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 2
  store i8* %68, i8** %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %79 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  store i8* %77, i8** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.eth_uni*, %struct.eth_uni** %7, align 8
  %87 = getelementptr inbounds %struct.eth_uni, %struct.eth_uni* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  store i8* %85, i8** %90, align 8
  br label %91

91:                                               ; preds = %55, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
