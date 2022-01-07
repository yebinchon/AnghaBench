; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_objcmp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_objcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRT_INT = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_NUM_INT = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_record_objcmp(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @lj_obj_equal(i32* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @tref_isk2(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @tref_isinteger(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @IRT_INT, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @tref_type(i32 %32)
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i64 [ %30, %29 ], [ %33, %31 ]
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @tref_isinteger(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @IRT_INT, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @tref_type(i32 %42)
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i64 [ %40, %39 ], [ %43, %41 ]
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @IRT_INT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @IRT_NUM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @IR_CONV, align 4
  %59 = call i32 @IRTN(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IRCONV_NUM_INT, align 4
  %62 = call i32 @emitir(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i64, i64* @IRT_NUM, align 8
  store i64 %63, i64* %13, align 8
  br label %80

64:                                               ; preds = %53, %49
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @IRT_NUM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @IRT_INT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @IR_CONV, align 4
  %74 = call i32 @IRTN(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @IRCONV_NUM_INT, align 4
  %77 = call i32 @emitir(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %79

78:                                               ; preds = %68, %64
  store i32 2, i32* %6, align 4
  br label %97

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %57
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @IR_NE, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @IR_EQ, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @IRTG(i32 %89, i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @emitir(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %5
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %78
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @lj_obj_equal(i32*, i32*) #1

declare dso_local i32 @tref_isk2(i32, i32) #1

declare dso_local i64 @tref_isinteger(i32) #1

declare dso_local i64 @tref_type(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i32 @IRTG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
