; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_input_EsOutTimeshiftNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_input_EsOutTimeshiftNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, float, float, i32, i32, i8*, %struct.TYPE_6__, i32, i32, i32*, i32, %struct.TYPE_6__*, i32* }

@es_out_timeshift_cbs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"input-timeshift-granularity\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"using timeshift granularity of %d MiB\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"input-timeshift-path\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"using timeshift path: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"using default timeshift path\00", align 1
@DIR_SEP_CHAR = common dso_local global i8 0, align 1
@ts_cmd_add_t = common dso_local global i32 0, align 4
@ts_cmd_control_t = common dso_local global i32 0, align 4
@ts_cmd_del_t = common dso_local global i32 0, align 4
@ts_cmd_send_t = common dso_local global i32 0, align 4
@ts_cmd_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @input_EsOutTimeshiftNew(i32* %0, %struct.TYPE_6__* %1, float %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store float %2, float* %7, align 4
  %10 = call %struct.TYPE_7__* @malloc(i32 80)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %87

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* @es_out_timeshift_cbs, i32** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 13
  store i32* %22, i32** %24, align 8
  %25 = load float, float* %7, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store float %25, float* %27, align 8
  %28 = load float, float* %7, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store float %28, float* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 12
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 11
  %36 = call i32 @vlc_mutex_init_recursive(i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 10
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @TAB_INIT(i32 %43, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @var_CreateGetInteger(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %14
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  store i32 52428800, i32* %54, align 4
  br label %60

55:                                               ; preds = %14
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @__MAX(i32 %56, i32 1048576)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 1048576
  %66 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i8* @var_InheritString(i32* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %84

81:                                               ; preds = %60
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %75
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 7
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %4, align 8
  br label %87

87:                                               ; preds = %84, %13
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %88
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @vlc_mutex_init_recursive(i32*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @var_CreateGetInteger(i32*, i8*) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
