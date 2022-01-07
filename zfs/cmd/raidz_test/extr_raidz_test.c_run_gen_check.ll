; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_gen_check.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_gen_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32*, i32*, i32 }

@PARITY_PQR = common dso_local global i32 0, align 4
@D_INFO = common dso_local global i32 0, align 4
@DBLSEP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Testing parity generation...\0A\00", align 1
@raidz_impl_names = common dso_local global i64 0, align 8
@SEP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\09Testing [%s] implementation...\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[SKIP]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[SUPPORTED]\0A\00", align 1
@RAIDZ_GEN_NUM = common dso_local global i32 0, align 4
@rto_opts = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"\09\09Testing method [%s] ...\00", align 1
@raidz_gen_name = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[PASS]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @run_gen_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_gen_check(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @PARITY_PQR, align 4
  %11 = call i32 @init_raidz_golden_map(%struct.TYPE_7__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load i32, i32* @D_INFO, align 4
  %18 = load i8*, i8** @DBLSEP, align 8
  %19 = call i32 (i32, i8*, ...) @LOG(i32 %17, i8* %18)
  %20 = load i32, i32* @D_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @LOG(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @raidz_impl_names, align 8
  %23 = inttoptr i64 %22 to i8**
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8** %24, i8*** %4, align 8
  br label %25

25:                                               ; preds = %99, %16
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %102

29:                                               ; preds = %25
  %30 = load i32, i32* @D_INFO, align 4
  %31 = load i8*, i8** @SEP, align 8
  %32 = call i32 (i32, i8*, ...) @LOG(i32 %30, i8* %31)
  %33 = load i32, i32* @D_INFO, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32, i8*, ...) @LOG(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @vdev_raidz_impl_set(i8* %38)
  %40 = icmp ne i64 0, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @D_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @LOG(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %99

44:                                               ; preds = %29
  %45 = load i32, i32* @D_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @LOG(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %95, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RAIDZ_GEN_NUM, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %48
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rto_opts, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %109

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32* @init_raidz_map(%struct.TYPE_7__* %58, i32** %7, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @VERIFY(i32* %62)
  %64 = load i32, i32* @D_INFO, align 4
  %65 = load i32*, i32** @raidz_gen_name, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @LOG(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %57
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @vdev_raidz_generate_parity(i32* %76)
  br label %78

78:                                               ; preds = %75, %57
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i64 @cmp_code(%struct.TYPE_7__* %79, i32* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @D_INFO, align 4
  %87 = call i32 (i32, i8*, ...) @LOG(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @D_INFO, align 4
  %92 = call i32 (i32, i8*, ...) @LOG(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %85
  %94 = call i32 @fini_raidz_map(i32** %7, i32** %8)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %48

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %98, %41
  %100 = load i8**, i8*** %4, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %4, align 8
  br label %25

102:                                              ; preds = %25
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @fini_raidz_map(i32** %104, i32** %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %102, %55, %14
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @init_raidz_golden_map(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i64 @vdev_raidz_impl_set(i8*) #1

declare dso_local i32* @init_raidz_map(%struct.TYPE_7__*, i32**, i32) #1

declare dso_local i32 @VERIFY(i32*) #1

declare dso_local i32 @vdev_raidz_generate_parity(i32*) #1

declare dso_local i64 @cmp_code(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @fini_raidz_map(i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
