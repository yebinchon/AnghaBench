; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_argv2cdata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_argv2cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_U16 = common dso_local global i32 0, align 4
@IRFL_CDATA_CTYPEID = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32, i32*)* @argv2cdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @argv2cdata(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @tref_iscdata(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %15 = call i32 @lj_trace_err(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_4__* @cdataV(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load i32, i32* @IR_FLOAD, align 4
  %20 = load i32, i32* @IRT_U16, align 4
  %21 = call i32 @IRT(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IRFL_CDATA_CTYPEID, align 4
  %24 = call i32 @emitir(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @IR_EQ, align 4
  %26 = load i32, i32* @IRT_INT, align 4
  %27 = call i32 @IRTG(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @lj_ir_kint(i32* %29, i32 %33)
  %35 = call i32 @emitir(i32 %27, i32 %28, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %36
}

declare dso_local i32 @tref_iscdata(i32) #1

declare dso_local i32 @lj_trace_err(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @cdataV(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
