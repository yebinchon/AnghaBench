; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_CreateFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_CreateFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_17__, %struct.TYPE_16__, i32*, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_15__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32*, i32*, i8*, i8*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32*, i32)* @CreateFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @CreateFilter(i32* %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_19__* %4, %struct.TYPE_19__* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call %struct.TYPE_18__* @vlc_custom_create(i32* %19, i32 96, i8* %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %18, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %23 = icmp eq %struct.TYPE_18__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  br label %131

28:                                               ; preds = %8
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %40 = bitcast %struct.TYPE_19__* %38 to i8*
  %41 = bitcast %struct.TYPE_19__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %52 = bitcast %struct.TYPE_19__* %50 to i8*
  %53 = bitcast %struct.TYPE_19__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %28
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %66 = call i64 @aout_FormatNbChannels(%struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %73

73:                                               ; preds = %64, %28
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %80 = call i64 @aout_FormatNbChannels(%struct.TYPE_19__* %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i32* @module_need(%struct.TYPE_18__* %88, i8* %89, i8* %90, i32 0)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98, %87
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %106 = call i32 @AOUT_FMTS_IDENTICAL(%struct.TYPE_19__* %104, %struct.TYPE_19__* %105)
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %112 = call i32 @AOUT_FMTS_IDENTICAL(%struct.TYPE_19__* %110, %struct.TYPE_19__* %111)
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %101, %98
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %121 = call i32 @vlc_object_delete(%struct.TYPE_18__* %120)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %18, align 8
  br label %129

122:                                              ; preds = %114
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %129

129:                                              ; preds = %122, %119
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %9, align 8
  br label %131

131:                                              ; preds = %129, %27
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %132
}

declare dso_local %struct.TYPE_18__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @aout_FormatNbChannels(%struct.TYPE_19__*) #1

declare dso_local i32* @module_need(%struct.TYPE_18__*, i8*, i8*, i32) #1

declare dso_local i32 @AOUT_FMTS_IDENTICAL(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
