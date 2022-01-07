; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_uref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_uref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
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
  br i1 %18, label %19, label %44

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
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @emit_rma(i32* %39, i32 %40, i32 %41, i32* %42)
  br label %105

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @RSET_GPR, align 4
  %47 = call i32 @ra_scratch(i32* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RSET_GPR, align 4
  %53 = call i32 @ra_alloc1(i32* %48, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IR_UREFC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %44
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @XO_LEA, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @GCupval, align 4
  %65 = load i32, i32* @tv, align 4
  %66 = call i32 @offsetof(i32 %64, i32 %65)
  %67 = call i32 @emit_rmro(i32* %60, i32 %61, i32 %62, i32 %63, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @CC_NE, align 4
  %70 = call i32 @asm_guardcc(i32* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @emit_i8(i32* %71, i32 1)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @XO_ARITHib, align 4
  %75 = load i32, i32* @XOg_CMP, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GCupval, align 4
  %78 = load i32, i32* @closed, align 4
  %79 = call i32 @offsetof(i32 %77, i32 %78)
  %80 = call i32 @emit_rmro(i32* %73, i32 %74, i32 %75, i32 %76, i32 %79)
  br label %90

81:                                               ; preds = %44
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @XO_MOV, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @GCupval, align 4
  %87 = load i32, i32* @v, align 4
  %88 = call i32 @offsetof(i32 %86, i32 %87)
  %89 = call i32 @emit_rmro(i32* %82, i32 %83, i32 %84, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %59
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @XO_MOV, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GCfuncL, align 4
  %96 = load i32, i32* @uvptr, align 4
  %97 = call i32 @offsetof(i32 %95, i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 8
  %102 = mul nsw i32 4, %101
  %103 = add nsw i32 %97, %102
  %104 = call i32 @emit_rmro(i32* %91, i32 %92, i32 %93, i32 %94, i32 %103)
  br label %105

105:                                              ; preds = %90, %19
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
