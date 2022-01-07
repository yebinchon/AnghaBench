; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_rec_check.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_rec_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@PARITY_PQR = common dso_local global i32 0, align 4
@D_INFO = common dso_local global i32 0, align 4
@DBLSEP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Testing data reconstruction...\0A\00", align 1
@raidz_impl_names = common dso_local global i64 0, align 8
@SEP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\09Testing [%s] implementation...\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[SKIP]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[SUPPORTED]\0A\00", align 1
@RAIDZ_REC_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"\09\09Testing method [%s] ...\00", align 1
@raidz_rec_name = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[PASS]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @run_rec_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rec_check(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* @PARITY_PQR, align 4
  %11 = call i32 @init_raidz_golden_map(%struct.TYPE_6__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load i32, i32* @D_INFO, align 4
  %18 = load i8*, i8** @DBLSEP, align 8
  %19 = call i32 (i32, i8*, ...) @LOG(i32 %17, i8* %18)
  %20 = load i32, i32* @D_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @LOG(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @raidz_impl_names, align 8
  %23 = inttoptr i64 %22 to i8**
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8** %24, i8*** %4, align 8
  br label %25

25:                                               ; preds = %84, %16
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %87

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
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @D_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @LOG(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %84

44:                                               ; preds = %29
  %45 = load i32, i32* @D_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @LOG(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load i32, i32* @PARITY_PQR, align 4
  %50 = call i32* @init_raidz_map(%struct.TYPE_6__* %48, i32** %7, i32 %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @vdev_raidz_generate_parity(i32* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %79, %47
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @RAIDZ_REC_NUM, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i32, i32* @D_INFO, align 4
  %59 = load i32*, i32** @raidz_rec_name, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @LOG(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @run_rec_check_impl(%struct.TYPE_6__* %65, i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i32, i32* @D_INFO, align 4
  %72 = call i32 (i32, i8*, ...) @LOG(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @D_INFO, align 4
  %77 = call i32 (i32, i8*, ...) @LOG(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %53

82:                                               ; preds = %53
  %83 = call i32 @fini_raidz_map(i32** %7, i32** %8)
  br label %84

84:                                               ; preds = %82, %41
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %4, align 8
  br label %25

87:                                               ; preds = %25
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @fini_raidz_map(i32** %89, i32** %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @init_raidz_golden_map(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i64 @vdev_raidz_impl_set(i8*) #1

declare dso_local i32* @init_raidz_map(%struct.TYPE_6__*, i32**, i32) #1

declare dso_local i32 @vdev_raidz_generate_parity(i32*) #1

declare dso_local i64 @run_rec_check_impl(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @fini_raidz_map(i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
