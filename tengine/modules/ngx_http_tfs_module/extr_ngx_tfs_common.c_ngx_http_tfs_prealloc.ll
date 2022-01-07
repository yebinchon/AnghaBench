; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_prealloc.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_tfs_prealloc(%struct.TYPE_7__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i8* @ngx_palloc(%struct.TYPE_7__* %14, i64 %15)
  store i8* %16, i8** %5, align 8
  br label %86

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  br label %40

36:                                               ; preds = %20
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @ngx_pfree(%struct.TYPE_7__* %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %30
  store i8* null, i8** %5, align 8
  br label %86

41:                                               ; preds = %17
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %45, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ule i32* %55, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %5, align 8
  br label %86

70:                                               ; preds = %51, %41
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i8* @ngx_palloc(%struct.TYPE_7__* %71, i64 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i8* null, i8** %5, align 8
  br label %86

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @ngx_memcpy(i8* %78, i8* %79, i64 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @ngx_pfree(%struct.TYPE_7__* %82, i8* %83)
  %85 = load i8*, i8** %10, align 8
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %77, %76, %61, %40, %13
  %87 = load i8*, i8** %5, align 8
  ret i8* %87
}

declare dso_local i8* @ngx_palloc(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ngx_pfree(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
