; ModuleID = '/home/carl/AnghaBench/streem/src/extr_kvs.c_txn_get.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_kvs.c_txn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@txn = common dso_local global i32 0, align 4
@kvs = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @txn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txn_get(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.TYPE_6__* @get_txn(i32 %14, i32* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strm_to_str(i32 %19)
  %21 = call i32 @strm_str_intern_str(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @void_txn(i32* %25)
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = call i64 @kvs_serial(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = call i32 @txn_retry(%struct.TYPE_6__* %38)
  store i32 %39, i32* %5, align 4
  br label %92

40:                                               ; preds = %27
  %41 = load i32, i32* @txn, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @kh_get(i32 %41, i32 %44, i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @kh_end(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %40
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @pthread_mutex_lock(i32* %55)
  %57 = load i32, i32* @kvs, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @kh_get(i32 %57, i32 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @kh_end(i32 %66)
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = call i32 (...) @strm_nil_value()
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %79

72:                                               ; preds = %53
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @kh_value(i32 %75, i64 %76)
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %69
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @pthread_mutex_unlock(i32* %81)
  br label %90

83:                                               ; preds = %40
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @kh_value(i32 %86, i64 %87)
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %79
  %91 = load i32, i32* @STRM_OK, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %37, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_6__* @get_txn(i32, i32*) #1

declare dso_local i32 @strm_str_intern_str(i32) #1

declare dso_local i32 @strm_to_str(i32) #1

declare dso_local i32 @void_txn(i32*) #1

declare dso_local i64 @kvs_serial(%struct.TYPE_7__*) #1

declare dso_local i32 @txn_retry(%struct.TYPE_6__*) #1

declare dso_local i64 @kh_get(i32, i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @kh_value(i32, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
