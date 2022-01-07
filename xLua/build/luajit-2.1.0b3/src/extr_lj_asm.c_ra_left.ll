; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_left.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64* }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }

@IR_KNUM = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@IR_KPRI = common dso_local global i64 0, align 8
@IR_KINT = common dso_local global i64 0, align 8
@IR_KGC = common dso_local global i64 0, align 8
@IR_KPTR = common dso_local global i64 0, align 8
@IR_KKPTR = common dso_local global i64 0, align 8
@IR_KNULL = common dso_local global i64 0, align 8
@RID_MAX_GPR = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@IR_KINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64, i64)* @ra_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ra_left(%struct.TYPE_17__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call %struct.TYPE_16__* @IR(i64 %9)
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @ra_noreg(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %121

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @irref_isk(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IR_KNUM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = call i32 @ir_knum(%struct.TYPE_16__* %28)
  %30 = call i64 @tvispzero(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RSET_FPR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = call i32 @emit_loadk64(%struct.TYPE_17__* %40, i64 %41, %struct.TYPE_16__* %42)
  br label %158

44:                                               ; preds = %32
  br label %92

45:                                               ; preds = %21
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IR_KPRI, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IR_KINT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IR_KGC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IR_KPTR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IR_KKPTR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IR_KNULL, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %75, %69, %63, %57, %51
  %82 = phi i1 [ true, %69 ], [ true, %63 ], [ true, %57 ], [ true, %51 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @lua_assert(i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @emit_loadi(%struct.TYPE_17__* %85, i64 %86, i32 %89)
  br label %158

91:                                               ; preds = %45
  br label %92

92:                                               ; preds = %91, %44
  br label %93

93:                                               ; preds = %92, %17
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @ra_hashint(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @iscrossref(%struct.TYPE_17__* %98, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @ra_sethint(i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %102, %97, %93
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @RID_MAX_GPR, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @RSET_GPR, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @RSET_FPR, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i64 @ra_allocref(%struct.TYPE_17__* %109, i64 %110, i32 %119)
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %118, %3
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @ra_noweak(%struct.TYPE_17__* %122, i64 %123)
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %121
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @irt_isphi(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @ra_modified(%struct.TYPE_17__* %144, i64 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @ra_rename(%struct.TYPE_17__* %147, i64 %148, i64 %149)
  br label %157

151:                                              ; preds = %134, %128
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @emit_movrr(%struct.TYPE_17__* %152, %struct.TYPE_16__* %153, i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %151, %143
  br label %158

158:                                              ; preds = %39, %81, %157, %121
  ret void
}

declare dso_local %struct.TYPE_16__* @IR(i64) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @tvispzero(i32) #1

declare dso_local i32 @ir_knum(%struct.TYPE_16__*) #1

declare dso_local i32 @emit_loadk64(%struct.TYPE_17__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @ra_hashint(i64) #1

declare dso_local i32 @iscrossref(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ra_sethint(i64, i64) #1

declare dso_local i64 @ra_allocref(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @irt_isphi(i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ra_rename(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @emit_movrr(%struct.TYPE_17__*, %struct.TYPE_16__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
