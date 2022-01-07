; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_allocref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_allocref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32* }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"hintmiss  $f $r\00", align 1
@RID_NUM_GPR = common dso_local global i32 0, align 4
@RSET_SCRATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"alloc     $f $r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64, i32)* @ra_allocref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ra_allocref(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.TYPE_9__* @IR(i64 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ra_noreg(i64 %19)
  %21 = call i32 @lua_assert(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %119

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ra_hashint(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ra_gethint(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @rset_test(i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %124

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @rset_test(i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regcost_ref(i32 %51)
  %53 = call i64 @emit_canremat(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regcost_ref(i32 %62)
  %64 = call i32 @ra_rematk(%struct.TYPE_10__* %56, i32 %63)
  br label %124

65:                                               ; preds = %45, %40
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_10__*
  %70 = call i32 @RA_DBGX(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %65, %24
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @irt_isphi(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %91, %83
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @rset_pickbot(i32 %99)
  store i64 %100, i64* %9, align 8
  br label %118

101:                                              ; preds = %77, %71
  %102 = load i32, i32* @RID_NUM_GPR, align 4
  %103 = icmp sgt i32 %102, 8
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @RSET_SCRATCH, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @RSET_SCRATCH, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %110, %104, %101
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @rset_picktop(i32 %116)
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %115, %98
  br label %123

119:                                              ; preds = %3
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @ra_evict(%struct.TYPE_10__* %120, i32 %121)
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %119, %118
  br label %124

124:                                              ; preds = %123, %55, %39
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %9, align 8
  %128 = inttoptr i64 %127 to %struct.TYPE_10__*
  %129 = call i32 @RA_DBGX(%struct.TYPE_10__* %128)
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @rset_clear(i32 %135, i64 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @ra_noweak(%struct.TYPE_10__* %138, i64 %139)
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @irt_t(i32 %144)
  %146 = call i32 @REGCOST_REF_T(i64 %141, i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i64, i64* %9, align 8
  ret i64 %152
}

declare dso_local %struct.TYPE_9__* @IR(i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ra_noreg(i64) #1

declare dso_local i64 @ra_hashint(i64) #1

declare dso_local i64 @ra_gethint(i64) #1

declare dso_local i64 @rset_test(i32, i64) #1

declare dso_local i64 @emit_canremat(i32) #1

declare dso_local i32 @regcost_ref(i32) #1

declare dso_local i32 @ra_rematk(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_10__*) #1

declare dso_local i32 @irt_isphi(i32) #1

declare dso_local i64 @rset_pickbot(i32) #1

declare dso_local i64 @rset_picktop(i32) #1

declare dso_local i64 @ra_evict(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rset_clear(i32, i64) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @REGCOST_REF_T(i64, i32) #1

declare dso_local i32 @irt_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
