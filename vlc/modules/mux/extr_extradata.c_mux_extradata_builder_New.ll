; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_mux_extradata_builder_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_mux_extradata_builder_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.mux_extradata_builder_cb* }
%struct.mux_extradata_builder_cb = type { i64 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.mux_extradata_builder_cb, i64 }

@mappings = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @mux_extradata_builder_New(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mux_extradata_builder_cb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mux_extradata_builder_cb* null, %struct.mux_extradata_builder_cb** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mappings, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_9__* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mappings, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mappings, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %14
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mappings, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.mux_extradata_builder_cb*, %struct.mux_extradata_builder_cb** %35, align 8
  store %struct.mux_extradata_builder_cb* %36, %struct.mux_extradata_builder_cb** %6, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %9

40:                                               ; preds = %31, %9
  %41 = load %struct.mux_extradata_builder_cb*, %struct.mux_extradata_builder_cb** %6, align 8
  %42 = icmp eq %struct.mux_extradata_builder_cb* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %76

44:                                               ; preds = %40
  %45 = call %struct.TYPE_8__* @calloc(i32 1, i32 16)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %8, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.mux_extradata_builder_cb*, %struct.mux_extradata_builder_cb** %6, align 8
  %55 = bitcast %struct.mux_extradata_builder_cb* %53 to i8*
  %56 = bitcast %struct.mux_extradata_builder_cb* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.mux_extradata_builder_cb, %struct.mux_extradata_builder_cb* %58, i32 0, i32 0
  %60 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %59, align 8
  %61 = icmp ne i64 (%struct.TYPE_8__*)* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %48
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.mux_extradata_builder_cb, %struct.mux_extradata_builder_cb* %64, i32 0, i32 0
  %66 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = call i64 %66(%struct.TYPE_8__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = call i32 @free(%struct.TYPE_8__* %71)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %73

73:                                               ; preds = %70, %62, %48
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %3, align 8
  br label %76

76:                                               ; preds = %74, %43
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %77
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
