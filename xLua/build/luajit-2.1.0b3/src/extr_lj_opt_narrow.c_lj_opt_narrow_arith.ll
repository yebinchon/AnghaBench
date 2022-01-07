; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_arith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IR_ADD = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i64 0, align 8
@IR_MUL = common dso_local global i64 0, align 8
@IR_SUB = common dso_local global i64 0, align 8
@IR_ADDOV = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_opt_narrow_arith(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @conv_str_tonum(i32* %14, i32 %15, i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @conv_str_tonum(i32* %18, i32 %19, i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @IR_ADD, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %6
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @LJ_DUALNUM, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @IR_MUL, align 8
  br label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @IR_SUB, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = icmp sle i64 %26, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @tref_isinteger(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @tref_isinteger(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @numberVnum(i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @numberVnum(i32* %47)
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* @IR_ADD, align 8
  %52 = trunc i64 %51 to i32
  %53 = sub nsw i32 %50, %52
  %54 = call i32 @lj_vm_foldarith(i32 %46, i32 %48, i32 %53)
  %55 = call i64 @numisint(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @IR_ADD, align 8
  %61 = trunc i64 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = load i64, i64* @IR_ADDOV, align 8
  %64 = trunc i64 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = call i32 @IRTGI(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @emitir(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %96

70:                                               ; preds = %44, %40, %36, %33, %6
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @tref_isnum(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @IR_CONV, align 8
  %76 = call i32 @IRTN(i64 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @IRCONV_NUM_INT, align 4
  %79 = call i32 @emitir(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @tref_isnum(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* @IR_CONV, align 8
  %86 = call i32 @IRTN(i64 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @IRCONV_NUM_INT, align 4
  %89 = call i32 @emitir(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @IRTN(i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @emitir(i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %57
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @conv_str_tonum(i32*, i32, i32*) #1

declare dso_local i64 @tref_isinteger(i32) #1

declare dso_local i64 @numisint(i32) #1

declare dso_local i32 @lj_vm_foldarith(i32, i32, i32) #1

declare dso_local i32 @numberVnum(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @tref_isnum(i32) #1

declare dso_local i32 @IRTN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
