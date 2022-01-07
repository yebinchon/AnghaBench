; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension_thread.c_Activate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension_thread.c_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.extension_sys_t* }
%struct.extension_sys_t = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@CMD_ACTIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Reactivating extension %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Activating extension '%s'\00", align 1
@Run = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Activate(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.extension_sys_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.extension_sys_t*, %struct.extension_sys_t** %12, align 8
  store %struct.extension_sys_t* %13, %struct.extension_sys_t** %6, align 8
  %14 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %15 = icmp ne %struct.extension_sys_t* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %19 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %18, i32 0, i32 4
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %22 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %2
  %26 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %27 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %26, i32 0, i32 6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call %struct.TYPE_6__* @calloc(i32 1, i32 4)
  %33 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %34 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %33, i32 0, i32 6
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %36 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %35, i32 0, i32 6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %25
  %40 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %41 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %40, i32 0, i32 4
  %42 = call i32 @vlc_mutex_unlock(i32* %41)
  %43 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %43, i32* %3, align 4
  br label %100

44:                                               ; preds = %25
  %45 = load i32, i32* @CMD_ACTIVATE, align 4
  %46 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %47 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %46, i32 0, i32 6
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %51 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @msg_Dbg(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %61 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %60, i32 0, i32 5
  %62 = call i32 @vlc_cond_signal(i32* %61)
  br label %63

63:                                               ; preds = %54, %44
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %66 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %65, i32 0, i32 4
  %67 = call i32 @vlc_mutex_unlock(i32* %66)
  %68 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %69 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %100

74:                                               ; preds = %64
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @msg_Dbg(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %81 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %83 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %85 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %84, i32 0, i32 3
  %86 = load i32, i32* @Run, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %89 = call i32 @vlc_clone(i32* %85, i32 %86, %struct.TYPE_5__* %87, i32 %88)
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %74
  %93 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %94 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.extension_sys_t*, %struct.extension_sys_t** %6, align 8
  %96 = getelementptr inbounds %struct.extension_sys_t, %struct.extension_sys_t* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %74
  %99 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %92, %72, %39
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_clone(i32*, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
