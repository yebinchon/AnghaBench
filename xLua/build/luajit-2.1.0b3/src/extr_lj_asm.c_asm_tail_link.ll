; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_tail_link.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_tail_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32 }

@REF_BASE = common dso_local global i32 0, align 4
@RID_BASE = common dso_local global i32 0, align 4
@BC_JLOOP = common dso_local global i32 0, align 4
@RID_DISPATCH = common dso_local global i32 0, align 4
@RID_LPC = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@BC_FUNCF = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i32 0, align 4
@jit_base = common dso_local global i32 0, align 4
@LJ_GC64 = common dso_local global i64 0, align 8
@IR_KGC = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @asm_tail_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tail_link(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %3, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i64 %21
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %5, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %25 = call i64 @asm_baseslot(%struct.TYPE_25__* %23, %struct.TYPE_24__* %24, i32* %5)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %32 = call i32 @checkmclim(%struct.TYPE_25__* %31)
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %34 = load i32, i32* @REF_BASE, align 4
  %35 = load i32, i32* @RID_BASE, align 4
  %36 = call i32 @RID2RSET(i32 %35)
  %37 = call i32 @ra_allocref(%struct.TYPE_25__* %33, i32 %34, i32 %36)
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %153

44:                                               ; preds = %1
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  %58 = call i32* @snap_pc(i32* %57)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bc_op(i32 %60)
  %62 = load i32, i32* @BC_JLOOP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %44
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @bc_d(i32 %69)
  %71 = call %struct.TYPE_26__* @traceref(%struct.TYPE_27__* %67, i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bc_op(i32 %74)
  %76 = call i64 @bc_isret(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32*, i32** %9, align 8
  store i32* %79, i32** %7, align 8
  br label %80

80:                                               ; preds = %78, %64
  br label %81

81:                                               ; preds = %80, %44
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %84, align 8
  %86 = call %struct.TYPE_21__* @J2GG(%struct.TYPE_27__* %85)
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @i32ptr(i32* %88)
  %90 = load i32, i32* @RID_DISPATCH, align 4
  %91 = call i32 @ra_allockreg(%struct.TYPE_25__* %82, i32 %89, i32 %90)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @i32ptr(i32* %93)
  %95 = load i32, i32* @RID_LPC, align 4
  %96 = call i32 @ra_allockreg(%struct.TYPE_25__* %92, i32 %94, i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i64, i64* @LJ_FR2, align 8
  %103 = sub nsw i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bc_op(i32 %106)
  switch i32 %107, label %140 [
    i32 131, label %108
    i32 130, label %108
    i32 129, label %122
    i32 128, label %133
  ]

108:                                              ; preds = %81, %81
  %109 = load i64, i64* @LJ_FR2, align 8
  %110 = add nsw i64 1, %109
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

122:                                              ; preds = %81
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

133:                                              ; preds = %81
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @bc_a(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %148

140:                                              ; preds = %81
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

148:                                              ; preds = %147, %133, %122, %108
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @RID_RET, align 4
  %152 = call i32 @ra_allockreg(%struct.TYPE_25__* %149, i32 %150, i32 %151)
  br label %162

153:                                              ; preds = %1
  %154 = load i64, i64* %6, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %158 = load i32, i32* @RID_BASE, align 4
  %159 = load i32, i32* @jit_base, align 4
  %160 = call i32 @emit_setgl(%struct.TYPE_25__* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  br label %162

162:                                              ; preds = %161, %148
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %164 = load i32, i32* @RID_BASE, align 4
  %165 = load i64, i64* %6, align 8
  %166 = trunc i64 %165 to i32
  %167 = mul nsw i32 8, %166
  %168 = call i32 @emit_addptr(%struct.TYPE_25__* %163, i32 %164, i32 %167)
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %162
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call %struct.TYPE_23__* @IR(i64 %180)
  %182 = load i64, i64* @LJ_GC64, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @obj2gco(i32 %190)
  %192 = call i32 @setgcref(i32 %185, i32 %191)
  %193 = load i32, i32* @IR_KGC, align 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call %struct.TYPE_23__* @IR(i64 %198)
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  store i32 %193, i32* %200, align 4
  br label %201

201:                                              ; preds = %175, %162
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %204 = call i32 @asm_stack_restore(%struct.TYPE_25__* %202, %struct.TYPE_24__* %203)
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %224, label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %209
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @RSET_GPR, align 4
  %221 = and i32 %219, %220
  %222 = load i64, i64* %3, align 8
  %223 = call i32 @asm_stack_check(%struct.TYPE_25__* %213, i32 %216, i32* null, i32 %221, i64 %222)
  br label %224

224:                                              ; preds = %212, %209, %201
  ret void
}

declare dso_local i64 @asm_baseslot(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @checkmclim(%struct.TYPE_25__*) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @RID2RSET(i32) #1

declare dso_local i32* @snap_pc(i32*) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local %struct.TYPE_26__* @traceref(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i64 @bc_isret(i32) #1

declare dso_local i32 @ra_allockreg(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @i32ptr(i32*) #1

declare dso_local %struct.TYPE_21__* @J2GG(%struct.TYPE_27__*) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @bc_c(i32) #1

declare dso_local i32 @emit_setgl(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @emit_addptr(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local %struct.TYPE_23__* @IR(i64) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @asm_stack_restore(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @asm_stack_check(%struct.TYPE_25__*, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
