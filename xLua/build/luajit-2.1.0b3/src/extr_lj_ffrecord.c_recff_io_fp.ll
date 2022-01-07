; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ffrecord.c_recff_io_fp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ffrecord.c_recff_io_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32* }

@IR_XLOAD = common dso_local global i32 0, align 4
@IRT_UDATA = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRFL_UDATA_UDTYPE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@UDTYPE_IO_FILE = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i32 0, align 4
@IRFL_UDATA_FILE = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @recff_io_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recff_io_fp(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call %struct.TYPE_13__* @J2G(%struct.TYPE_11__* %14)
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @lj_ir_kptr(%struct.TYPE_11__* %13, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @IR_XLOAD, align 4
  %23 = load i32, i32* @IRT_UDATA, align 4
  %24 = call i32 @IRT(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @emitir(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  br label %54

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @tref_isudata(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %39 = call i32 @lj_trace_err(%struct.TYPE_11__* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* @IR_FLOAD, align 4
  %42 = load i32, i32* @IRT_U8, align 4
  %43 = call i32 @IRT(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IRFL_UDATA_UDTYPE, align 4
  %46 = call i32 @emitir(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @IR_EQ, align 4
  %48 = call i32 @IRTGI(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* @UDTYPE_IO_FILE, align 4
  %52 = call i32 @lj_ir_kint(%struct.TYPE_11__* %50, i32 %51)
  %53 = call i32 @emitir(i32 %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %12
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @IR_FLOAD, align 4
  %58 = load i32, i32* @IRT_PTR, align 4
  %59 = call i32 @IRT(i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IRFL_UDATA_FILE, align 4
  %62 = call i32 @emitir(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @IR_NE, align 4
  %64 = load i32, i32* @IRT_PTR, align 4
  %65 = call i32 @IRTG(i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load i32, i32* @IRT_PTR, align 4
  %69 = call i32 @lj_ir_knull(%struct.TYPE_11__* %67, i32 %68)
  %70 = call i32 @emitir(i32 %65, i32 %66, i32 %69)
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @lj_ir_kptr(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_13__* @J2G(%struct.TYPE_11__*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @tref_isudata(i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_knull(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
