; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_BMK_generate_cLevelTable.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_BMK_generate_cLevelTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@NB_LEVELS_TRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"grillResults.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@g_singleRun = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"error opening %s \0A\00", align 1
@g_target = common dso_local global i32 0, align 4
@MB_UNIT = common dso_local global i32 0, align 4
@g_noSeed = common dso_local global i64 0, align 8
@g_timeLimit_s = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"grillParams operations completed \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @BMK_generate_cLevelTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_generate_cLevelTable(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__, align 4
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_14__* %3 to i64*
  store i64 %0, i64* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 %1, i32* %16, align 4
  %17 = load i32, i32* @NB_LEVELS_TRACKED, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %22 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i64, i64* @g_singleRun, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = mul nuw i64 4, %19
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %21, i32 0, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %34 = call i32 @exit(i32 1) #4
  unreachable

35:                                               ; preds = %2
  %36 = load i32, i32* @g_target, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @g_target, align 4
  %40 = load i32, i32* @MB_UNIT, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @BMK_init_level_constraints(i32 %41)
  br label %61

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ZSTD_getCParams(i32 1, i32 %45, i32 %47)
  %49 = call i8* @cParamsToPVals(i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast %struct.TYPE_14__* %3 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BMK_benchParam(%struct.TYPE_15__* %11, i64 %52, i32 %54, i8* %50)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 31
  %59 = sdiv i32 %58, 32
  %60 = call i32 @BMK_init_level_constraints(i32 %59)
  br label %61

61:                                               ; preds = %43, %38
  %62 = load i64, i64* @g_noSeed, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @ZSTD_maxCLevel()
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 1, %64 ], [ %66, %65 ]
  store i32 %68, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %85, %67
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ZSTD_getCParams(i32 %74, i32 %76, i32 0)
  %78 = call i8* @cParamsToPVals(i32 %77)
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = bitcast %struct.TYPE_14__* %3 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BMK_seed(i32* %21, i8* %79, i64 %81, i32 %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @BMK_saveAndPrint_cLevelTable(i32* %89, i32* %21, i32 %91)
  %93 = call i32 (...) @UTIL_getTime()
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %101, %88
  %95 = load i32*, i32** %9, align 8
  %96 = bitcast %struct.TYPE_14__* %3 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @BMK_selectRandomStart(i32* %95, i32* %21, i64 %97, i32 %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = call i64 @BMK_timeSpan_s(i32 %102)
  %104 = load i64, i64* @g_timeLimit_s, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %94, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @BMK_saveAndPrint_cLevelTable(i32* %107, i32* %21, i32 %109)
  %111 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @DISPLAY(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @BMK_init_level_constraints(i32) #2

declare dso_local i8* @cParamsToPVals(i32) #2

declare dso_local i32 @ZSTD_getCParams(i32, i32, i32) #2

declare dso_local i32 @BMK_benchParam(%struct.TYPE_15__*, i64, i32, i8*) #2

declare dso_local i32 @ZSTD_maxCLevel(...) #2

declare dso_local i32 @BMK_seed(i32*, i8*, i64, i32) #2

declare dso_local i32 @BMK_saveAndPrint_cLevelTable(i32*, i32*, i32) #2

declare dso_local i32 @UTIL_getTime(...) #2

declare dso_local i32 @BMK_selectRandomStart(i32*, i32*, i64, i32) #2

declare dso_local i64 @BMK_timeSpan_s(i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
