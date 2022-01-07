; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_constructor.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i8 }
%struct.TYPE_21__ = type { i8 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_24__ = type { i64 }
%struct.ConsControl = type { i64, i64, i64, %struct.TYPE_24__, %struct.TYPE_24__* }

@OP_NEWTABLE = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i64 0, align 8
@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*)* @constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructor(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ConsControl, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %11, %struct.TYPE_26__** %5, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = load i32, i32* @OP_NEWTABLE, align 4
  %17 = call i32 @luaK_codeABC(%struct.TYPE_26__* %15, i32 %16, i32 0, i32 0, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 4
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %22, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = load i64, i64* @VRELOCABLE, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @init_exp(%struct.TYPE_24__* %23, i64 %24, i32 %25)
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %28 = load i64, i64* @VVOID, align 8
  %29 = call i32 @init_exp(%struct.TYPE_24__* %27, i64 %28, i32 0)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = call i32 @luaK_exp2nextreg(%struct.TYPE_26__* %32, %struct.TYPE_24__* %33)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = call i32 @checknext(%struct.TYPE_25__* %35, i8 signext 123)
  br label %37

37:                                               ; preds = %97, %2
  %38 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VVOID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i1 [ true, %37 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @lua_assert(i32 %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 125
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %99

58:                                               ; preds = %47
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = call i32 @closelistfield(%struct.TYPE_26__* %59, %struct.ConsControl* %8)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %85 [
    i32 128, label %66
    i32 91, label %82
  ]

66:                                               ; preds = %58
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = call i32 @luaX_lookahead(%struct.TYPE_25__* %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 4
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 61
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %77 = call i32 @listfield(%struct.TYPE_25__* %76, %struct.ConsControl* %8)
  br label %81

78:                                               ; preds = %66
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %80 = call i32 @recfield(%struct.TYPE_25__* %79, %struct.ConsControl* %8)
  br label %81

81:                                               ; preds = %78, %75
  br label %88

82:                                               ; preds = %58
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = call i32 @recfield(%struct.TYPE_25__* %83, %struct.ConsControl* %8)
  br label %88

85:                                               ; preds = %58
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = call i32 @listfield(%struct.TYPE_25__* %86, %struct.ConsControl* %8)
  br label %88

88:                                               ; preds = %85, %82, %81
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = call i64 @testnext(%struct.TYPE_25__* %90, i8 signext 44)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %95 = call i64 @testnext(%struct.TYPE_25__* %94, i8 signext 59)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ true, %89 ], [ %96, %93 ]
  br i1 %98, label %37, label %99

99:                                               ; preds = %97, %57
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @check_match(%struct.TYPE_25__* %100, i8 signext 125, i8 signext 123, i32 %101)
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %104 = call i32 @lastlistfield(%struct.TYPE_26__* %103, %struct.ConsControl* %8)
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @luaO_int2fb(i64 %115)
  %117 = call i32 @SETARG_B(i32 %113, i32 %116)
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @luaO_int2fb(i64 %128)
  %130 = call i32 @SETARG_C(i32 %126, i32 %129)
  ret void
}

declare dso_local i32 @luaK_codeABC(%struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @init_exp(%struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @checknext(%struct.TYPE_25__*, i8 signext) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @closelistfield(%struct.TYPE_26__*, %struct.ConsControl*) #1

declare dso_local i32 @luaX_lookahead(%struct.TYPE_25__*) #1

declare dso_local i32 @listfield(%struct.TYPE_25__*, %struct.ConsControl*) #1

declare dso_local i32 @recfield(%struct.TYPE_25__*, %struct.ConsControl*) #1

declare dso_local i64 @testnext(%struct.TYPE_25__*, i8 signext) #1

declare dso_local i32 @check_match(%struct.TYPE_25__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @lastlistfield(%struct.TYPE_26__*, %struct.ConsControl*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaO_int2fb(i64) #1

declare dso_local i32 @SETARG_C(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
