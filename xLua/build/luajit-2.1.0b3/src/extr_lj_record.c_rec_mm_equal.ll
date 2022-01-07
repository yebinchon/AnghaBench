; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_equal.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@MM_eq = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_TAB = common dso_local global i32 0, align 4
@IRFL_TAB_META = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRFL_UDATA_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @rec_mm_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_mm_equal(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 8
  %24 = call i32 @copyTV(i32 %19, i32* %21, i32* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load i32, i32* @MM_eq, align 4
  %28 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %25, %struct.TYPE_13__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

30:                                               ; preds = %3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = call i32 @copyTV(i32 %36, i32* %9, i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 7
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @tvistab(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %30
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.TYPE_15__* @tabV(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @tabref(i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %45
  %56 = load i32, i32* @IR_FLOAD, align 4
  %57 = load i32, i32* @IRT_TAB, align 4
  %58 = call i32 @IRT(i32 %56, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IRFL_TAB_META, align 4
  %63 = call i32 @emitir(i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @IR_EQ, align 4
  %65 = load i32, i32* @IRT_TAB, align 4
  %66 = call i32 @IRTG(i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @emitir(i32 %66, i32 %67, i32 %70)
  br label %134

72:                                               ; preds = %45, %30
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @tvisudata(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = call %struct.TYPE_14__* @udataV(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @tabref(i32 %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %76
  %87 = load i32, i32* @IR_FLOAD, align 4
  %88 = load i32, i32* @IRT_TAB, align 4
  %89 = call i32 @IRT(i32 %87, i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IRFL_UDATA_META, align 4
  %94 = call i32 @emitir(i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @IR_EQ, align 4
  %96 = load i32, i32* @IRT_TAB, align 4
  %97 = call i32 @IRTG(i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @emitir(i32 %97, i32 %98, i32 %101)
  br label %133

103:                                              ; preds = %76, %72
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @copyTV(i32 %111, i32* %113, i32* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = load i32, i32* @MM_eq, align 4
  %119 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %116, %struct.TYPE_13__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %103
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = call i64 @lj_record_objcmp(%struct.TYPE_12__* %122, i32 %123, i32 %126, i32* %9, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121, %103
  br label %139

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %86
  br label %134

134:                                              ; preds = %133, %55
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @rec_mm_callcomp(%struct.TYPE_12__* %135, %struct.TYPE_13__* %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %134, %3
  ret void
}

declare dso_local i32 @copyTV(i32, i32*, i32*) #1

declare dso_local i64 @lj_record_mm_lookup(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i64 @tabref(i32) #1

declare dso_local %struct.TYPE_15__* @tabV(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i64 @tvisudata(i32*) #1

declare dso_local %struct.TYPE_14__* @udataV(i32*) #1

declare dso_local i64 @lj_record_objcmp(%struct.TYPE_12__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rec_mm_callcomp(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
