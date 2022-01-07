; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadk64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadk64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@RSET_FPR = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@XO_XORPS = common dso_local global i32 0, align 4
@XOg_XOR = common dso_local global i32 0, align 4
@MCLIM_REDZONE = common dso_local global i32 0, align 4
@RID_RIP = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@XI_INT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)* @emit_loadk64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadk64(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = call %struct.TYPE_16__* @ir_k64(%struct.TYPE_14__* %10)
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64* %12, i64** %9, align 8
  %13 = load i32, i32* @RSET_FPR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @rset_test(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @XO_MOVSD, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REX_64, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @XO_MOV, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = load i32, i32* @RSET_FPR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @rset_test(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @XO_XORPS, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @XOg_XOR, align 4
  %39 = call i32 @XO_ARITH(i32 %38)
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @emit_rr(%struct.TYPE_15__* %30, i32 %41, i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @emit_rma(%struct.TYPE_15__* %46, i32 %47, i32 %48, i64* %49)
  br label %51

51:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.TYPE_16__* @ir_k64(%struct.TYPE_14__*) #1

declare dso_local i64 @rset_test(i32, i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i32) #1

declare dso_local i32 @emit_rma(%struct.TYPE_15__*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
