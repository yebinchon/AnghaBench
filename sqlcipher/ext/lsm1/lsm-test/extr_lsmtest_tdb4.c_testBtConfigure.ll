; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_testBtConfigure.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_testBtConfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.CfgParam = type { i8*, i32 }
%struct.CfgParam.0 = type { i8*, i32 }

@SQLITE4_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"safety\00", align 1
@BT_CONTROL_SAFETY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"autockpt\00", align 1
@BT_CONTROL_AUTOCKPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"multiproc\00", align 1
@BT_CONTROL_MULTIPROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"blksz\00", align 1
@BT_CONTROL_BLKSZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pagesz\00", align 1
@BT_CONTROL_PAGESZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"mt\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fastinsert\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32*)* @testBtConfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testBtConfigure(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x %struct.CfgParam], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %109

19:                                               ; preds = %3
  %20 = getelementptr inbounds [8 x %struct.CfgParam], [8 x %struct.CfgParam]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %20, i32 0, i32 1
  %23 = load i32, i32* @BT_CONTROL_SAFETY, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %20, i64 1
  %25 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %24, i32 0, i32 1
  %27 = load i32, i32* @BT_CONTROL_AUTOCKPT, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %24, i64 1
  %29 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i32 0, i32 1
  %31 = load i32, i32* @BT_CONTROL_MULTIPROC, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i64 1
  %33 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %32, i32 0, i32 1
  %35 = load i32, i32* @BT_CONTROL_BLKSZ, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %32, i64 1
  %37 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %36, i32 0, i32 1
  %39 = load i32, i32* @BT_CONTROL_PAGESZ, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %36, i64 1
  %41 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %40, i32 0, i32 1
  store i32 -1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %40, i64 1
  %44 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i32 0, i32 1
  store i32 -2, i32* %45, align 8
  %46 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i64 1
  %47 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %46, i32 0, i32 0
  store i8* null, i8** %47, align 16
  %48 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %46, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i64 @testMalloc(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %105, %19
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SQLITE4_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @testParseOption(i8** %9, i8** %12, i8** %13, i8* %61)
  %63 = icmp eq i64 0, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %106

66:                                               ; preds = %64
  %67 = getelementptr inbounds [8 x %struct.CfgParam], [8 x %struct.CfgParam]* %8, i64 0, i64 0
  %68 = bitcast %struct.CfgParam* %67 to %struct.CfgParam.0*
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @testArgSelect(%struct.CfgParam.0* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %69, i32* %14)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SQLITE4_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %106

75:                                               ; preds = %66
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @testParseInt(i8* %76, i32* %15)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SQLITE4_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %106

82:                                               ; preds = %75
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x %struct.CfgParam], [8 x %struct.CfgParam]* %8, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %94 [
    i32 -1, label %88
    i32 -2, label %91
  ]

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %105

94:                                               ; preds = %82
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x %struct.CfgParam], [8 x %struct.CfgParam]* %8, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = bitcast i32* %15 to i8*
  %104 = call i32 @sqlite4BtControl(i32 %97, i32 %102, i8* %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %94, %91, %88
  br label %56

106:                                              ; preds = %81, %74, %64
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @testFree(i8* %107)
  br label %109

109:                                              ; preds = %106, %3
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @testMalloc(i32) #1

declare dso_local i64 @testParseOption(i8**, i8**, i8**, i8*) #1

declare dso_local i32 @testArgSelect(%struct.CfgParam.0*, i8*, i8*, i32*) #1

declare dso_local i32 @testParseInt(i8*, i32*) #1

declare dso_local i32 @sqlite4BtControl(i32, i32, i8*) #1

declare dso_local i32 @testFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
