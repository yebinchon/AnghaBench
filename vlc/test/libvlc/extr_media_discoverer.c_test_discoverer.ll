; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_discoverer.c_test_discoverer.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_discoverer.c_test_discoverer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"creating and starting discoverer %s\0A\00", align 1
@libvlc_MediaListItemAdded = common dso_local global i32 0, align 4
@ml_item_added = common dso_local global i32 0, align 4
@libvlc_MediaListItemDeleted = common dso_local global i32 0, align 4
@ml_item_deleted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"warn: could not start md (not critical)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Press any keys to stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @test_discoverer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_discoverer(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @libvlc_media_discoverer_new(i32* %13, i8* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @libvlc_media_discoverer_media_list(i32* %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @libvlc_media_list_event_manager(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @libvlc_MediaListItemAdded, align 4
  %33 = load i32, i32* @ml_item_added, align 4
  %34 = call i32 @libvlc_event_attach(i32* %31, i32 %32, i32 %33, i32* null)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @libvlc_MediaListItemDeleted, align 4
  %41 = load i32, i32* @ml_item_deleted, align 4
  %42 = call i32 @libvlc_event_attach(i32* %39, i32 %40, i32 %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @libvlc_media_discoverer_start(i32* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %64

52:                                               ; preds = %3
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @libvlc_media_discoverer_is_running(i32* %53)
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (...) @getchar()
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @libvlc_media_discoverer_stop(i32* %62)
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @libvlc_MediaListItemAdded, align 4
  %67 = load i32, i32* @ml_item_added, align 4
  %68 = call i32 @libvlc_event_detach(i32* %65, i32 %66, i32 %67, i32* null)
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* @libvlc_MediaListItemDeleted, align 4
  %71 = load i32, i32* @ml_item_deleted, align 4
  %72 = call i32 @libvlc_event_detach(i32* %69, i32 %70, i32 %71, i32* null)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @libvlc_media_list_release(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @libvlc_media_discoverer_release(i32* %75)
  ret void
}

declare dso_local i32 @test_log(i8*, ...) #1

declare dso_local i32* @libvlc_media_discoverer_new(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @libvlc_media_discoverer_media_list(i32*) #1

declare dso_local i32* @libvlc_media_list_event_manager(i32*) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @libvlc_media_discoverer_start(i32*) #1

declare dso_local i32 @libvlc_media_discoverer_is_running(i32*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @libvlc_media_discoverer_stop(i32*) #1

declare dso_local i32 @libvlc_event_detach(i32*, i32, i32, i32*) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32 @libvlc_media_discoverer_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
