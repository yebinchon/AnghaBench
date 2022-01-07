; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_rematk.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_rematk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }

@RID_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"remat     $i $r\00", align 1
@IR_KNUM = common dso_local global i64 0, align 8
@REF_BASE = common dso_local global i32 0, align 4
@IR_BASE = common dso_local global i64 0, align 8
@RID_BASE = common dso_local global i32 0, align 4
@jit_base = common dso_local global i32 0, align 4
@ASMREF_L = common dso_local global i32 0, align 4
@IR_KPRI = common dso_local global i64 0, align 8
@cur_L = common dso_local global i32 0, align 4
@IR_KINT = common dso_local global i64 0, align 8
@IR_KGC = common dso_local global i64 0, align 8
@IR_KPTR = common dso_local global i64 0, align 8
@IR_KKPTR = common dso_local global i64 0, align 8
@IR_KNULL = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @ra_rematk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_rematk(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @ra_iskref(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ra_krefreg(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rset_test(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @lua_assert(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ra_free(%struct.TYPE_17__* %23, i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ra_modified(%struct.TYPE_17__* %26, i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ra_krefk(%struct.TYPE_17__* %31, i32 %32)
  %34 = call i32 @emit_loadi(%struct.TYPE_17__* %29, i32 %30, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %166

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_16__* @IR(i32 %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ra_hasreg(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ra_hasspill(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %45, %36
  %53 = phi i1 [ false, %36 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @lua_assert(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ra_free(%struct.TYPE_17__* %56, i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ra_modified(%struct.TYPE_17__* %59, i32 %60)
  %62 = load i32, i32* @RID_INIT, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_17__*
  %70 = call i32 @RA_DBGX(%struct.TYPE_17__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IR_KNUM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = call i32 @ir_knum(%struct.TYPE_16__* %79)
  %81 = call i32 @emit_loadn(%struct.TYPE_17__* %77, i32 %78, i32 %80)
  br label %164

82:                                               ; preds = %52
  %83 = load i32, i32* @REF_BASE, align 4
  %84 = call i64 @emit_canremat(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IR_BASE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RID_BASE, align 4
  %97 = call i32 @ra_sethint(i32 %95, i32 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @jit_base, align 4
  %101 = call i32 @emit_getgl(%struct.TYPE_17__* %98, i32 %99, i32 %100)
  br label %163

102:                                              ; preds = %86, %82
  %103 = load i32, i32* @ASMREF_L, align 4
  %104 = call i64 @emit_canremat(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IR_KPRI, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @irt_isnil(i32 %115)
  %117 = call i32 @lua_assert(i32 %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @cur_L, align 4
  %121 = call i32 @emit_getgl(%struct.TYPE_17__* %118, i32 %119, i32 %120)
  br label %162

122:                                              ; preds = %106, %102
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IR_KINT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %152, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IR_KGC, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %152, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IR_KPTR, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IR_KKPTR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IR_KNULL, align 8
  %151 = icmp eq i64 %149, %150
  br label %152

152:                                              ; preds = %146, %140, %134, %128, %122
  %153 = phi i1 [ true, %140 ], [ true, %134 ], [ true, %128 ], [ true, %122 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @lua_assert(i32 %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @emit_loadi(%struct.TYPE_17__* %156, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %152, %112
  br label %163

163:                                              ; preds = %162, %92
  br label %164

164:                                              ; preds = %163, %76
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %11
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @ra_iskref(i32) #1

declare dso_local i32 @ra_krefreg(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @rset_test(i32, i32) #1

declare dso_local i32 @ra_free(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ra_krefk(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_hasspill(i32) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_17__*) #1

declare dso_local i32 @emit_loadn(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ir_knum(%struct.TYPE_16__*) #1

declare dso_local i64 @emit_canremat(i32) #1

declare dso_local i32 @ra_sethint(i32, i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @irt_isnil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
