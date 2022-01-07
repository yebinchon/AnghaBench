; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_tail_link.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_tail_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32* }

@REF_BASE = common dso_local global i32 0, align 4
@RID_BASE = common dso_local global i32 0, align 4
@BC_JLOOP = common dso_local global i32 0, align 4
@RID_DISPATCH = common dso_local global i32 0, align 4
@RID_LPC = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@BC_FUNCF = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i32 0, align 4
@jit_base = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @asm_tail_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tail_link(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i64 %21
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %5, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = call i64 @asm_baseslot(%struct.TYPE_20__* %23, %struct.TYPE_19__* %24, i32* %5)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = call i32 @checkmclim(%struct.TYPE_20__* %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = load i32, i32* @REF_BASE, align 4
  %35 = load i32, i32* @RID_BASE, align 4
  %36 = call i32 @RID2RSET(i32 %35)
  %37 = call i32 @ra_allocref(%struct.TYPE_20__* %33, i32 %34, i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %153

44:                                               ; preds = %1
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @snap_pc(i32 %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bc_op(i32 %61)
  %63 = load i32, i32* @BC_JLOOP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %44
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @bc_d(i32 %70)
  %72 = call %struct.TYPE_21__* @traceref(i32 %68, i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bc_op(i32 %75)
  %77 = call i64 @bc_isret(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32*, i32** %9, align 8
  store i32* %80, i32** %7, align 8
  br label %81

81:                                               ; preds = %79, %65
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_17__* @J2GG(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @i32ptr(i32* %89)
  %91 = load i32, i32* @RID_DISPATCH, align 4
  %92 = call i32 @ra_allockreg(%struct.TYPE_20__* %83, i32 %90, i32 %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @i32ptr(i32* %94)
  %96 = load i32, i32* @RID_LPC, align 4
  %97 = call i32 @ra_allockreg(%struct.TYPE_20__* %93, i32 %95, i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bc_op(i32 %105)
  switch i32 %106, label %140 [
    i32 131, label %107
    i32 130, label %107
    i32 129, label %122
    i32 128, label %133
  ]

107:                                              ; preds = %82, %82
  %108 = load i32, i32* @LJ_FR2, align 4
  %109 = add nsw i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @bc_a(i32 %112)
  %114 = add nsw i64 %110, %113
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @bc_c(i32 %116)
  %118 = add nsw i64 %114, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %148

122:                                              ; preds = %82
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @bc_a(i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @bc_d(i32 %127)
  %129 = add nsw i64 %125, %128
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %148

133:                                              ; preds = %82
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @bc_a(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %148

140:                                              ; preds = %82
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bc_op(i32 %142)
  %144 = load i32, i32* @BC_FUNCF, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %146, %140
  br label %148

148:                                              ; preds = %147, %133, %122, %107
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @RID_RET, align 4
  %152 = call i32 @ra_allockreg(%struct.TYPE_20__* %149, i32 %150, i32 %151)
  br label %162

153:                                              ; preds = %1
  %154 = load i64, i64* %6, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %158 = load i32, i32* @RID_BASE, align 4
  %159 = load i32, i32* @jit_base, align 4
  %160 = call i32 @emit_setgl(%struct.TYPE_20__* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  br label %162

162:                                              ; preds = %161, %148
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %164 = load i32, i32* @RID_BASE, align 4
  %165 = load i64, i64* %6, align 8
  %166 = trunc i64 %165 to i32
  %167 = mul nsw i32 8, %166
  %168 = call i32 @emit_addptr(%struct.TYPE_20__* %163, i32 %164, i32 %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %171 = call i32 @asm_stack_restore(%struct.TYPE_20__* %169, %struct.TYPE_19__* %170)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %191, label %176

176:                                              ; preds = %162
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @RSET_GPR, align 4
  %188 = and i32 %186, %187
  %189 = load i64, i64* %3, align 8
  %190 = call i32 @asm_stack_check(%struct.TYPE_20__* %180, i32 %183, i32* null, i32 %188, i64 %189)
  br label %191

191:                                              ; preds = %179, %176, %162
  ret void
}

declare dso_local i64 @asm_baseslot(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @checkmclim(%struct.TYPE_20__*) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @RID2RSET(i32) #1

declare dso_local i32* @snap_pc(i32) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local %struct.TYPE_21__* @traceref(i32, i64) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i64 @bc_isret(i32) #1

declare dso_local i32 @ra_allockreg(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @i32ptr(i32*) #1

declare dso_local %struct.TYPE_17__* @J2GG(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @bc_c(i32) #1

declare dso_local i32 @emit_setgl(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @emit_addptr(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @asm_stack_restore(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @asm_stack_check(%struct.TYPE_20__*, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
