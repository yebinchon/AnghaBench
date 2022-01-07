; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_toprimitive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_toprimitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@JS_TOBJECT = common dso_local global i64 0, align 8
@JS_HNONE = common dso_local global i32 0, align 4
@JS_CDATE = common dso_local global i64 0, align 8
@JS_HSTRING = common dso_local global i32 0, align 4
@JS_HNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot convert object to primitive\00", align 1
@JS_TLITSTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsV_toprimitive(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @JS_TOBJECT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %91

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @JS_HNONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @JS_CDATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @JS_HSTRING, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @JS_HNUMBER, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @JS_HSTRING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = call i64 @jsV_toString(%struct.TYPE_17__* %39, %struct.TYPE_18__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = call i64 @jsV_valueOf(%struct.TYPE_17__* %44, %struct.TYPE_18__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = call %struct.TYPE_16__* @js_tovalue(%struct.TYPE_17__* %50, i32 -1)
  %52 = bitcast %struct.TYPE_16__* %49 to i8*
  %53 = bitcast %struct.TYPE_16__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = call i32 @js_pop(%struct.TYPE_17__* %54, i32 1)
  br label %91

56:                                               ; preds = %43
  br label %76

57:                                               ; preds = %34
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = call i64 @jsV_valueOf(%struct.TYPE_17__* %58, %struct.TYPE_18__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = call i64 @jsV_toString(%struct.TYPE_17__* %63, %struct.TYPE_18__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = call %struct.TYPE_16__* @js_tovalue(%struct.TYPE_17__* %69, i32 -1)
  %71 = bitcast %struct.TYPE_16__* %68 to i8*
  %72 = bitcast %struct.TYPE_16__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = call i32 @js_pop(%struct.TYPE_17__* %73, i32 1)
  br label %91

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = call i32 @js_typeerror(%struct.TYPE_17__* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i64, i64* @JS_TLITSTR, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %67, %48, %13
  ret void
}

declare dso_local i64 @jsV_toString(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @jsV_valueOf(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @js_tovalue(%struct.TYPE_17__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @js_pop(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
