; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_arith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IR_STRTO = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i32 0, align 4
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
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @tref_isstr(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = load i32, i32* @IR_STRTO, align 4
  %19 = load i32, i32* @IRT_NUM, align 4
  %20 = call i32 @IRTG(i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @emitir(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @strV(i32* %23)
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @lj_strscan_num(i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %17, %6
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @tref_isstr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* @IR_STRTO, align 4
  %33 = load i32, i32* @IRT_NUM, align 4
  %34 = call i32 @IRTG(i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @emitir(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @strV(i32* %37)
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @lj_strscan_num(i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %31, %27
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @IR_ADD, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @LJ_DUALNUM, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @IR_MUL, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @IR_SUB, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = icmp sle i64 %46, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @tref_isinteger(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @tref_isinteger(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @numberVnum(i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @numberVnum(i32* %67)
  %69 = load i64, i64* %13, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @IR_ADD, align 8
  %72 = trunc i64 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = call i32 @lj_vm_foldarith(i32 %66, i32 %68, i32 %73)
  %75 = call i64 @numisint(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %64
  %78 = load i64, i64* %13, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* @IR_ADD, align 8
  %81 = trunc i64 %80 to i32
  %82 = sub nsw i32 %79, %81
  %83 = load i64, i64* @IR_ADDOV, align 8
  %84 = trunc i64 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = call i32 @IRTGI(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @emitir(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %116

90:                                               ; preds = %64, %60, %56, %53, %41
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @tref_isnum(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* @IR_CONV, align 8
  %96 = call i32 @IRTN(i64 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @IRCONV_NUM_INT, align 4
  %99 = call i32 @emitir(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @tref_isnum(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* @IR_CONV, align 8
  %106 = call i32 @IRTN(i64 %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IRCONV_NUM_INT, align 4
  %109 = call i32 @emitir(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @IRTN(i64 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @emitir(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %110, %77
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_strscan_num(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i64 @tref_isinteger(i32) #1

declare dso_local i64 @numisint(i32) #1

declare dso_local i32 @lj_vm_foldarith(i32, i32, i32) #1

declare dso_local i32 @numberVnum(i32*) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @tref_isnum(i32) #1

declare dso_local i32 @IRTN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
