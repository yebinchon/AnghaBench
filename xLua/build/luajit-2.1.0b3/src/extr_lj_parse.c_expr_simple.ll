; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_simple.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@LJ_HASFFI = common dso_local global i32 0, align 4
@VKCDATA = common dso_local global i32 0, align 4
@VKNUM = common dso_local global i32 0, align 4
@VKSTR = common dso_local global i32 0, align 4
@VKNIL = common dso_local global i32 0, align 4
@VKTRUE = common dso_local global i32 0, align 4
@VKFALSE = common dso_local global i32 0, align 4
@PROTO_VARARG = common dso_local global i32 0, align 4
@LJ_ERR_XDOTS = common dso_local global i32 0, align 4
@VCALL = common dso_local global i32 0, align 4
@BC_VARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*)* @expr_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_simple(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %103 [
    i32 130, label %10
    i32 129, label %35
    i32 131, label %45
    i32 128, label %49
    i32 133, label %53
    i32 134, label %57
    i32 123, label %90
    i32 132, label %94
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = load i32, i32* @LJ_HASFFI, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = call i32 @tviscdata(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @VKCDATA, align 4
  br label %23

21:                                               ; preds = %14, %10
  %22 = load i32, i32* @VKNUM, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @expr_init(%struct.TYPE_23__* %11, i32 %24, i32 0)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  %34 = call i32 @copyTV(i32 %28, i32* %31, i32* %33)
  br label %107

35:                                               ; preds = %2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = load i32, i32* @VKSTR, align 4
  %38 = call i32 @expr_init(%struct.TYPE_23__* %36, i32 %37, i32 0)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 3
  %41 = call i32 @strV(i32* %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %107

45:                                               ; preds = %2
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = load i32, i32* @VKNIL, align 4
  %48 = call i32 @expr_init(%struct.TYPE_23__* %46, i32 %47, i32 0)
  br label %107

49:                                               ; preds = %2
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = load i32, i32* @VKTRUE, align 4
  %52 = call i32 @expr_init(%struct.TYPE_23__* %50, i32 %51, i32 0)
  br label %107

53:                                               ; preds = %2
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load i32, i32* @VKFALSE, align 4
  %56 = call i32 @expr_init(%struct.TYPE_23__* %54, i32 %55, i32 0)
  br label %107

57:                                               ; preds = %2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %5, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PROTO_VARARG, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @LJ_ERR_XDOTS, align 4
  %68 = call i32 @checkcond(%struct.TYPE_21__* %61, i32 %66, i32 %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = call i32 @bcreg_reserve(%struct.TYPE_22__* %69, i32 1)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = load i32, i32* @VCALL, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = load i32, i32* @BC_VARG, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bcemit_ABC(%struct.TYPE_22__* %77, i32 %78, i32 %79, i32 2, i32 %82)
  %84 = call i32 @expr_init(%struct.TYPE_23__* %75, i32 %76, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %107

90:                                               ; preds = %2
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = call i32 @expr_table(%struct.TYPE_21__* %91, %struct.TYPE_23__* %92)
  br label %110

94:                                               ; preds = %2
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = call i32 @lj_lex_next(%struct.TYPE_21__* %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @parse_body(%struct.TYPE_21__* %97, %struct.TYPE_23__* %98, i32 0, i32 %101)
  br label %110

103:                                              ; preds = %2
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = call i32 @expr_primary(%struct.TYPE_21__* %104, %struct.TYPE_23__* %105)
  br label %110

107:                                              ; preds = %57, %53, %49, %45, %35, %23
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = call i32 @lj_lex_next(%struct.TYPE_21__* %108)
  br label %110

110:                                              ; preds = %107, %103, %94, %90
  ret void
}

declare dso_local i32 @expr_init(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tviscdata(i32*) #1

declare dso_local i32 @copyTV(i32, i32*, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @checkcond(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @bcemit_ABC(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @expr_table(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_21__*) #1

declare dso_local i32 @parse_body(%struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @expr_primary(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
