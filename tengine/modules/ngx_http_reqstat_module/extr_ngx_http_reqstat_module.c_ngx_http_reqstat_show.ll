; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_show.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_reqstat_show_handler = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, i32*, i8*)* @ngx_http_reqstat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_reqstat_show(%struct.TYPE_12__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %95

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %87

37:                                               ; preds = %27
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = call i32* @ngx_array_create(i32 %40, i32 %46, i32 8)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %55, i8** %4, align 8
  br label %95

56:                                               ; preds = %37
  store i64 1, i64* %9, align 8
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %58, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %57
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32* @ngx_shared_memory_add(%struct.TYPE_12__* %67, i32* %70, i32 0, i32* @ngx_http_reqstat_module)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %75, i8** %4, align 8
  br label %95

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32** @ngx_array_push(i32* %79)
  store i32** %80, i32*** %11, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32**, i32*** %11, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %57

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86, %34
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = load i32, i32* @ngx_http_core_module, align 4
  %90 = call %struct.TYPE_11__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_12__* %88, i32 %89)
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %12, align 8
  %91 = load i32, i32* @ngx_http_reqstat_show_handler, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %87, %74, %54, %26
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32* @ngx_shared_memory_add(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32** @ngx_array_push(i32*) #1

declare dso_local %struct.TYPE_11__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
