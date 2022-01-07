; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_script.c_ngx_stream_script_done.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_script.c_ngx_stream_script_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i32*, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @ngx_stream_script_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_script_done(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i64 @ngx_stream_script_add_copy_code(%struct.TYPE_7__* %13, %struct.TYPE_8__* %4, i32 0)
  %15 = load i64, i64* @NGX_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %2, align 8
  br label %76

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call i64 @ngx_stream_script_add_full_name_code(%struct.TYPE_7__* %31)
  %33 = load i64, i64* @NGX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* @NGX_ERROR, align 8
  store i64 %36, i64* %2, align 8
  br label %76

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64* @ngx_stream_script_add_code(i32 %47, i32 8, i32* null)
  store i64* %48, i64** %5, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = icmp eq i64* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* @NGX_ERROR, align 8
  store i64 %52, i64* %2, align 8
  br label %76

53:                                               ; preds = %43
  %54 = load i64*, i64** %5, align 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %53, %38
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i64* @ngx_stream_script_add_code(i32 %64, i32 8, i32* %66)
  store i64* %67, i64** %5, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = icmp eq i64* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %2, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load i64*, i64** %5, align 8
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %72, %55
  %75 = load i64, i64* @NGX_OK, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %70, %51, %35, %17
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i64 @ngx_stream_script_add_copy_code(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @ngx_stream_script_add_full_name_code(%struct.TYPE_7__*) #1

declare dso_local i64* @ngx_stream_script_add_code(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
