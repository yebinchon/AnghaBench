; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_conf_set_access_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_conf_set_access_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"user:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"group:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"all:\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_set_access_slot(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %14, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %109

29:                                               ; preds = %3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %10, align 8
  %35 = load i64*, i64** %14, align 8
  store i64 0, i64* %35, align 8
  store i64 384, i64* %15, align 8
  store i64 1, i64* %11, align 8
  br label %36

36:                                               ; preds = %92, %29
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @ngx_strncmp(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  store i64 6, i64* %13, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32* %55, i32** %9, align 8
  store i64 0, i64* %15, align 8
  br label %73

56:                                               ; preds = %44
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @ngx_strncmp(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  store i64 3, i64* %13, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  store i32* %62, i32** %9, align 8
  br label %72

63:                                               ; preds = %56
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @ngx_strncmp(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  store i64 0, i64* %13, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %9, align 8
  br label %71

70:                                               ; preds = %63
  br label %101

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @ngx_strcmp(i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i64 6, i64* %12, align 8
  br label %85

78:                                               ; preds = %73
  %79 = load i32*, i32** %9, align 8
  %80 = call i64 @ngx_strcmp(i32* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i64 4, i64* %12, align 8
  br label %84

83:                                               ; preds = %78
  br label %101

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = shl i64 %86, %87
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %88
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %36

95:                                               ; preds = %36
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %14, align 8
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %96
  store i64 %99, i64* %97, align 8
  %100 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %100, i8** %4, align 8
  br label %109

101:                                              ; preds = %83, %70
  %102 = load i32, i32* @NGX_LOG_EMERG, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = call i32 @ngx_conf_log_error(i32 %102, %struct.TYPE_11__* %103, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %106)
  %108 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %101, %95, %28
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i64 @ngx_strcmp(i32*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_11__*, i32, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
