; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_ahuvload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_ahuvload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@LJ_DUALNUM = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@RID_MAX_GPR = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@CC_AE = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@LJ_TISNUM = common dso_local global i32 0, align 4
@XO_ARITHi = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@XO_ARITHi8 = common dso_local global i32 0, align 4
@JIT_F_BMI2 = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@VEX_64 = common dso_local global i32 0, align 4
@XI_O16 = common dso_local global i32 0, align 4
@XOg_ROR = common dso_local global i32 0, align 4
@XOg_SAR = common dso_local global i32 0, align 4
@XOg_SHR = common dso_local global i32 0, align 4
@XV_RORX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @asm_ahuvload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_ahuvload(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @irt_isnum(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @irt_ispri(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @irt_isaddr(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @LJ_DUALNUM, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @irt_isint(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %19, %13, %2
  %37 = phi i1 [ true, %19 ], [ true, %13 ], [ true, %2 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @lua_assert(i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = call i64 @ra_used(%struct.TYPE_20__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @irt_isnum(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @RSET_FPR, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @RSET_GPR, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ra_dest(%struct.TYPE_21__* %55, %struct.TYPE_20__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RSET_GPR, align 4
  %64 = call i32 @asm_fuseahuref(%struct.TYPE_21__* %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RID_MAX_GPR, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @XO_MOV, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @XO_MOVSD, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @RID_MRM, align 4
  %77 = call i32 @emit_mrm(%struct.TYPE_21__* %65, i32 %74, i32 %75, i32 %76)
  br label %86

78:                                               ; preds = %36
  %79 = load i32, i32* @RSET_GPR, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @asm_fuseahuref(%struct.TYPE_21__* %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 4
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @irt_isnum(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @CC_AE, align 4
  br label %102

100:                                              ; preds = %86
  %101 = load i32, i32* @CC_NE, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @asm_guardcc(%struct.TYPE_21__* %92, i32 %103)
  %105 = load i64, i64* @LJ_64, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %102
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @irt_type(i32 %110)
  %112 = load i64, i64* @IRT_NUM, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %107
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @irt_isinteger(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @irt_isnum(i32 %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i1 [ true, %114 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @lua_assert(i32 %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = load i32, i32* @LJ_TISNUM, align 4
  %132 = call i32 @emit_u32(%struct.TYPE_21__* %130, i32 %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = load i32, i32* @XO_ARITHi, align 4
  %135 = load i32, i32* @XOg_CMP, align 4
  %136 = load i32, i32* @RID_MRM, align 4
  %137 = call i32 @emit_mrm(%struct.TYPE_21__* %133, i32 %134, i32 %135, i32 %136)
  br label %150

138:                                              ; preds = %107, %102
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @irt_toitype(i32 %142)
  %144 = call i32 @emit_i8(%struct.TYPE_21__* %139, i32 %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = load i32, i32* @XO_ARITHi8, align 4
  %147 = load i32, i32* @XOg_CMP, align 4
  %148 = load i32, i32* @RID_MRM, align 4
  %149 = call i32 @emit_mrm(%struct.TYPE_21__* %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %138, %126
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @ra_used(%struct.TYPE_20__*) #1

declare dso_local i32 @ra_dest(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @asm_fuseahuref(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @asm_guardcc(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @irt_type(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @emit_u32(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @irt_toitype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
