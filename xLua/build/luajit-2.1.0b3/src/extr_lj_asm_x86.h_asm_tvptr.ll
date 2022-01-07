; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_tvptr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_tvptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }

@XO_LEA = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@XO_ARITHi = common dso_local global i32 0, align 4
@XOg_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32, i32)* @asm_tvptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tvptr(%struct.TYPE_26__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.TYPE_25__* @IR(i32 %9)
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %7, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @irt_isnum(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @irref_isk(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = call i32* @ir_knum(%struct.TYPE_25__* %23)
  %25 = call i32 @emit_loada(%struct.TYPE_26__* %21, i32 %22, i32* %24)
  br label %37

26:                                               ; preds = %16
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = load i32, i32* @XO_LEA, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @REX_64, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RID_ESP, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = call i32 @ra_spill(%struct.TYPE_26__* %33, %struct.TYPE_25__* %34)
  %36 = call i32 @emit_rmro(%struct.TYPE_26__* %27, i32 %28, i32 %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %20
  br label %95

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @irref_isk(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @RSET_GPR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @rset_exclude(i32 %45, i32 %46)
  %48 = call i32 @ra_alloc1(%struct.TYPE_26__* %43, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @REX_64IR(%struct.TYPE_25__* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @emit_movtomro(%struct.TYPE_26__* %49, i32 %52, i32 %53, i32 0)
  br label %69

55:                                               ; preds = %38
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @irt_ispri(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @emit_movmroi(%struct.TYPE_26__* %62, i32 %63, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %42
  %70 = load i64, i64* @LJ_64, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @irt_islightud(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @irt_toitype(i32 %83)
  %85 = call i32 @emit_movmroi(%struct.TYPE_26__* %79, i32 %80, i32 4, i32 %84)
  br label %86

86:                                               ; preds = %78, %72
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = call %struct.TYPE_21__* @J2G(%struct.TYPE_22__* %91)
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = call i32 @emit_loada(%struct.TYPE_26__* %87, i32 %88, i32* %93)
  br label %95

95:                                               ; preds = %86, %37
  ret void
}

declare dso_local %struct.TYPE_25__* @IR(i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i32 @emit_loada(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32* @ir_knum(%struct.TYPE_25__*) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @ra_spill(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_movtomro(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @irt_ispri(i32) #1

declare dso_local i32 @emit_movmroi(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i64 @irt_islightud(i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local %struct.TYPE_21__* @J2G(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
