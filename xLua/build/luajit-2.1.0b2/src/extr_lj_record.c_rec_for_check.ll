; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_for_check.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_for_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@IRT_INT = common dso_local global i64 0, align 8
@IR_GE = common dso_local global i32 0, align 4
@IR_LT = common dso_local global i32 0, align 4
@IR_LE = common dso_local global i32 0, align 4
@IR_ADDOV = common dso_local global i32 0, align 4
@IR_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i32, i32)* @rec_for_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_for_check(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @tref_isk(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %102, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @IRT_INT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @lj_ir_kint(i32* %25, i64 0)
  br label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @lj_ir_knum_zero(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @IR_GE, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @IR_LT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @IRTG(i32 %39, i64 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @emitir(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @IRT_INT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @tref_isk(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @tref_ref(i32 %56)
  %58 = call %struct.TYPE_2__* @IR(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load i64, i64* %14, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @IR_LE, align 4
  %68 = call i32 @IRTGI(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %14, align 8
  %72 = sub nsw i64 2147483647, %71
  %73 = call i32 @lj_ir_kint(i32* %70, i64 %72)
  %74 = call i32 @emitir(i32 %68, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %63
  br label %89

76:                                               ; preds = %55
  %77 = load i64, i64* %14, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* @IR_GE, align 4
  %81 = call i32 @IRTGI(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* %14, align 8
  %85 = sub nsw i64 2147483648, %84
  %86 = call i32 @lj_ir_kint(i32* %83, i64 %85)
  %87 = call i32 @emitir(i32 %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %75
  br label %100

90:                                               ; preds = %51
  %91 = load i32, i32* @IR_ADDOV, align 4
  %92 = call i32 @IRTGI(i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @emitir(i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @IR_USE, align 4
  %97 = call i32 @IRTI(i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @emitir(i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %90, %89
  br label %101

101:                                              ; preds = %100, %47, %38
  br label %141

102:                                              ; preds = %6
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %102
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @IRT_INT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @tref_isk(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %140, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @tref_ref(i32 %114)
  %116 = call %struct.TYPE_2__* @IR(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %16, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 2147483647, i32 -2147483648
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %16, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %16, align 8
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i32, i32* @IR_LE, align 4
  br label %132

130:                                              ; preds = %113
  %131 = load i32, i32* @IR_GE, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = call i32 @IRTGI(i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @lj_ir_kint(i32* %136, i64 %137)
  %139 = call i32 @emitir(i32 %134, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %132, %109, %105, %102
  br label %141

141:                                              ; preds = %140, %101
  ret void
}

declare dso_local i64 @tref_isk(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i64) #1

declare dso_local i32 @lj_ir_knum_zero(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i64) #1

declare dso_local %struct.TYPE_2__* @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @IRTI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
