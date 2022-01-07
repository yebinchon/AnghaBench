; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_set_bitmask_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_set_bitmask_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"duplicate value \22%s\22\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid value \22%s\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_set_bitmask_slot(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %9, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %12, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %13, align 8
  store i64 1, i64* %10, align 8
  br label %30

30:                                               ; preds = %126, %3
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %129

38:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %104, %38
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %107

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %74, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ngx_strcasecmp(i32 %66, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60, %47
  br label %104

75:                                               ; preds = %60
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = and i64 %77, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load i32, i32* @NGX_LOG_WARN, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ngx_conf_log_error(i32 %86, %struct.TYPE_13__* %87, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %103

94:                                               ; preds = %75
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %100, align 8
  %102 = or i64 %101, %99
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %94, %85
  br label %107

104:                                              ; preds = %74
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %11, align 8
  br label %39

107:                                              ; preds = %103, %39
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i32, i32* @NGX_LOG_EMERG, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_conf_log_error(i32 %116, %struct.TYPE_13__* %117, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %124, i8** %4, align 8
  br label %131

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %10, align 8
  br label %30

129:                                              ; preds = %30
  %130 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %130, i8** %4, align 8
  br label %131

131:                                              ; preds = %129, %115
  %132 = load i8*, i8** %4, align 8
  ret i8* %132
}

declare dso_local i64 @ngx_strcasecmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
