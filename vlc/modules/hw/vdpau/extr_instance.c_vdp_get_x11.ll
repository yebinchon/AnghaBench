; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_instance.c_vdp_get_x11.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_instance.c_vdp_get_x11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_6__* }

@VDP_STATUS_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@VDP_STATUS_ERROR = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@list = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vdp_get_x11(i8* %0, i32 %1, i32** noalias %2, i32* noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @VDP_STATUS_RESOURCES, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @VDP_STATUS_ERROR, align 8
  store i64 %21, i64* %5, align 8
  br label %73

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %4
  %24 = call i32 @pthread_mutex_lock(i32* @lock)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_6__* @vdp_instance_lookup(i8* %25, i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = call i32 @pthread_mutex_unlock(i32* @lock)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %63

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @vdp_instance_create(i8* %33, i32 %34, %struct.TYPE_6__** %10)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @VDP_STATUS_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %5, align 8
  br label %73

41:                                               ; preds = %32
  %42 = call i32 @pthread_mutex_lock(i32* @lock)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.TYPE_6__* @vdp_instance_lookup(i8* %43, i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %11, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = call i32 @pthread_mutex_unlock(i32* @lock)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = call i32 @vdp_instance_destroy(%struct.TYPE_6__* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %10, align 8
  br label %62

56:                                               ; preds = %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @list, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** @list, align 8
  %61 = call i32 @pthread_mutex_unlock(i32* @lock)
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %8, align 8
  store i32* %66, i32** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* @VDP_STATUS_OK, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %63, %39, %20
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @vdp_instance_lookup(i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @vdp_instance_create(i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vdp_instance_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
