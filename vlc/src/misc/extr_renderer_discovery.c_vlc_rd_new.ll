; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_renderer_discovery.c_vlc_rd_new.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_renderer_discovery.c_vlc_rd_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.vlc_renderer_discovery_owner }
%struct.vlc_renderer_discovery_owner = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"renderer discovery\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"renderer_discovery\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"no suitable renderer discovery module for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @vlc_rd_new(i32* %0, i8* %1, %struct.vlc_renderer_discovery_owner* noalias %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vlc_renderer_discovery_owner*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.vlc_renderer_discovery_owner* %2, %struct.vlc_renderer_discovery_owner** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_7__* @vlc_custom_create(i32* %9, i32 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @config_ChainCreate(i32* %16, i32* %18, i8* %19)
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load %struct.vlc_renderer_discovery_owner*, %struct.vlc_renderer_discovery_owner** %7, align 8
  %25 = bitcast %struct.vlc_renderer_discovery_owner* %23 to i8*
  %26 = bitcast %struct.vlc_renderer_discovery_owner* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @module_need(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 1)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %14
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @msg_Err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @config_ChainDestroy(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = call i32 @vlc_object_delete(%struct.TYPE_7__* %50)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %52

52:                                               ; preds = %38, %14
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %4, align 8
  br label %54

54:                                               ; preds = %52, %13
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %55
}

declare dso_local %struct.TYPE_7__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @config_ChainCreate(i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @module_need(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @config_ChainDestroy(i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
