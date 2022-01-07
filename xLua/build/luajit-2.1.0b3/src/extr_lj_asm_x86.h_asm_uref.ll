; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_uref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_uref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@IR_UREFC = common dso_local global i64 0, align 8
@XO_LEA = common dso_local global i32 0, align 4
@GCupval = common dso_local global i32 0, align 4
@tv = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@XO_ARITHib = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@closed = common dso_local global i32 0, align 4
@v = common dso_local global i32 0, align 4
@GCfuncL = common dso_local global i32 0, align 4
@uvptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*)* @asm_uref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_uref(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = load i32, i32* @RSET_GPR, align 4
  %13 = call i32 @ra_dest(i32* %10, %struct.TYPE_11__* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @irref_isk(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IR(i32 %22)
  %24 = call %struct.TYPE_12__* @ir_kfunc(i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_13__* @gcref(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @XO_MOV, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @REX_GC64, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @emit_rma(i32* %39, i32 %40, i32 %43, i32* %44)
  br label %113

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @RSET_GPR, align 4
  %49 = call i32 @ra_scratch(i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RSET_GPR, align 4
  %55 = call i32 @ra_alloc1(i32* %50, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IR_UREFC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %46
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @XO_LEA, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @REX_GC64, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GCupval, align 4
  %69 = load i32, i32* @tv, align 4
  %70 = call i32 @offsetof(i32 %68, i32 %69)
  %71 = call i32 @emit_rmro(i32* %62, i32 %63, i32 %66, i32 %67, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @CC_NE, align 4
  %74 = call i32 @asm_guardcc(i32* %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @emit_i8(i32* %75, i32 1)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @XO_ARITHib, align 4
  %79 = load i32, i32* @XOg_CMP, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @GCupval, align 4
  %82 = load i32, i32* @closed, align 4
  %83 = call i32 @offsetof(i32 %81, i32 %82)
  %84 = call i32 @emit_rmro(i32* %77, i32 %78, i32 %79, i32 %80, i32 %83)
  br label %96

85:                                               ; preds = %46
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @XO_MOV, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @REX_GC64, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GCupval, align 4
  %93 = load i32, i32* @v, align 4
  %94 = call i32 @offsetof(i32 %92, i32 %93)
  %95 = call i32 @emit_rmro(i32* %86, i32 %87, i32 %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %85, %61
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @XO_MOV, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @REX_GC64, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @GCfuncL, align 4
  %104 = load i32, i32* @uvptr, align 4
  %105 = call i32 @offsetof(i32 %103, i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = ashr i32 %108, 8
  %110 = mul nsw i32 4, %109
  %111 = add nsw i32 %105, %110
  %112 = call i32 @emit_rmro(i32* %97, i32 %98, i32 %101, i32 %102, i32 %111)
  br label %113

113:                                              ; preds = %96, %19
  ret void
}

declare dso_local i32 @ra_dest(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_12__* @ir_kfunc(i32) #1

declare dso_local i32 @IR(i32) #1

declare dso_local %struct.TYPE_13__* @gcref(i32) #1

declare dso_local i32 @emit_rma(i32*, i32, i32, i32*) #1

declare dso_local i32 @ra_scratch(i32*, i32) #1

declare dso_local i32 @ra_alloc1(i32*, i32, i32) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @asm_guardcc(i32*, i32) #1

declare dso_local i32 @emit_i8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
