; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_callx.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_callx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }

@CCI_NARGS_MAX = common dso_local global i32 0, align 4
@IR_CARG = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@RSET_SCRATCH = common dso_local global i32 0, align 4
@LJ_32 = common dso_local global i64 0, align 8
@XO_GROUP5 = common dso_local global i32 0, align 4
@XOg_CALL = common dso_local global i32 0, align 4
@CCI_CC_CDECL = common dso_local global i32 0, align 4
@CCI_CC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @asm_callx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_callx(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %13 = load i32, i32* @CCI_NARGS_MAX, align 4
  %14 = mul nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i32 @asm_callx_flags(i32* %18, %struct.TYPE_13__* %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = call i32 @asm_collectargs(i32* %22, %struct.TYPE_13__* %23, %struct.TYPE_14__* %7, i32* %17)
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @asm_setupresult(i32* %25, %struct.TYPE_13__* %26, %struct.TYPE_14__* %7)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_13__* @IR(i32 %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IR_CARG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.TYPE_13__* @IR(i32 %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %9, align 8
  br label %44

44:                                               ; preds = %38, %2
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @asm_callx_func(i32* %45, %struct.TYPE_13__* %46, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = icmp ne i8* %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @RSET_GPR, align 4
  %56 = load i32, i32* @RSET_SCRATCH, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ra_alloc1(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i64, i64* @LJ_32, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @emit_spsub(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %54
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @XO_GROUP5, align 4
  %72 = load i32, i32* @XOg_CALL, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @emit_rr(i32* %70, i32 %71, i32 %72, i32 %73)
  br label %83

75:                                               ; preds = %44
  %76 = load i64, i64* @LJ_32, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @emit_spsub(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @asm_gencall(i32* %84, %struct.TYPE_14__* %7, i32* %17)
  %86 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @asm_callx_flags(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @asm_collectargs(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @asm_setupresult(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_13__* @IR(i32) #2

declare dso_local i64 @asm_callx_func(i32*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @ra_alloc1(i32*, i32, i32) #2

declare dso_local i32 @emit_spsub(i32*, i32) #2

declare dso_local i32 @emit_rr(i32*, i32, i32, i32) #2

declare dso_local i32 @asm_gencall(i32*, %struct.TYPE_14__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
