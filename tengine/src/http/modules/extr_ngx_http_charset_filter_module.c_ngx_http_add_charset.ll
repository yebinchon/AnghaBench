; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_add_charset.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_add_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64, i32* }

@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_8__*)* @ngx_http_add_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_add_charset(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @ngx_strcasecmp(i32* %32, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %11

46:                                               ; preds = %41, %11
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %84

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call %struct.TYPE_9__* @ngx_array_push(%struct.TYPE_10__* %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = icmp eq %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %3, align 8
  br label %84

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = bitcast %struct.TYPE_8__* %65 to i8*
  %68 = bitcast %struct.TYPE_8__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @ngx_strcasecmp(i32* %73, i32* bitcast ([6 x i8]* @.str to i32*))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %82

79:                                               ; preds = %61
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %6, align 8
  store i64 %83, i64* %3, align 8
  br label %84

84:                                               ; preds = %82, %59, %52
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i64 @ngx_strcasecmp(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @ngx_array_push(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
