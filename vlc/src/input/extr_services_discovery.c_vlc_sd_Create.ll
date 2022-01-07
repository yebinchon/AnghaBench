; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_services_discovery.c_vlc_sd_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_services_discovery.c_vlc_sd_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.services_discovery_owner_t, i32*, i32 }
%struct.services_discovery_owner_t = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"services discovery\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"services_discovery\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"no suitable services discovery module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @vlc_sd_Create(i32* %0, i8* %1, %struct.services_discovery_owner_t* noalias %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.services_discovery_owner_t*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.services_discovery_owner_t* %2, %struct.services_discovery_owner_t** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_7__* @vlc_custom_create(i32* %9, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @config_ChainCreate(i32* %19, i32* %21, i8* %22)
  %24 = call i32 @free(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.services_discovery_owner_t*, %struct.services_discovery_owner_t** %7, align 8
  %30 = bitcast %struct.services_discovery_owner_t* %28 to i8*
  %31 = bitcast %struct.services_discovery_owner_t* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @module_need(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 1)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %17
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = call i32 @msg_Err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = call i32 @vlc_sd_Destroy(%struct.TYPE_7__* %46)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %48

48:                                               ; preds = %43, %17
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  br label %50

50:                                               ; preds = %48, %16
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %51
}

declare dso_local %struct.TYPE_7__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @config_ChainCreate(i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @module_need(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @vlc_sd_Destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
