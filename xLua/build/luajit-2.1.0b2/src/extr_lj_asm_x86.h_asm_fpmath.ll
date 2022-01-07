; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fpmath.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fpmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }

@IRFPM_SQRT = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@XO_SQRTSD = common dso_local global i32 0, align 4
@IRFPM_TRUNC = common dso_local global i64 0, align 8
@JIT_F_SSE4_1 = common dso_local global i32 0, align 4
@XO_ROUNDSD = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@RID_XMM0 = common dso_local global i32 0, align 4
@RID_XMM3 = common dso_local global i64 0, align 8
@RID_EAX = common dso_local global i32 0, align 4
@IRFPM_FLOOR = common dso_local global i64 0, align 8
@lj_vm_floor_sse = common dso_local global i32 0, align 4
@IRFPM_CEIL = common dso_local global i64 0, align 8
@lj_vm_ceil_sse = common dso_local global i32 0, align 4
@lj_vm_trunc_sse = common dso_local global i32 0, align 4
@IRFPM_EXP2 = common dso_local global i64 0, align 8
@IRCALL_lj_vm_floor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @asm_fpmath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fpmath(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @IRFPM_SQRT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = load i32, i32* @RSET_FPR, align 4
  %22 = call i32 @ra_dest(%struct.TYPE_20__* %19, %struct.TYPE_19__* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RSET_FPR, align 4
  %28 = call i32 @asm_fuseload(%struct.TYPE_20__* %23, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = load i32, i32* @XO_SQRTSD, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @emit_mrm(%struct.TYPE_20__* %29, i32 %30, i32 %31, i32 %32)
  br label %167

34:                                               ; preds = %2
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IRFPM_TRUNC, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %34
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @JIT_F_SSE4_1, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %38
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = load i32, i32* @RSET_FPR, align 4
  %49 = call i32 @ra_dest(%struct.TYPE_20__* %46, %struct.TYPE_19__* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RSET_FPR, align 4
  %55 = call i32 @asm_fuseload(%struct.TYPE_20__* %50, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 9, %57
  %59 = call i32 @emit_i8(%struct.TYPE_20__* %56, i64 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = load i32, i32* @XO_ROUNDSD, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @emit_mrm(%struct.TYPE_20__* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* @LJ_64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %45
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @XO_ROUNDSD, align 4
  %74 = ashr i32 %73, 16
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %67
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 15, i32* %89, align 4
  br label %90

90:                                               ; preds = %76, %67, %45
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 -1
  store i32* %94, i32** %92, align 8
  store i32 102, i32* %94, align 4
  br label %147

95:                                               ; preds = %38
  %96 = load i32, i32* @RID_XMM0, align 4
  %97 = load i64, i64* @RID_XMM3, align 8
  %98 = add nsw i64 %97, 1
  %99 = call i32 @RSET_RANGE(i32 %96, i64 %98)
  %100 = load i32, i32* @RID_EAX, align 4
  %101 = call i32 @RID2RSET(i32 %100)
  %102 = or i32 %99, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ra_hasreg(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rset_clear(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %95
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ra_evictset(%struct.TYPE_20__* %115, i32 %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = load i32, i32* @RID_XMM0, align 4
  %121 = call i32 @ra_destreg(%struct.TYPE_20__* %118, %struct.TYPE_19__* %119, i32 %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @IRFPM_FLOOR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* @lj_vm_floor_sse, align 4
  br label %138

128:                                              ; preds = %114
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @IRFPM_CEIL, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @lj_vm_ceil_sse, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @lj_vm_trunc_sse, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  br label %138

138:                                              ; preds = %136, %126
  %139 = phi i32 [ %127, %126 ], [ %137, %136 ]
  %140 = call i32 @emit_call(%struct.TYPE_20__* %122, i32 %139)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = load i32, i32* @RID_XMM0, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ra_left(%struct.TYPE_20__* %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %138, %90
  br label %166

148:                                              ; preds = %34
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @IRFPM_EXP2, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = call i64 @asm_fpjoin_pow(%struct.TYPE_20__* %153, %struct.TYPE_19__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %165

158:                                              ; preds = %152, %148
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %161 = load i64, i64* @IRCALL_lj_vm_floor, align 8
  %162 = load i64, i64* %5, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @asm_callid(%struct.TYPE_20__* %159, %struct.TYPE_19__* %160, i64 %163)
  br label %165

165:                                              ; preds = %158, %157
  br label %166

166:                                              ; preds = %165, %147
  br label %167

167:                                              ; preds = %166, %18
  ret void
}

declare dso_local i32 @ra_dest(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @asm_fuseload(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @RSET_RANGE(i32, i64) #1

declare dso_local i32 @RID2RSET(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @ra_evictset(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ra_destreg(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit_call(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ra_left(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @asm_fpjoin_pow(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @asm_callid(%struct.TYPE_20__*, %struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
