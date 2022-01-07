; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_call_specialize.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_call_specialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@PROTO_CLC_POLY = common dso_local global i64 0, align 8
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_P32 = common dso_local global i32 0, align 4
@IRFL_FUNC_PC = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRT_PROTO = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRFL_FUNC_FFID = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@IRT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32)* @rec_call_specialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_call_specialize(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = call i64 @isluafunc(%struct.TYPE_13__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = call %struct.TYPE_12__* @funcproto(%struct.TYPE_13__* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PROTO_CLC_POLY, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = load i32, i32* @IR_FLOAD, align 4
  %25 = load i32, i32* @IRT_P32, align 4
  %26 = call i32 @IRT(i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IRFL_FUNC_PC, align 4
  %29 = call i32 @emitir(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @IR_EQ, align 4
  %31 = load i32, i32* @IRT_P32, align 4
  %32 = call i32 @IRTG(i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = call i32 @proto_bc(%struct.TYPE_12__* %35)
  %37 = call i32 @lj_ir_kptr(i32* %34, i32 %36)
  %38 = call i32 @emitir(i32 %32, i32 %33, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = call i32 @obj2gco(%struct.TYPE_12__* %40)
  %42 = load i32, i32* @IRT_PROTO, align 4
  %43 = call i32 @lj_ir_kgc(i32* %39, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %15
  br label %72

46:                                               ; preds = %3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %70 [
    i32 129, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %46, %46
  %52 = load i32, i32* @IR_FLOAD, align 4
  %53 = load i32, i32* @IRT_U8, align 4
  %54 = call i32 @IRT(i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IRFL_FUNC_FFID, align 4
  %57 = call i32 @emitir(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @IR_EQ, align 4
  %59 = load i32, i32* @IRT_INT, align 4
  %60 = call i32 @IRTG(i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lj_ir_kint(i32* %62, i32 %66)
  %68 = call i32 @emitir(i32 %60, i32 %61, i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %4, align 4
  br label %83

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = call i32 @lj_ir_kfunc(i32* %73, %struct.TYPE_13__* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @IR_EQ, align 4
  %77 = load i32, i32* @IRT_FUNC, align 4
  %78 = call i32 @IRTG(i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @emitir(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %51, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @isluafunc(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @funcproto(%struct.TYPE_13__*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kptr(i32*, i32) #1

declare dso_local i32 @proto_bc(%struct.TYPE_12__*) #1

declare dso_local i32 @lj_ir_kgc(i32*, i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_12__*) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @lj_ir_kfunc(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
