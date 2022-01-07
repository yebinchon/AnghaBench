; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_copy_buf_chain.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_copy_buf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ngx_http_tfs_copy_buf_chain(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %3, align 8
  br label %67

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  br label %19

19:                                               ; preds = %29, %17
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i64 @ngx_buf_size(%struct.TYPE_8__* %25)
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.TYPE_8__* @ngx_create_temp_buf(i32* %34, i64 %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = icmp eq %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %67

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  br label %42

42:                                               ; preds = %61, %40
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i64 @ngx_buf_size(%struct.TYPE_8__* %56)
  %58 = call i32 @ngx_copy(i32 %48, i32 %53, i64 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %8, align 8
  br label %42

65:                                               ; preds = %42
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %3, align 8
  br label %67

67:                                               ; preds = %65, %39, %13
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %68
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ngx_create_temp_buf(i32*, i64) #1

declare dso_local i32 @ngx_copy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
