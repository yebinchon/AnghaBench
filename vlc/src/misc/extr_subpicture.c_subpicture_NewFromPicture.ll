; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_subpicture.c_subpicture_NewFromPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_subpicture.c_subpicture_NewFromPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @subpicture_NewFromPicture(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_14__* %8 to i8*
  %16 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = bitcast %struct.TYPE_14__* %9 to i8*
  %18 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @image_HandlerCreate(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %77

26:                                               ; preds = %3
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call %struct.TYPE_16__* @image_Convert(i32* %27, %struct.TYPE_16__* %28, %struct.TYPE_14__* %8, %struct.TYPE_14__* %9)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @image_HandlerDelete(i32* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = icmp ne %struct.TYPE_16__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %77

35:                                               ; preds = %26
  %36 = call %struct.TYPE_15__* @subpicture_New(i32* null)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %12, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = call i32 @picture_Release(%struct.TYPE_16__* %40)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %77

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = call %struct.TYPE_17__* @subpicture_region_New(%struct.TYPE_14__* %9)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %42
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = call i32 @picture_Release(%struct.TYPE_16__* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %71, align 8
  br label %75

72:                                               ; preds = %42
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = call i32 @picture_Release(%struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %72, %60
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %4, align 8
  br label %77

77:                                               ; preds = %75, %39, %34, %25
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @image_HandlerCreate(i32*) #2

declare dso_local %struct.TYPE_16__* @image_Convert(i32*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @image_HandlerDelete(i32*) #2

declare dso_local %struct.TYPE_15__* @subpicture_New(i32*) #2

declare dso_local i32 @picture_Release(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_17__* @subpicture_region_New(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
