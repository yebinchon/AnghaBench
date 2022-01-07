; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_stack_check.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_stack_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@RID_BASE = common dso_local global i32 0, align 4
@RID_EAX = common dso_local global i32 0, align 4
@CC_B = common dso_local global i32 0, align 4
@RSET_EMPTY = common dso_local global i64 0, align 8
@XO_MOV = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@XOg_SUB = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@lua_State = common dso_local global i32 0, align 4
@maxstack = common dso_local global i32 0, align 4
@cur_L = common dso_local global i32 0, align 4
@XO_MOVto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i64, i32)* @asm_stack_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_stack_check(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @RID_BASE, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @rset_pickbot(i64 %26)
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @RID_EAX, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load i32, i32* @CC_B, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @exitstub_addr(i32 %36, i32 %37)
  %39 = call i32 @emit_jcc(%struct.TYPE_14__* %32, i32 %33, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @RSET_EMPTY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = load i32, i32* @XO_MOV, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @REX_64, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RID_ESP, align 4
  %50 = call i32 @emit_rmro(%struct.TYPE_14__* %44, i32 %45, i32 %48, i32 %49, i32 0)
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ra_modified(%struct.TYPE_14__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load i32, i32* @XOg_CMP, align 4
  %58 = call i32 @XG_ARITHi(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 8, %60
  %62 = call i32 @emit_gri(%struct.TYPE_14__* %56, i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @ra_hasreg(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = load i32, i32* @XOg_SUB, align 4
  %73 = call i32 @XO_ARITH(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @emit_rr(%struct.TYPE_14__* %71, i32 %73, i32 %74, i32 %75)
  br label %90

77:                                               ; preds = %66, %55
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = load i32, i32* @XOg_SUB, align 4
  %80 = call i32 @XO_ARITH(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @RID_NONE, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.TYPE_12__* @J2G(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @ptr2addr(i32* %87)
  %89 = call i32 @emit_rmro(%struct.TYPE_14__* %78, i32 %80, i32 %81, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %77, %70
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i32, i32* @XO_MOV, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @lua_State, align 4
  %96 = load i32, i32* @maxstack, align 4
  %97 = call i32 @offsetof(i32 %95, i32 %96)
  %98 = call i32 @emit_rmro(%struct.TYPE_14__* %91, i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @cur_L, align 4
  %102 = call i32 @emit_getgl(%struct.TYPE_14__* %99, i32 %100, i32 %101)
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @RSET_EMPTY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %90
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = load i32, i32* @XO_MOVto, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @REX_64, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RID_ESP, align 4
  %113 = call i32 @emit_rmro(%struct.TYPE_14__* %107, i32 %108, i32 %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %106, %90
  ret void
}

declare dso_local i32 @rset_pickbot(i64) #1

declare dso_local i32 @emit_jcc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @exitstub_addr(i32, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emit_gri(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i32) #1

declare dso_local i32 @ptr2addr(i32*) #1

declare dso_local %struct.TYPE_12__* @J2G(i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
