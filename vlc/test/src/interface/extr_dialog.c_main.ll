; ModuleID = '/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cb_answer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"VLC_PLUGIN_PATH\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"../modules\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"VLC_LIB_PATH\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"testing dialog callbacks\0A\00", align 1
@update_progress_cb = common dso_local global i32 0, align 4
@cancel_cb = common dso_local global i32 0, align 4
@display_progress_cb = common dso_local global i32 0, align 4
@display_question_cb = common dso_local global i32 0, align 4
@display_login_cb = common dso_local global i32 0, align 4
@display_error_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"testing Qt dialog callbacks\0A\00", align 1
@main.args = internal global [1 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)], align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"--no-qt-privacy-ask\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"qt\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.cb_answer, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @alarm(i32 10)
  br label %26

26:                                               ; preds = %24, %19
  %27 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %28 = call i32 @setenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %29 = call %struct.TYPE_7__* @libvlc_new(i32 0, i8** null)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %36 = load i32, i32* @update_progress_cb, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %38 = load i32, i32* @cancel_cb, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %40 = load i32, i32* @display_progress_cb, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %42 = load i32, i32* @display_question_cb, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %44 = load i32, i32* @display_login_cb, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %46 = load i32, i32* @display_error_cb, align 4
  store i32 %46, i32* %45, align 4
  %47 = bitcast %struct.cb_answer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 4, i1 false)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vlc_dialog_provider_set_callbacks(i32 %50, %struct.TYPE_6__* %8, %struct.cb_answer* %9)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @VLC_OBJECT(i32 %54)
  %56 = call i32 @test_dialogs(i32 %55, %struct.cb_answer* %9, i32 100000)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vlc_dialog_provider_set_callbacks(i32 %59, %struct.TYPE_6__* null, %struct.cb_answer* null)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = call i32 @libvlc_release(%struct.TYPE_7__* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %26
  %66 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %67 = call %struct.TYPE_7__* @libvlc_new(i32 1, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.args, i64 0, i64 0))
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %7, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @libvlc_InternalAddIntf(i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VLC_OBJECT(i32 %83)
  %85 = call i32 @test_dialogs(i32 %84, %struct.cb_answer* null, i32 3000000)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = call i32 @libvlc_release(%struct.TYPE_7__* %86)
  br label %88

88:                                               ; preds = %65, %26
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vlc_dialog_provider_set_callbacks(i32, %struct.TYPE_6__*, %struct.cb_answer*) #1

declare dso_local i32 @test_dialogs(i32, %struct.cb_answer*, i32) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @libvlc_release(%struct.TYPE_7__*) #1

declare dso_local i32 @libvlc_InternalAddIntf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
