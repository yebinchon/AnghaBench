; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_obar.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_obar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_gc_barrieruv = common dso_local global i64 0, align 8
@IR_UREFC = common dso_local global i64 0, align 8
@RSET_SCRATCH = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@CC_Z = common dso_local global i32 0, align 4
@LJ_GC_WHITES = common dso_local global i32 0, align 4
@XO_GROUP3b = common dso_local global i32 0, align 4
@XOg_TEST = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@GChead = common dso_local global i32 0, align 4
@marked = common dso_local global i32 0, align 4
@LJ_GC_BLACK = common dso_local global i32 0, align 4
@GCupval = common dso_local global i32 0, align 4
@tv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*)* @asm_obar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_obar(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load i32*, i32** @lj_ir_callinfo, align 8
  %12 = load i64, i64* @IRCALL_lj_gc_barrieruv, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_24__* @IR(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IR_UREFC, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @lua_assert(i32 %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = load i32, i32* @RSET_SCRATCH, align 4
  %26 = call i32 @ra_evictset(%struct.TYPE_23__* %24, i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = call i32 @emit_label(%struct.TYPE_23__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ASMREF_TMP1, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %38 = call i32 @asm_gencall(%struct.TYPE_23__* %35, i32* %36, i32* %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = load i32, i32* @ASMREF_TMP1, align 4
  %42 = call i32 @ra_releasetmp(%struct.TYPE_23__* %40, i32 %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @J2G(i32 %45)
  %47 = call i32 @emit_loada(%struct.TYPE_23__* %39, i32 %42, i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_24__* @IR(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %55 = load i32, i32* @CC_Z, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @emit_sjcc(%struct.TYPE_23__* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = load i32, i32* @LJ_GC_WHITES, align 4
  %60 = call i32 @emit_i8(%struct.TYPE_23__* %58, i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @irref_isk(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %2
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_24__* @IR(i32 %69)
  %71 = call %struct.TYPE_22__* @ir_kgc(%struct.TYPE_24__* %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %9, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = load i32, i32* @XO_GROUP3b, align 4
  %74 = load i32, i32* @XOg_TEST, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = call i32 @emit_rma(%struct.TYPE_23__* %72, i32 %73, i32 %74, i32* %77)
  br label %98

79:                                               ; preds = %2
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RSET_SCRATCH, align 4
  %85 = load i32, i32* @RSET_GPR, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rset_exclude(i32 %86, i32 %87)
  %89 = call i32 @ra_alloc1(%struct.TYPE_23__* %80, i32 %83, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = load i32, i32* @XO_GROUP3b, align 4
  %92 = load i32, i32* @XOg_TEST, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @GChead, align 4
  %95 = load i32, i32* @marked, align 4
  %96 = call i64 @offsetof(i32 %94, i32 %95)
  %97 = call i32 @emit_rmro(%struct.TYPE_23__* %90, i32 %91, i32 %92, i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %79, %66
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = load i32, i32* @CC_Z, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @emit_sjcc(%struct.TYPE_23__* %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = load i32, i32* @LJ_GC_BLACK, align 4
  %105 = call i32 @emit_i8(%struct.TYPE_23__* %103, i32 %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = load i32, i32* @XO_GROUP3b, align 4
  %108 = load i32, i32* @XOg_TEST, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @GCupval, align 4
  %111 = load i32, i32* @marked, align 4
  %112 = call i64 @offsetof(i32 %110, i32 %111)
  %113 = load i32, i32* @GCupval, align 4
  %114 = load i32, i32* @tv, align 4
  %115 = call i64 @offsetof(i32 %113, i32 %114)
  %116 = sub nsw i64 %112, %115
  %117 = call i32 @emit_rmro(%struct.TYPE_23__* %106, i32 %107, i32 %108, i32 %109, i64 %116)
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local %struct.TYPE_24__* @IR(i32) #1

declare dso_local i32 @ra_evictset(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @emit_label(%struct.TYPE_23__*) #1

declare dso_local i32 @asm_gencall(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @emit_loada(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ra_releasetmp(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @J2G(i32) #1

declare dso_local i32 @emit_sjcc(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_22__* @ir_kgc(%struct.TYPE_24__*) #1

declare dso_local i32 @emit_rma(%struct.TYPE_23__*, i32, i32, i32*) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_23__*, i32, i32, i32, i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
