; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_comp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@OPR_EQ = common dso_local global i64 0, align 8
@OPR_NE = common dso_local global i64 0, align 8
@BC_ISEQV = common dso_local global i64 0, align 8
@BC_ISNEV = common dso_local global i64 0, align 8
@BC_ISEQP = common dso_local global i64 0, align 8
@BC_ISEQS = common dso_local global i64 0, align 8
@BC_ISEQN = common dso_local global i64 0, align 8
@OPR_LT = common dso_local global i64 0, align 8
@BC_ISLT = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i32 0, align 4
@VJMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i64, %struct.TYPE_23__*, %struct.TYPE_23__*)* @bcemit_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_comp(%struct.TYPE_22__* %0, i64 %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %8, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %9, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = call i32 @expr_toval(%struct.TYPE_22__* %17, %struct.TYPE_23__* %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @OPR_EQ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @OPR_NE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %93

27:                                               ; preds = %23, %4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @OPR_EQ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @BC_ISEQV, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @BC_ISNEV, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = call i64 @expr_isk(%struct.TYPE_23__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %7, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = call i32 @expr_toanyreg(%struct.TYPE_22__* %44, %struct.TYPE_23__* %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = call i32 @expr_toval(%struct.TYPE_22__* %47, %struct.TYPE_23__* %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %85 [
    i32 131, label %53
    i32 132, label %53
    i32 128, label %53
    i32 129, label %63
    i32 130, label %74
  ]

53:                                               ; preds = %43, %43, %43
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @BC_ISEQP, align 8
  %56 = load i64, i64* @BC_ISEQV, align 8
  %57 = sub nsw i64 %55, %56
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %61 = call i32 @const_pri(%struct.TYPE_23__* %60)
  %62 = call i32 @BCINS_AD(i64 %58, i32 %59, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %92

63:                                               ; preds = %43
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @BC_ISEQS, align 8
  %66 = load i64, i64* @BC_ISEQV, align 8
  %67 = sub nsw i64 %65, %66
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = call i32 @const_str(%struct.TYPE_22__* %70, %struct.TYPE_23__* %71)
  %73 = call i32 @BCINS_AD(i64 %68, i32 %69, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %92

74:                                               ; preds = %43
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @BC_ISEQN, align 8
  %77 = load i64, i64* @BC_ISEQV, align 8
  %78 = sub nsw i64 %76, %77
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = call i32 @const_num(%struct.TYPE_22__* %81, %struct.TYPE_23__* %82)
  %84 = call i32 @BCINS_AD(i64 %79, i32 %80, i32 %83)
  store i32 %84, i32* %10, align 4
  br label %92

85:                                               ; preds = %43
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = call i32 @expr_toanyreg(%struct.TYPE_22__* %88, %struct.TYPE_23__* %89)
  %91 = call i32 @BCINS_AD(i64 %86, i32 %87, i32 %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %85, %74, %63, %53
  br label %127

93:                                               ; preds = %23
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @OPR_LT, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i64, i64* @BC_ISLT, align 8
  %98 = add nsw i64 %96, %97
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @BC_ISLT, align 8
  %101 = sub nsw i64 %99, %100
  %102 = and i64 %101, 1
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %93
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %105, %struct.TYPE_23__** %7, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @BC_ISLT, align 8
  %109 = sub nsw i64 %107, %108
  %110 = xor i64 %109, 3
  %111 = load i64, i64* @BC_ISLT, align 8
  %112 = add nsw i64 %110, %111
  store i64 %112, i64* %13, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = call i32 @expr_toval(%struct.TYPE_22__* %113, %struct.TYPE_23__* %114)
  br label %116

116:                                              ; preds = %104, %93
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %119 = call i32 @expr_toanyreg(%struct.TYPE_22__* %117, %struct.TYPE_23__* %118)
  store i32 %119, i32* %15, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = call i32 @expr_toanyreg(%struct.TYPE_22__* %120, %struct.TYPE_23__* %121)
  store i32 %122, i32* %14, align 4
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @BCINS_AD(i64 %123, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %116, %92
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VNONRELOC, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %133
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %143, %133, %127
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @VNONRELOC, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp sge i64 %159, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %164, %154, %148
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @bcemit_INS(%struct.TYPE_22__* %170, i32 %171)
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %174 = call i64 @bcemit_jmp(%struct.TYPE_22__* %173)
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  store i64 %174, i64* %178, align 8
  %179 = load i32, i32* @VJMP, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  ret void
}

declare dso_local i32 @expr_toval(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @expr_isk(%struct.TYPE_23__*) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @BCINS_AD(i64, i32, i32) #1

declare dso_local i32 @const_pri(%struct.TYPE_23__*) #1

declare dso_local i32 @const_str(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @const_num(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @bcemit_jmp(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
