; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_emit_x86.h_emit_gri.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_emit_x86.h_emit_gri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@XM_REG = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i64)* @emit_gri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_gri(%struct.TYPE_3__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @checki8(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 -1
  store i64* %20, i64** %9, align 8
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @XG_TOXOi8(i32 %21)
  store i32 %22, i32* %10, align 4
  br label %30

23:                                               ; preds = %4
  %24 = load i64*, i64** %9, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 -4
  store i64* %25, i64** %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @XG_TOXOi(i32 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @XM_REG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 7
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @REX_64, align 4
  %37 = and i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = call i64* @emit_opm(i32 %31, i32 %32, i32 %38, i32 %39, i64* %40, i32 0)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64* %41, i64** %43, align 8
  ret void
}

declare dso_local i64 @checki8(i64) #1

declare dso_local i32 @XG_TOXOi8(i32) #1

declare dso_local i32 @XG_TOXOi(i32) #1

declare dso_local i64* @emit_opm(i32, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
