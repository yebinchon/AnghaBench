; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_assignment.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.LHS_assign = type { %struct.TYPE_19__, %struct.LHS_assign* }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@VINDEXED = common dso_local global i64 0, align 8
@LUAI_MAXCCALLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"C levels\00", align 1
@VNONRELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.LHS_assign*, i32)* @assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assignment(%struct.TYPE_18__* %0, %struct.LHS_assign* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LHS_assign, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %12 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @vkisvar(i64 %14)
  %16 = call i32 @check_condition(%struct.TYPE_18__* %10, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = call i64 @testnext(%struct.TYPE_18__* %17, i8 signext 44)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %22 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  store %struct.LHS_assign* %21, %struct.LHS_assign** %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %25 = call i32 @suffixedexp(%struct.TYPE_18__* %23, %struct.TYPE_19__* %24)
  %26 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VINDEXED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %34 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %35 = call i32 @check_conflict(%struct.TYPE_18__* %32, %struct.LHS_assign* %33, %struct.TYPE_19__* %34)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = load i32, i32* @LUAI_MAXCCALLS, align 4
  %49 = call i32 @checklimit(%struct.TYPE_20__* %39, i64 %47, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  call void @assignment(%struct.TYPE_18__* %50, %struct.LHS_assign* %8, i32 %52)
  br label %93

53:                                               ; preds = %3
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = call i32 @checknext(%struct.TYPE_18__* %54, i8 signext 61)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = call i32 @explist(%struct.TYPE_18__* %56, i32* %7)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %53
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @adjust_assign(%struct.TYPE_18__* %62, i32 %63, i32 %64, i32* %7)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %73
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %69, %61
  br label %92

81:                                               ; preds = %53
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = call i32 @luaK_setoneret(%struct.TYPE_20__* %84, i32* %7)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %90 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %89, i32 0, i32 0
  %91 = call i32 @luaK_storevar(%struct.TYPE_20__* %88, %struct.TYPE_19__* %90, i32* %7)
  br label %108

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %36
  %94 = load i32, i32* @VNONRELOC, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @init_exp(i32* %7, i32 %94, i64 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %106 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %105, i32 0, i32 0
  %107 = call i32 @luaK_storevar(%struct.TYPE_20__* %104, %struct.TYPE_19__* %106, i32* %7)
  br label %108

108:                                              ; preds = %93, %81
  ret void
}

declare dso_local i32 @check_condition(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @vkisvar(i64) #1

declare dso_local i64 @testnext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @suffixedexp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @check_conflict(%struct.TYPE_18__*, %struct.LHS_assign*, %struct.TYPE_19__*) #1

declare dso_local i32 @checklimit(%struct.TYPE_20__*, i64, i32, i8*) #1

declare dso_local i32 @checknext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @explist(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @adjust_assign(%struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @luaK_setoneret(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @luaK_storevar(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @init_exp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
