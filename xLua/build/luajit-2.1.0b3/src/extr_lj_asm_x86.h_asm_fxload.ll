; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fxload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fxload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i64 0, align 8
@XO_MOVSXb = common dso_local global i32 0, align 4
@XO_MOVZXb = common dso_local global i32 0, align 4
@XO_MOVSXw = common dso_local global i32 0, align 4
@XO_MOVZXw = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@XO_MOVSS = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @asm_fxload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fxload(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @irt_isfp(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @RSET_FPR, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @RSET_GPR, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @ra_dest(i32* %7, %struct.TYPE_5__* %8, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IR_FLOAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i32, i32* @RSET_GPR, align 4
  %30 = call i32 @asm_fusefref(i32* %27, %struct.TYPE_5__* %28, i32 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RSET_GPR, align 4
  %37 = call i32 @asm_fusexref(i32* %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @irt_type(i32 %41)
  switch i32 %42, label %55 [
    i32 131, label %43
    i32 128, label %45
    i32 132, label %47
    i32 129, label %49
    i32 130, label %51
    i32 133, label %53
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* @XO_MOVSXb, align 4
  store i32 %44, i32* %6, align 4
  br label %92

45:                                               ; preds = %38
  %46 = load i32, i32* @XO_MOVZXb, align 4
  store i32 %46, i32* %6, align 4
  br label %92

47:                                               ; preds = %38
  %48 = load i32, i32* @XO_MOVSXw, align 4
  store i32 %48, i32* %6, align 4
  br label %92

49:                                               ; preds = %38
  %50 = load i32, i32* @XO_MOVZXw, align 4
  store i32 %50, i32* %6, align 4
  br label %92

51:                                               ; preds = %38
  %52 = load i32, i32* @XO_MOVSD, align 4
  store i32 %52, i32* %6, align 4
  br label %92

53:                                               ; preds = %38
  %54 = load i32, i32* @XO_MOVSS, align 4
  store i32 %54, i32* %6, align 4
  br label %92

55:                                               ; preds = %38
  %56 = load i32, i32* @LJ_64, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @irt_is64(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @REX_64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %90

68:                                               ; preds = %58, %55
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @irt_isint(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @irt_isu32(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @irt_isaddr(i32 %83)
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %80, %74, %68
  %87 = phi i1 [ true, %74 ], [ true, %68 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @lua_assert(i32 %88)
  br label %90

90:                                               ; preds = %86, %64
  %91 = load i32, i32* @XO_MOV, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %53, %51, %49, %47, %45, %43
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @RID_MRM, align 4
  %97 = call i32 @emit_mrm(i32* %93, i32 %94, i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @ra_dest(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i32 @asm_fusefref(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @asm_fusexref(i32*, i32, i32) #1

declare dso_local i32 @irt_type(i32) #1

declare dso_local i32 @irt_is64(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @irt_isint(i32) #1

declare dso_local i32 @irt_isu32(i32) #1

declare dso_local i32 @irt_isaddr(i32) #1

declare dso_local i32 @emit_mrm(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
