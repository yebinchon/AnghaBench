; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ffrecord.c_lj_ffrecord_select_mode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ffrecord.c_lj_ffrecord_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IR_EQ = common dso_local global i32 0, align 4
@IRT_STR = common dso_local global i32 0, align 4
@IR_STRREF = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IR_XLOAD = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRXLOAD_READONLY = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lj_ffrecord_select_mode(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @tref_isstr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i8* @strVdata(i32* %15)
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %20, label %58

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_3__* @strV(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* @IR_EQ, align 4
  %28 = load i32, i32* @IRT_STR, align 4
  %29 = call i32 @IRTG(i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.TYPE_3__* @strV(i32* %32)
  %34 = call i32 @lj_ir_kstr(i32* %31, %struct.TYPE_3__* %33)
  %35 = call i32 @emitir(i32 %29, i32 %30, i32 %34)
  br label %57

36:                                               ; preds = %20
  %37 = load i32, i32* @IR_STRREF, align 4
  %38 = load i32, i32* @IRT_PGC, align 4
  %39 = call i32 @IRT(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lj_ir_kint(i32* %41, i8 signext 0)
  %43 = call i32 @emitir(i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @IR_XLOAD, align 4
  %45 = load i32, i32* @IRT_U8, align 4
  %46 = call i32 @IRT(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IRXLOAD_READONLY, align 4
  %49 = call i32 @emitir(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @IR_EQ, align 4
  %51 = load i32, i32* @IRT_INT, align 4
  %52 = call i32 @IRTG(i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @lj_ir_kint(i32* %54, i8 signext 35)
  %56 = call i32 @emitir(i32 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %36, %26
  store i64 0, i64* %4, align 8
  br label %70

58:                                               ; preds = %14, %3
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @argv2int(i32* %59, i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %67 = call i32 @lj_trace_err(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %57
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i8* @strVdata(i32*) #1

declare dso_local %struct.TYPE_3__* @strV(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kstr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i8 signext) #1

declare dso_local i64 @argv2int(i32*, i32*) #1

declare dso_local i32 @lj_trace_err(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
