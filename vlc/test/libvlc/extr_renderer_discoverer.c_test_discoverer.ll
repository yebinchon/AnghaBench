; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_renderer_discoverer.c_test_discoverer.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_renderer_discoverer.c_test_discoverer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"creating and starting discoverer %s\0A\00", align 1
@libvlc_RendererDiscovererItemAdded = common dso_local global i32 0, align 4
@renderer_discoverer_item_added = common dso_local global i32 0, align 4
@libvlc_RendererDiscovererItemDeleted = common dso_local global i32 0, align 4
@renderer_discoverer_item_deleted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"warn: could not start md (not critical)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Press any keys to stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_discoverer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_discoverer(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @libvlc_renderer_discoverer_new(i32* %10, i8* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @libvlc_renderer_discoverer_event_manager(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @libvlc_RendererDiscovererItemAdded, align 4
  %24 = load i32, i32* @renderer_discoverer_item_added, align 4
  %25 = call i32 @libvlc_event_attach(i32* %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @libvlc_RendererDiscovererItemDeleted, align 4
  %32 = load i32, i32* @renderer_discoverer_item_deleted, align 4
  %33 = call i32 @libvlc_event_attach(i32* %30, i32 %31, i32 %32, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @libvlc_renderer_discoverer_start(i32* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %48

43:                                               ; preds = %2
  %44 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 (...) @getchar()
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @libvlc_renderer_discoverer_stop(i32* %46)
  br label %48

48:                                               ; preds = %43, %41
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @libvlc_renderer_discoverer_release(i32* %49)
  ret void
}

declare dso_local i32 @test_log(i8*, ...) #1

declare dso_local i32* @libvlc_renderer_discoverer_new(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @libvlc_renderer_discoverer_event_manager(i32*) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @libvlc_renderer_discoverer_start(i32*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @libvlc_renderer_discoverer_stop(i32*) #1

declare dso_local i32 @libvlc_renderer_discoverer_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
