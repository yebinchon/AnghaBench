; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_ahuvload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_ahuvload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

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
@REX_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*)* @asm_ahuvload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_ahuvload(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @irt_isnum(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @irt_ispri(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @irt_isaddr(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @LJ_DUALNUM, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @irt_isint(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %18, %12, %2
  %36 = phi i1 [ true, %18 ], [ true, %12 ], [ true, %2 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i64 @ra_used(%struct.TYPE_17__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %35
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @irt_isnum(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @RSET_FPR, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @RSET_GPR, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ra_dest(%struct.TYPE_18__* %54, %struct.TYPE_17__* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RSET_GPR, align 4
  %63 = call i32 @asm_fuseahuref(%struct.TYPE_18__* %58, i32 %61, i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RID_MAX_GPR, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @XO_MOV, align 4
  br label %72

70:                                               ; preds = %52
  %71 = load i32, i32* @XO_MOVSD, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @RID_MRM, align 4
  %76 = call i32 @emit_mrm(%struct.TYPE_18__* %64, i32 %73, i32 %74, i32 %75)
  br label %84

77:                                               ; preds = %35
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RSET_GPR, align 4
  %83 = call i32 @asm_fuseahuref(%struct.TYPE_18__* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @irt_isnum(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @CC_AE, align 4
  br label %100

98:                                               ; preds = %84
  %99 = load i32, i32* @CC_NE, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @asm_guardcc(%struct.TYPE_18__* %90, i32 %101)
  %103 = load i64, i64* @LJ_64, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %136

105:                                              ; preds = %100
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @irt_type(i32 %108)
  %110 = load i64, i64* @IRT_NUM, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %105
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @irt_isinteger(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @irt_isnum(i32 %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %118, %112
  %125 = phi i1 [ true, %112 ], [ %123, %118 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @lua_assert(i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = load i32, i32* @LJ_TISNUM, align 4
  %130 = call i32 @emit_u32(%struct.TYPE_18__* %128, i32 %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = load i32, i32* @XO_ARITHi, align 4
  %133 = load i32, i32* @XOg_CMP, align 4
  %134 = load i32, i32* @RID_MRM, align 4
  %135 = call i32 @emit_mrm(%struct.TYPE_18__* %131, i32 %132, i32 %133, i32 %134)
  br label %148

136:                                              ; preds = %105, %100
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @irt_toitype(i32 %140)
  %142 = call i32 @emit_i8(%struct.TYPE_18__* %137, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %144 = load i32, i32* @XO_ARITHi8, align 4
  %145 = load i32, i32* @XOg_CMP, align 4
  %146 = load i32, i32* @RID_MRM, align 4
  %147 = call i32 @emit_mrm(%struct.TYPE_18__* %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %136, %124
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @ra_used(%struct.TYPE_17__*) #1

declare dso_local i32 @ra_dest(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @asm_fuseahuref(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @asm_guardcc(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @irt_type(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @emit_u32(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @irt_toitype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
