; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_conf_merge_path_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_conf_merge_path_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64*, i32 }
%struct.TYPE_12__ = type { i64*, i32 }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_MAX_PATH_LEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_merge_path_value(%struct.TYPE_13__* %0, %struct.TYPE_11__** %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %15, i8** %5, align 8
  br label %107

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %21, align 8
  %22 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %22, i8** %5, align 8
  br label %107

23:                                               ; preds = %16
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_11__* @ngx_pcalloc(i32 %26, i32 24)
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %33, i8** %5, align 8
  br label %107

34:                                               ; preds = %23
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = call i64 @ngx_conf_full_name(i32 %43, i32* %46, i32 0)
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %51, i8** %5, align 8
  br label %107

52:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %94, %52
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @NGX_MAX_PATH_LEVEL, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %63, i64* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %75, %85
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %86
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  br label %94

94:                                               ; preds = %57
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %53

97:                                               ; preds = %53
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %100 = call i64 @ngx_add_path(%struct.TYPE_13__* %98, %struct.TYPE_11__** %99)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %5, align 8
  br label %107

105:                                              ; preds = %97
  %106 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %106, i8** %5, align 8
  br label %107

107:                                              ; preds = %105, %103, %50, %32, %19, %14
  %108 = load i8*, i8** %5, align 8
  ret i8* %108
}

declare dso_local %struct.TYPE_11__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_conf_full_name(i32, i32*, i32) #1

declare dso_local i64 @ngx_add_path(%struct.TYPE_13__*, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
