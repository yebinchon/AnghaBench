; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_script_copy_var_code.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_script_copy_var_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_14__*, i64, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"http script var: \22%*s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_script_copy_var_code(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 4
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %81, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_11__* @ngx_http_get_indexed_variable(%struct.TYPE_14__* %26, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %4, align 8
  br label %39

31:                                               ; preds = %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_11__* @ngx_http_get_flushed_variable(%struct.TYPE_14__* %34, i32 %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %4, align 8
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @ngx_copy(i32* %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @ngx_log_debug2(i32 %61, i32 %68, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %47, %42, %39
  br label %81

81:                                               ; preds = %80, %1
  ret void
}

declare dso_local %struct.TYPE_11__* @ngx_http_get_indexed_variable(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_11__* @ngx_http_get_flushed_variable(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @ngx_copy(i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
