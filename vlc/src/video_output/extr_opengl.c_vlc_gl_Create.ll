; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_opengl.c_vlc_gl_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_opengl.c_vlc_gl_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32*, i32* }
%struct.vout_display_cfg = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vlc_gl_priv_t = type { %struct.TYPE_8__, i32 }

@.str = private unnamed_addr constant [7 x i8] c"opengl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"opengl es2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@vlc_gl_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @vlc_gl_Create(%struct.vout_display_cfg* noalias %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.vout_display_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vlc_gl_priv_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.vout_display_cfg* %0, %struct.vout_display_cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.vout_display_cfg*, %struct.vout_display_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.vout_display_cfg, %struct.vout_display_cfg* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %19

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %19

18:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

19:                                               ; preds = %17, %16
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @VLC_OBJECT(i32* %20)
  %22 = call %struct.vlc_gl_priv_t* @vlc_custom_create(i32 %21, i32 56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct.vlc_gl_priv_t* %22, %struct.vlc_gl_priv_t** %9, align 8
  %23 = load %struct.vlc_gl_priv_t*, %struct.vlc_gl_priv_t** %9, align 8
  %24 = icmp eq %struct.vlc_gl_priv_t* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.vlc_gl_priv_t*, %struct.vlc_gl_priv_t** %9, align 8
  %31 = getelementptr inbounds %struct.vlc_gl_priv_t, %struct.vlc_gl_priv_t* %30, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @vlc_gl_start, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = load %struct.vout_display_cfg*, %struct.vout_display_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.vout_display_cfg, %struct.vout_display_cfg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vout_display_cfg*, %struct.vout_display_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.vout_display_cfg, %struct.vout_display_cfg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @vlc_module_load(%struct.TYPE_8__* %35, i8* %36, i8* %37, i32 1, i32 %38, %struct.TYPE_8__* %39, i32 %43, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %29
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = call i32 @vlc_object_delete(%struct.TYPE_8__* %56)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

58:                                               ; preds = %29
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %73, %68, %63, %58
  %79 = phi i1 [ false, %68 ], [ false, %63 ], [ false, %58 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.vlc_gl_priv_t*, %struct.vlc_gl_priv_t** %9, align 8
  %83 = getelementptr inbounds %struct.vlc_gl_priv_t, %struct.vlc_gl_priv_t* %82, i32 0, i32 1
  %84 = call i32 @vlc_atomic_rc_init(i32* %83)
  %85 = load %struct.vlc_gl_priv_t*, %struct.vlc_gl_priv_t** %9, align 8
  %86 = getelementptr inbounds %struct.vlc_gl_priv_t, %struct.vlc_gl_priv_t* %85, i32 0, i32 0
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %4, align 8
  br label %87

87:                                               ; preds = %78, %55, %28, %18
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %88
}

declare dso_local %struct.vlc_gl_priv_t* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_module_load(%struct.TYPE_8__*, i8*, i8*, i32, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
