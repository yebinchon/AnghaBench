; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_constructor.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i8 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i64 }
%struct.ConsControl = type { i64, i64, i64, %struct.TYPE_20__, %struct.TYPE_20__* }

@OP_NEWTABLE = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i64 0, align 8
@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructor(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ConsControl, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = load i32, i32* @OP_NEWTABLE, align 4
  %17 = call i32 @luaK_codeABC(%struct.TYPE_22__* %15, i32 %16, i32 0, i32 0, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 4
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = load i64, i64* @VRELOCABLE, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @init_exp(%struct.TYPE_20__* %23, i64 %24, i32 %25)
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %28 = load i64, i64* @VVOID, align 8
  %29 = call i32 @init_exp(%struct.TYPE_20__* %27, i64 %28, i32 0)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = call i32 @luaK_exp2nextreg(%struct.TYPE_22__* %32, %struct.TYPE_20__* %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = call i32 @checknext(%struct.TYPE_21__* %35, i8 signext 123)
  br label %37

37:                                               ; preds = %71, %2
  %38 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
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
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 4
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 125
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %73

58:                                               ; preds = %47
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = call i32 @closelistfield(%struct.TYPE_22__* %59, %struct.ConsControl* %8)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = call i32 @field(%struct.TYPE_21__* %61, %struct.ConsControl* %8)
  br label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = call i64 @testnext(%struct.TYPE_21__* %64, i8 signext 44)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = call i64 @testnext(%struct.TYPE_21__* %68, i8 signext 59)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ true, %63 ], [ %70, %67 ]
  br i1 %72, label %37, label %73

73:                                               ; preds = %71, %57
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @check_match(%struct.TYPE_21__* %74, i8 signext 125, i8 signext 123, i32 %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = call i32 @lastlistfield(%struct.TYPE_22__* %77, %struct.ConsControl* %8)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @luaO_int2fb(i64 %89)
  %91 = call i32 @SETARG_B(i32 %87, i32 %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
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
  %104 = call i32 @SETARG_C(i32 %100, i32 %103)
  ret void
}

declare dso_local i32 @luaK_codeABC(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @init_exp(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @checknext(%struct.TYPE_21__*, i8 signext) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @closelistfield(%struct.TYPE_22__*, %struct.ConsControl*) #1

declare dso_local i32 @field(%struct.TYPE_21__*, %struct.ConsControl*) #1

declare dso_local i64 @testnext(%struct.TYPE_21__*, i8 signext) #1

declare dso_local i32 @check_match(%struct.TYPE_21__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @lastlistfield(%struct.TYPE_22__*, %struct.ConsControl*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaO_int2fb(i64) #1

declare dso_local i32 @SETARG_C(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
