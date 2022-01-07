; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_return.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@PROTO_HAS_RETURN = common dso_local global i32 0, align 4
@BC_RET0 = common dso_local global i64 0, align 8
@VCALL = common dso_local global i64 0, align 8
@BC_VARG = common dso_local global i64 0, align 8
@BC_CALL = common dso_local global i64 0, align 8
@BC_CALLT = common dso_local global i64 0, align 8
@BC_RET1 = common dso_local global i64 0, align 8
@BC_RETM = common dso_local global i64 0, align 8
@BC_RET = common dso_local global i64 0, align 8
@PROTO_CHILD = common dso_local global i32 0, align 4
@BC_UCLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @parse_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_return(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %12 = call i32 @lj_lex_next(%struct.TYPE_20__* %11)
  %13 = load i32, i32* @PROTO_HAS_RETURN, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = call i64 @parse_isend(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 59
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %1
  %30 = load i64, i64* @BC_RET0, align 8
  %31 = call i32 @BCINS_AD(i64 %30, i32 0, i32 1)
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %23
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = call i32 @expr_list(%struct.TYPE_20__* %33, %struct.TYPE_22__* %5)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VCALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = call i32* @bcptr(%struct.TYPE_21__* %43, %struct.TYPE_22__* %5)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @bc_op(i32 %46)
  %48 = load i64, i64* @BC_VARG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %82

51:                                               ; preds = %42
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @bc_op(i32 %57)
  %59 = load i64, i64* @BC_CALL, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i64, i64* @BC_CALLT, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bc_a(i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bc_c(i32 %67)
  %69 = call i32 @BCINS_AD(i64 %62, i32 %65, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %37
  %71 = load i64, i64* @BC_RET1, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = call i32 @expr_toanyreg(%struct.TYPE_21__* %72, %struct.TYPE_22__* %5)
  %74 = call i32 @BCINS_AD(i64 %71, i32 %73, i32 2)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %51
  br label %110

76:                                               ; preds = %32
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VCALL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = call i32* @bcptr(%struct.TYPE_21__* %83, %struct.TYPE_22__* %5)
  %85 = call i32 @setbc_b(i32* %84, i32 0)
  %86 = load i64, i64* @BC_RETM, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = call i32 @BCINS_AD(i64 %86, i32 %89, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %109

99:                                               ; preds = %76
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = call i32 @expr_tonextreg(%struct.TYPE_21__* %100, %struct.TYPE_22__* %5)
  %102 = load i64, i64* @BC_RET, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i32 @BCINS_AD(i64 %102, i32 %105, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %99, %82
  br label %110

110:                                              ; preds = %109, %75
  br label %111

111:                                              ; preds = %110, %29
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PROTO_CHILD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = load i32, i32* @BC_UCLO, align 4
  %121 = call i32 @bcemit_AJ(%struct.TYPE_21__* %119, i32 %120, i32 0, i32 0)
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @bcemit_INS(%struct.TYPE_21__* %123, i32 %124)
  ret void
}

declare dso_local i32 @lj_lex_next(%struct.TYPE_20__*) #1

declare dso_local i64 @parse_isend(i8 signext) #1

declare dso_local i32 @BCINS_AD(i64, i32, i32) #1

declare dso_local i32 @expr_list(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32* @bcptr(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @bc_a(i32) #1

declare dso_local i32 @bc_c(i32) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @setbc_b(i32*, i32) #1

declare dso_local i32 @expr_tonextreg(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bcemit_AJ(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
