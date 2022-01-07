; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_normalize_boundary.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_normalize_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@DP_HIDDEN_BIT = common dso_local global i32 0, align 4
@DIY_SIGNIFICAND_SIZE = common dso_local global i32 0, align 4
@DP_SIGNIFICAND_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64)* @normalize_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @normalize_boundary(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to { i32, i64 }*
  %6 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = bitcast %struct.TYPE_4__* %3 to i8*
  %9 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  br label %10

10:                                               ; preds = %18, %2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %14 = shl i32 %13, 1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load i32, i32* @DIY_SIGNIFICAND_SIZE, align 4
  %27 = load i32, i32* @DP_SIGNIFICAND_SIZE, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, %29
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @DIY_SIGNIFICAND_SIZE, align 4
  %36 = load i32, i32* @DP_SIGNIFICAND_SIZE, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %34, %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = bitcast %struct.TYPE_4__* %3 to { i32, i64 }*
  %43 = load { i32, i64 }, { i32, i64 }* %42, align 8
  ret { i32, i64 } %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
