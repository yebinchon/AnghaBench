; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_log_ringbuf.c_ngx_http_lua_log_ringbuf_write.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_log_ringbuf.c_ngx_http_lua_log_ringbuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@HEADER_LEN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_log_ringbuf_write(%struct.TYPE_6__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HEADER_LEN, align 8
  %12 = add i64 %10, %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @NGX_ERROR, align 4
  store i32 %18, i32* %5, align 4
  br label %91

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = call i64 @ngx_http_lua_log_ringbuf_free_spaces(%struct.TYPE_6__* %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @HEADER_LEN, align 8
  %24 = add i64 %22, %23
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @HEADER_LEN, align 8
  %40 = add i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %58, %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %43
  %57 = phi i1 [ false, %43 ], [ %55, %51 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = call i32 @ngx_http_lua_log_ringbuf_throw_away(%struct.TYPE_6__* %59)
  br label %43

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %61, %26
  br label %73

73:                                               ; preds = %80, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = call i64 @ngx_http_lua_log_ringbuf_free_spaces(%struct.TYPE_6__* %74)
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @HEADER_LEN, align 8
  %78 = add i64 %76, %77
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = call i32 @ngx_http_lua_log_ringbuf_throw_away(%struct.TYPE_6__* %81)
  br label %73

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %19
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @ngx_http_lua_log_ringbuf_append(%struct.TYPE_6__* %85, i32 %86, i8* %87, i64 %88)
  %90 = load i32, i32* @NGX_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %17
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @ngx_http_lua_log_ringbuf_free_spaces(%struct.TYPE_6__*) #1

declare dso_local i32 @ngx_http_lua_log_ringbuf_throw_away(%struct.TYPE_6__*) #1

declare dso_local i32 @ngx_http_lua_log_ringbuf_append(%struct.TYPE_6__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
