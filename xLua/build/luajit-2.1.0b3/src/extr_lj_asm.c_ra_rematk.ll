; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_rematk.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_rematk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @ra_rematk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_rematk(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @ra_iskref(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ra_krefreg(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rset_test(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @lua_assert(i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ra_free(%struct.TYPE_19__* %23, i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ra_modified(%struct.TYPE_19__* %26, i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @ra_krefk(%struct.TYPE_19__* %31, i32 %32)
  %34 = call i32 @emit_loadi(%struct.TYPE_19__* %29, i32 %30, i64 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %165

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_18__* @IR(i32 %37)
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %6, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ra_hasreg(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ra_hasspill(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %45, %36
  %53 = phi i1 [ false, %36 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @lua_assert(i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ra_free(%struct.TYPE_19__* %56, i32 %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ra_modified(%struct.TYPE_19__* %59, i32 %60)
  %62 = load i32, i32* @RID_INIT, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_19__*
  %70 = call i32 @RA_DBGX(%struct.TYPE_19__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IR_KNUM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %52
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = call i32 @emit_loadk64(%struct.TYPE_19__* %77, i32 %78, %struct.TYPE_18__* %79)
  br label %163

81:                                               ; preds = %52
  %82 = load i32, i32* @REF_BASE, align 4
  %83 = call i64 @emit_canremat(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IR_BASE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RID_BASE, align 4
  %96 = call i32 @ra_sethint(i32 %94, i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @jit_base, align 4
  %100 = call i32 @emit_getgl(%struct.TYPE_19__* %97, i32 %98, i32 %99)
  br label %162

101:                                              ; preds = %85, %81
  %102 = load i32, i32* @ASMREF_L, align 4
  %103 = call i64 @emit_canremat(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IR_KPRI, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @irt_isnil(i32 %114)
  %116 = call i32 @lua_assert(i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @cur_L, align 4
  %120 = call i32 @emit_getgl(%struct.TYPE_19__* %117, i32 %118, i32 %119)
  br label %161

121:                                              ; preds = %105, %101
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IR_KINT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %151, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IR_KGC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %151, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IR_KPTR, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IR_KKPTR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IR_KNULL, align 8
  %150 = icmp eq i64 %148, %149
  br label %151

151:                                              ; preds = %145, %139, %133, %127, %121
  %152 = phi i1 [ true, %139 ], [ true, %133 ], [ true, %127 ], [ true, %121 ], [ %150, %145 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @lua_assert(i32 %153)
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @emit_loadi(%struct.TYPE_19__* %155, i32 %156, i64 %159)
  br label %161

161:                                              ; preds = %151, %111
  br label %162

162:                                              ; preds = %161, %91
  br label %163

163:                                              ; preds = %162, %76
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %11
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @ra_iskref(i32) #1

declare dso_local i32 @ra_krefreg(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @rset_test(i32, i32) #1

declare dso_local i32 @ra_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i64 @ra_krefk(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_hasspill(i32) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_19__*) #1

declare dso_local i32 @emit_loadk64(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @emit_canremat(i32) #1

declare dso_local i32 @ra_sethint(i32, i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @irt_isnil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
