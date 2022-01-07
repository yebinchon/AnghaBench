; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_stack_check.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_stack_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@RID_BASE = common dso_local global i32 0, align 4
@RID_EAX = common dso_local global i32 0, align 4
@CC_B = common dso_local global i32 0, align 4
@RSET_EMPTY = common dso_local global i64 0, align 8
@XO_MOV = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@XOg_SUB = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@lua_State = common dso_local global i32 0, align 4
@maxstack = common dso_local global i32 0, align 4
@cur_L = common dso_local global i32 0, align 4
@XO_MOVto = common dso_local global i32 0, align 4
@RID_DISPATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i64, i32)* @asm_stack_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_stack_check(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
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
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load i32, i32* @CC_B, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @exitstub_addr(i32 %36, i32 %37)
  %39 = call i32 @emit_jcc(%struct.TYPE_15__* %32, i32 %33, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @RSET_EMPTY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = load i32, i32* @XO_MOV, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @REX_64, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RID_ESP, align 4
  %50 = call i32 @emit_rmro(%struct.TYPE_15__* %44, i32 %45, i32 %48, i32 %49, i32 0)
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ra_modified(%struct.TYPE_15__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = load i32, i32* @XOg_CMP, align 4
  %58 = call i32 @XG_ARITHi(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @REX_GC64, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 8, %62
  %64 = call i32 @emit_gri(%struct.TYPE_15__* %56, i32 %58, i32 %61, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @ra_hasreg(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %55
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = load i32, i32* @XOg_SUB, align 4
  %75 = call i32 @XO_ARITH(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @REX_GC64, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @emit_rr(%struct.TYPE_15__* %73, i32 %75, i32 %78, i32 %79)
  br label %94

81:                                               ; preds = %68, %55
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = load i32, i32* @XOg_SUB, align 4
  %84 = call i32 @XO_ARITH(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @RID_NONE, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_13__* @J2G(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = call i32 @ptr2addr(i32* %91)
  %93 = call i32 @emit_rmro(%struct.TYPE_15__* %82, i32 %84, i32 %85, i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %81, %72
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = load i32, i32* @XO_MOV, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @REX_GC64, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @lua_State, align 4
  %102 = load i32, i32* @maxstack, align 4
  %103 = call i32 @offsetof(i32 %101, i32 %102)
  %104 = call i32 @emit_rmro(%struct.TYPE_15__* %95, i32 %96, i32 %99, i32 %100, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @cur_L, align 4
  %108 = call i32 @emit_getgl(%struct.TYPE_15__* %105, i32 %106, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @RSET_EMPTY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %94
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = load i32, i32* @XO_MOVto, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @REX_64, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RID_ESP, align 4
  %119 = call i32 @emit_rmro(%struct.TYPE_15__* %113, i32 %114, i32 %117, i32 %118, i32 0)
  br label %120

120:                                              ; preds = %112, %94
  ret void
}

declare dso_local i32 @rset_pickbot(i64) #1

declare dso_local i32 @emit_jcc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @exitstub_addr(i32, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @emit_gri(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i32) #1

declare dso_local i32 @ptr2addr(i32*) #1

declare dso_local %struct.TYPE_13__* @J2G(i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
