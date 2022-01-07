; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_set_flag_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_set_flag_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i8* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* }
%struct.TYPE_13__ = type { i32 }

@NGX_CONF_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"invalid value \22%s\22 in \22%s\22 directive, it must be \22on\22 or \22off\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_set_flag_slot(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NGX_CONF_UNSET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ngx_strcasecmp(i32 %34, i32* bitcast ([3 x i8]* @.str.1 to i32*))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32*, i32** %10, align 8
  store i32 1, i32* %38, align 4
  br label %62

39:                                               ; preds = %25
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ngx_strcasecmp(i32 %43, i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  store i32 0, i32* %47, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load i32, i32* @NGX_LOG_EMERG, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ngx_conf_log_error(i32 %49, %struct.TYPE_15__* %50, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %80

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %11, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i8* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)*, i8* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)** %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i8* %73(%struct.TYPE_15__* %74, %struct.TYPE_16__* %75, i32* %76)
  store i8* %77, i8** %4, align 8
  br label %80

78:                                               ; preds = %62
  %79 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %78, %67, %48, %24
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i64 @ngx_strcasecmp(i32, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
