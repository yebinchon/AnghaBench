; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_set_value.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid argument to %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sub-source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32)* @set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_value(i32* %0, i8* noalias %1, %struct.TYPE_7__* noalias %2, i32 %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %112

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = bitcast %struct.TYPE_6__* %14 to i8*
  %29 = bitcast %struct.TYPE_6__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %60 [
    i32 0, label %34
    i32 129, label %50
    i32 130, label %50
    i32 128, label %50
  ]

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @VLC_OBJECT(i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %44 = call i32 @get_filter_str(i32 %36, i8* %39, i32 %42, i8** %15, i32* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %112

49:                                               ; preds = %34
  store i32 128, i32* %13, align 4
  br label %63

50:                                               ; preds = %23, %23, %23
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %112

59:                                               ; preds = %50
  br label %63

60:                                               ; preds = %23
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %112

63:                                               ; preds = %59, %49
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = bitcast %struct.TYPE_6__* %14 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = call i32 @var_SetChecked(i32* %64, i8* %65, i32 %66, i64 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32** @GetVouts(i32* %70, i64* %17)
  store i32** %71, i32*** %18, align 8
  store i64 0, i64* %19, align 8
  br label %72

72:                                               ; preds = %100, %63
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i32**, i32*** %18, align 8
  %78 = load i64, i64* %19, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %13, align 4
  %83 = bitcast %struct.TYPE_6__* %14 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i32 @var_SetChecked(i32* %80, i8* %81, i32 %82, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load i32**, i32*** %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @var_TriggerCallback(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %76
  %95 = load i32**, i32*** %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @vout_Release(i32* %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i64, i64* %19, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %19, align 8
  br label %72

103:                                              ; preds = %72
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @free(i32 %110)
  br label %112

112:                                              ; preds = %22, %48, %56, %60, %108, %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_filter_str(i32, i8*, i32, i8**, i32*) #2

declare dso_local i32 @VLC_OBJECT(i32*) #2

declare dso_local i32 @libvlc_printerr(i8*, i8*) #2

declare dso_local i32 @var_SetChecked(i32*, i8*, i32, i64) #2

declare dso_local i32** @GetVouts(i32*, i64*) #2

declare dso_local i32 @var_TriggerCallback(i32*, i8*) #2

declare dso_local i32 @vout_Release(i32*) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
