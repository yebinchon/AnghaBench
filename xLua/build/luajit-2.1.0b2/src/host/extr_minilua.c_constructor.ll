; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_constructor.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i8 }
%struct.TYPE_17__ = type { i8 }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.ConsControl = type { i64, i64, i32, i32*, i64 }

@OP_NEWTABLE = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i32 0, align 4
@VVOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32*)* @constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructor(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ConsControl, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = load i32, i32* @OP_NEWTABLE, align 4
  %17 = call i32 @luaK_codeABC(%struct.TYPE_21__* %15, i32 %16, i32 0, i32 0, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  store i32* %21, i32** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @VRELOCABLE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @init_exp(i32* %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  %28 = load i32, i32* @VVOID, align 4
  %29 = call i32 @init_exp(i32* %27, i32 %28, i32 0)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @luaK_exp2nextreg(%struct.TYPE_21__* %32, i32* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = call i32 @checknext(%struct.TYPE_20__* %35, i8 signext 123)
  br label %37

37:                                               ; preds = %84, %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 125
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %86

45:                                               ; preds = %37
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = call i32 @closelistfield(%struct.TYPE_21__* %46, %struct.ConsControl* %8)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %72 [
    i32 128, label %53
    i32 91, label %69
  ]

53:                                               ; preds = %45
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = call i32 @luaX_lookahead(%struct.TYPE_20__* %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 61
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = call i32 @listfield(%struct.TYPE_20__* %63, %struct.ConsControl* %8)
  br label %68

65:                                               ; preds = %53
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = call i32 @recfield(%struct.TYPE_20__* %66, %struct.ConsControl* %8)
  br label %68

68:                                               ; preds = %65, %62
  br label %75

69:                                               ; preds = %45
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = call i32 @recfield(%struct.TYPE_20__* %70, %struct.ConsControl* %8)
  br label %75

72:                                               ; preds = %45
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = call i32 @listfield(%struct.TYPE_20__* %73, %struct.ConsControl* %8)
  br label %75

75:                                               ; preds = %72, %69, %68
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = call i64 @testnext(%struct.TYPE_20__* %77, i8 signext 44)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = call i64 @testnext(%struct.TYPE_20__* %81, i8 signext 59)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ true, %76 ], [ %83, %80 ]
  br i1 %85, label %37, label %86

86:                                               ; preds = %84, %44
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @check_match(%struct.TYPE_20__* %87, i8 signext 125, i8 signext 123, i32 %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = call i32 @lastlistfield(%struct.TYPE_21__* %90, %struct.ConsControl* %8)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @luaO_int2fb(i64 %102)
  %104 = call i32 @SETARG_B(i32 %100, i32 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @luaO_int2fb(i64 %115)
  %117 = call i32 @SETARG_C(i32 %113, i32 %116)
  ret void
}

declare dso_local i32 @luaK_codeABC(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @init_exp(i32*, i32, i32) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @checknext(%struct.TYPE_20__*, i8 signext) #1

declare dso_local i32 @closelistfield(%struct.TYPE_21__*, %struct.ConsControl*) #1

declare dso_local i32 @luaX_lookahead(%struct.TYPE_20__*) #1

declare dso_local i32 @listfield(%struct.TYPE_20__*, %struct.ConsControl*) #1

declare dso_local i32 @recfield(%struct.TYPE_20__*, %struct.ConsControl*) #1

declare dso_local i64 @testnext(%struct.TYPE_20__*, i8 signext) #1

declare dso_local i32 @check_match(%struct.TYPE_20__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @lastlistfield(%struct.TYPE_21__*, %struct.ConsControl*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaO_int2fb(i64) #1

declare dso_local i32 @SETARG_C(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
