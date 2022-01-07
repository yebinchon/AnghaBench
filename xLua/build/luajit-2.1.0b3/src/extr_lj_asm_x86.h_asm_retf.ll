; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_retf.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_retf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@REF_BASE = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@jit_base = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@XO_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @asm_retf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_retf(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = load i32, i32* @REF_BASE, align 4
  %10 = load i32, i32* @RSET_GPR, align 4
  %11 = call i32 @ra_alloc1(%struct.TYPE_16__* %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_17__* @IR(i32 %14)
  %16 = call i8* @ir_kptr(%struct.TYPE_17__* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i64, i64* @LJ_FR2, align 8
  %18 = add nsw i64 1, %17
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @bc_a(i32 %22)
  %24 = add nsw i64 %18, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32, i32* @REF_BASE, align 4
  %39 = call %struct.TYPE_17__* @IR(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @irt_setmark(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @jit_base, align 4
  %46 = call i32 @emit_setgl(%struct.TYPE_16__* %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %7, align 8
  %50 = mul nsw i64 -8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @emit_addptr(%struct.TYPE_16__* %47, i32 %48, i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = load i32, i32* @CC_NE, align 4
  %55 = call i32 @asm_guardcc(%struct.TYPE_16__* %53, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = load i32, i32* @XOg_CMP, align 4
  %58 = call i32 @XG_ARITHi(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @ptr2addr(i8* %60)
  %62 = call i32 @emit_gmroi(%struct.TYPE_16__* %56, i32 %58, i32 %59, i32 -4, i32 %61)
  ret void
}

declare dso_local i32 @ra_alloc1(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @ir_kptr(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @IR(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i32 @irt_setmark(i32) #1

declare dso_local i32 @emit_setgl(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emit_addptr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @asm_guardcc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emit_gmroi(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i32) #1

declare dso_local i32 @ptr2addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
