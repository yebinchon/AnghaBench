; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_rmrxo.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_rmrxo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@RID_EBP = common dso_local global i32 0, align 4
@XM_OFS0 = common dso_local global i32 0, align 4
@XM_OFS8 = common dso_local global i32 0, align 4
@XM_OFS32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i64)* @emit_rmrxo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_rmrxo(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %15, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, 7
  %25 = load i32, i32* @RID_EBP, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @XM_OFS0, align 4
  store i32 %28, i32* %16, align 4
  br label %45

29:                                               ; preds = %22, %7
  %30 = load i64, i64* %14, align 8
  %31 = call i64 @checki8(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @XM_OFS8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i64, i64* %14, align 8
  %36 = load i64*, i64** %15, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 -1
  store i64* %37, i64** %15, align 8
  store i64 %35, i64* %37, align 8
  br label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @XM_OFS32, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i64*, i64** %15, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 -4
  store i64* %41, i64** %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64*, i64** %15, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i64*, i64** %15, align 8
  %53 = call i64* @emit_opmx(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i64* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64* %53, i64** %55, align 8
  ret void
}

declare dso_local i64 @checki8(i64) #1

declare dso_local i64* @emit_opmx(i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
