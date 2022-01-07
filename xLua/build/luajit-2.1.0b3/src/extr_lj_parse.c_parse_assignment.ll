; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_assignment.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_27__, %struct.TYPE_32__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }

@VLOCAL = common dso_local global i64 0, align 8
@VINDEXED = common dso_local global i64 0, align 8
@LJ_ERR_XSYNTAX = common dso_local global i32 0, align 4
@LJ_MAX_XLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"variable names\00", align 1
@VCALL = common dso_local global i64 0, align 8
@BC_VARG = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_32__*, i64)* @parse_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_assignment(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_33__, align 8
  %8 = alloca %struct.TYPE_32__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %11 = load i64, i64* @VLOCAL, align 8
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VINDEXED, align 8
  %23 = icmp sle i64 %21, %22
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i1 [ false, %3 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @LJ_ERR_XSYNTAX, align 4
  %28 = call i32 @checkcond(%struct.TYPE_31__* %10, i32 %26, i32 %27)
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %30 = call i64 @lex_opt(%struct.TYPE_31__* %29, i8 signext 44)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %24
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  store %struct.TYPE_32__* %33, %struct.TYPE_32__** %34, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %37 = call i32 @expr_primary(%struct.TYPE_31__* %35, %struct.TYPE_27__* %36)
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VLOCAL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %47 = call i32 @assign_hazard(%struct.TYPE_31__* %44, %struct.TYPE_32__* %45, %struct.TYPE_27__* %46)
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @LJ_MAX_XLEVEL, align 4
  %58 = call i32 @checklimit(%struct.TYPE_28__* %51, i64 %56, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  call void @parse_assignment(%struct.TYPE_31__* %59, %struct.TYPE_32__* %8, i64 %61)
  br label %116

62:                                               ; preds = %24
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %64 = call i32 @lex_check(%struct.TYPE_31__* %63, i8 signext 61)
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %66 = call i64 @expr_list(%struct.TYPE_31__* %65, %struct.TYPE_33__* %7)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VCALL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %77, align 8
  %79 = call i32* @bcptr(%struct.TYPE_28__* %78, %struct.TYPE_33__* %7)
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @bc_op(i32 %80)
  %82 = load i64, i64* @BC_VARG, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* @VRELOCABLE, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  br label %103

93:                                               ; preds = %75
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i64, i64* @VNONRELOC, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %93, %84
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %106, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = call i32 @bcemit_store(%struct.TYPE_28__* %107, %struct.TYPE_27__* %109, %struct.TYPE_33__* %7)
  br label %131

111:                                              ; preds = %62
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @assign_adjust(%struct.TYPE_31__* %112, i64 %113, i64 %114, %struct.TYPE_33__* %7)
  br label %116

116:                                              ; preds = %111, %48
  %117 = load i64, i64* @VNONRELOC, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 1
  %124 = call i32 @expr_init(%struct.TYPE_33__* %7, i64 %117, i64 %123)
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = call i32 @bcemit_store(%struct.TYPE_28__* %127, %struct.TYPE_27__* %129, %struct.TYPE_33__* %7)
  br label %131

131:                                              ; preds = %116, %104
  ret void
}

declare dso_local i32 @checkcond(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @lex_opt(%struct.TYPE_31__*, i8 signext) #1

declare dso_local i32 @expr_primary(%struct.TYPE_31__*, %struct.TYPE_27__*) #1

declare dso_local i32 @assign_hazard(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_27__*) #1

declare dso_local i32 @checklimit(%struct.TYPE_28__*, i64, i32, i8*) #1

declare dso_local i32 @lex_check(%struct.TYPE_31__*, i8 signext) #1

declare dso_local i64 @expr_list(%struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32* @bcptr(%struct.TYPE_28__*, %struct.TYPE_33__*) #1

declare dso_local i32 @bcemit_store(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_33__*) #1

declare dso_local i32 @assign_adjust(%struct.TYPE_31__*, i64, i64, %struct.TYPE_33__*) #1

declare dso_local i32 @expr_init(%struct.TYPE_33__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
