; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@vlm_mutex = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"creating VLM\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"vlm daemon\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"intf-event\00", align 1
@VLC_VAR_ADDRESS = common dso_local global i32 0, align 4
@Manage = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"loading VLM configuration\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"load %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"error while loading the configuration file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @vlm_New(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_10__* @libvlc_priv(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @VLC_OBJECT(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = call i32 @vlc_mutex_lock(i32* @vlm_mutex)
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UINT_MAX, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %36

35:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %3, align 8
  br label %134

39:                                               ; preds = %2
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.TYPE_9__* @vlc_custom_create(i32* %42, i32 56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %6, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %134

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = call i32 @vlc_mutex_init(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = call i32 @vlc_mutex_init(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  %57 = call i32 @vlc_cond_init_daytime(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @TAB_INIT(i32 %66, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @TAB_INIT(i32 %73, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 7
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %82 = call i32 @var_Create(%struct.TYPE_9__* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  %85 = load i32, i32* @Manage, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %88 = call i64 @vlc_clone(i32* %84, i32 %85, %struct.TYPE_9__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %48
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 5
  %93 = call i32 @vlc_cond_destroy(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = call i32 @vlc_mutex_destroy(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = call i32 @vlc_mutex_destroy(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = call i32 @vlc_object_delete(%struct.TYPE_9__* %100)
  %102 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %134

103:                                              ; preds = %48
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %105, align 8
  %106 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  %107 = load i8*, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load i32*, i32** %8, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i64 @vlm_ExecuteCommand(%struct.TYPE_9__* %119, i8* %120, i32** %9)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @msg_Warn(i32* %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %115
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @vlm_MessageDelete(i32* %127)
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %126, %109
  br label %132

132:                                              ; preds = %131, %103
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %3, align 8
  br label %134

134:                                              ; preds = %132, %90, %46, %36
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %135
}

declare dso_local %struct.TYPE_10__* @libvlc_priv(i32*) #1

declare dso_local i32* @VLC_OBJECT(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init_daytime(i32*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @var_Create(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_9__*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i64 @vlm_ExecuteCommand(%struct.TYPE_9__*, i8*, i32**) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @vlm_MessageDelete(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
