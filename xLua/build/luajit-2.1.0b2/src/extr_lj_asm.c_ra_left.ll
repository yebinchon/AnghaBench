; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_left.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64* }
%struct.TYPE_19__ = type { i64, i64, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, i64)* @ra_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ra_left(%struct.TYPE_20__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.TYPE_19__* @IR(i64 %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @ra_noreg(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @irref_isk(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %18
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IR_KNUM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = call i32* @ir_knum(%struct.TYPE_19__* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @tvispzero(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RSET_FPR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @emit_loadn(%struct.TYPE_20__* %42, i64 %43, i32* %44)
  br label %160

46:                                               ; preds = %34
  br label %94

47:                                               ; preds = %22
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IR_KPRI, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IR_KINT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %83, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IR_KGC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IR_KPTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IR_KKPTR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IR_KNULL, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %77, %71, %65, %59, %53
  %84 = phi i1 [ true, %71 ], [ true, %65 ], [ true, %59 ], [ true, %53 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @lua_assert(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @emit_loadi(%struct.TYPE_20__* %87, i64 %88, i32 %91)
  br label %160

93:                                               ; preds = %47
  br label %94

94:                                               ; preds = %93, %46
  br label %95

95:                                               ; preds = %94, %18
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @ra_hashint(i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @iscrossref(%struct.TYPE_20__* %100, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @ra_sethint(i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %104, %99, %95
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @RID_MAX_GPR, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @RSET_GPR, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @RSET_FPR, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i64 @ra_allocref(%struct.TYPE_20__* %111, i64 %112, i32 %121)
  store i64 %122, i64* %8, align 8
  br label %123

123:                                              ; preds = %120, %3
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @ra_noweak(%struct.TYPE_20__* %124, i64 %125)
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %123
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @irt_isphi(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %130
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @ra_modified(%struct.TYPE_20__* %146, i64 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @ra_rename(%struct.TYPE_20__* %149, i64 %150, i64 %151)
  br label %159

153:                                              ; preds = %136, %130
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @emit_movrr(%struct.TYPE_20__* %154, %struct.TYPE_19__* %155, i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %153, %145
  br label %160

160:                                              ; preds = %41, %83, %159, %123
  ret void
}

declare dso_local %struct.TYPE_19__* @IR(i64) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32* @ir_knum(%struct.TYPE_19__*) #1

declare dso_local i64 @tvispzero(i32*) #1

declare dso_local i32 @emit_loadn(%struct.TYPE_20__*, i64, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @ra_hashint(i64) #1

declare dso_local i32 @iscrossref(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @ra_sethint(i64, i64) #1

declare dso_local i64 @ra_allocref(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @irt_isphi(i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @ra_rename(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @emit_movrr(%struct.TYPE_20__*, %struct.TYPE_19__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
