; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_assignment.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.LHS_assign = type { %struct.TYPE_19__, %struct.LHS_assign* }
%struct.TYPE_19__ = type { i64 }

@VLOCAL = common dso_local global i64 0, align 8
@VINDEXED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@LUAI_MAXCCALLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"variables in assignment\00", align 1
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
  %11 = load i64, i64* @VLOCAL, align 8
  %12 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %13 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VINDEXED, align 8
  %23 = icmp sle i64 %21, %22
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i1 [ false, %3 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @check_condition(%struct.TYPE_18__* %10, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call i64 @testnext(%struct.TYPE_18__* %28, i8 signext 44)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  %32 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %33 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  store %struct.LHS_assign* %32, %struct.LHS_assign** %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %36 = call i32 @primaryexp(%struct.TYPE_18__* %34, %struct.TYPE_19__* %35)
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VLOCAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %45 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %46 = call i32 @check_conflict(%struct.TYPE_18__* %43, %struct.LHS_assign* %44, %struct.TYPE_19__* %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* @LUAI_MAXCCALLS, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %52, %57
  %59 = call i32 @luaY_checklimit(%struct.TYPE_20__* %50, i32 %51, i64 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  call void @assignment(%struct.TYPE_18__* %60, %struct.LHS_assign* %8, i32 %62)
  br label %103

63:                                               ; preds = %24
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = call i32 @checknext(%struct.TYPE_18__* %64, i8 signext 61)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = call i32 @explist1(%struct.TYPE_18__* %66, i32* %7)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %63
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @adjust_assign(%struct.TYPE_18__* %72, i32 %73, i32 %74, i32* %7)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %83
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %79, %71
  br label %102

91:                                               ; preds = %63
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = call i32 @luaK_setoneret(%struct.TYPE_20__* %94, i32* %7)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %100 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %99, i32 0, i32 0
  %101 = call i32 @luaK_storevar(%struct.TYPE_20__* %98, %struct.TYPE_19__* %100, i32* %7)
  br label %118

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %47
  %104 = load i32, i32* @VNONRELOC, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = call i32 @init_exp(i32* %7, i32 %104, i64 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %116 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %115, i32 0, i32 0
  %117 = call i32 @luaK_storevar(%struct.TYPE_20__* %114, %struct.TYPE_19__* %116, i32* %7)
  br label %118

118:                                              ; preds = %103, %91
  ret void
}

declare dso_local i32 @check_condition(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @testnext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @primaryexp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @check_conflict(%struct.TYPE_18__*, %struct.LHS_assign*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaY_checklimit(%struct.TYPE_20__*, i32, i64, i8*) #1

declare dso_local i32 @checknext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @explist1(%struct.TYPE_18__*, i32*) #1

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
