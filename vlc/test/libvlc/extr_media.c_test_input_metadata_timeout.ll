; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media.c_test_input_metadata_timeout.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media.c_test_input_metadata_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.input_preparser_callbacks_t = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"test_input_metadata_timeout: timeout: %d, wait_and_cancel: %d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fd://\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fd://%u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test timeout\00", align 1
@ITEM_LOCAL = common dso_local global i32 0, align 4
@input_item_preparse_timeout = common dso_local global i32 0, align 4
@META_REQUEST_OPTION_SCOPE_LOCAL = common dso_local global i32 0, align 4
@META_REQUEST_OPTION_FETCH_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @test_input_metadata_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_input_metadata_timeout(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.input_preparser_callbacks_t, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @test_log(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %18 = call i32 @vlc_pipe(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 0
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ false, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = add nsw i32 %29, 11
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ITEM_LOCAL, align 4
  %38 = call i32* @input_item_NewFile(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 @vlc_sem_init(i32* %12, i32 0)
  %44 = getelementptr inbounds %struct.input_preparser_callbacks_t, %struct.input_preparser_callbacks_t* %13, i32 0, i32 0
  %45 = load i32, i32* @input_item_preparse_timeout, align 4
  store i32 %45, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @META_REQUEST_OPTION_SCOPE_LOCAL, align 4
  %51 = load i32, i32* @META_REQUEST_OPTION_FETCH_LOCAL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = call i32 @libvlc_MetadataRequest(i32 %48, i32* %49, i32 %52, %struct.input_preparser_callbacks_t* %13, i32* %12, i32 %53, %struct.TYPE_5__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %25
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @VLC_TICK_FROM_MS(i32 %63)
  %65 = call i32 @vlc_tick_sleep(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = call i32 @libvlc_MetadataCancel(i32 %68, %struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %62, %25
  %72 = call i32 @vlc_sem_wait(i32* %12)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @input_item_Release(i32* %73)
  %75 = call i32 @vlc_sem_destroy(i32* %12)
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @vlc_close(i32 %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vlc_close(i32 %80)
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

declare dso_local i32 @test_log(i8*, i32, i32) #1

declare dso_local i32 @vlc_pipe(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @input_item_NewFile(i8*, i8*, i32, i32) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @libvlc_MetadataRequest(i32, i32*, i32, %struct.input_preparser_callbacks_t*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @libvlc_MetadataCancel(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @vlc_close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
