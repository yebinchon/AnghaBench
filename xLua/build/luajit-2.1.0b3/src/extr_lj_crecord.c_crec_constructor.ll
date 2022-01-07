; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_constructor.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CTID_CTYPEID = common dso_local global i64 0, align 8
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@IRFL_CDATA_INT = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, i32)* @crec_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_constructor(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @tref_iscdata(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CTID_CTYPEID, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @lua_assert(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = call i64 @cdataptr(%struct.TYPE_4__* %21)
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @IR_FLOAD, align 4
  %26 = load i32, i32* @IRT_INT, align 4
  %27 = call i32 @IRT(i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IRFL_CDATA_INT, align 4
  %30 = call i32 @emitir(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @IR_EQ, align 4
  %32 = load i32, i32* @IRT_INT, align 4
  %33 = call i32 @IRTG(i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @lj_ir_kint(i32* %35, i32 %37)
  %39 = call i32 @emitir(i32 %33, i32 %34, i32 %38)
  %40 = load i64, i64* %7, align 8
  ret i64 %40
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @tref_iscdata(i32) #1

declare dso_local i64 @cdataptr(%struct.TYPE_4__*) #1

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
