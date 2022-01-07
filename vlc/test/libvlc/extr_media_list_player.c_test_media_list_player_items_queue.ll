; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_items_queue.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_items_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_items_order_data = type { i32 }

@test_default_sample = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Testing media player item queue-ing\0A\00", align 1
@test_media_list_player_items_queue.check = internal global %struct.check_items_order_data zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@libvlc_MediaListPlayerNextItemSet = common dso_local global i32 0, align 4
@check_items_order_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list_player_items_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list_player_items_queue(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** @test_default_sample, align 8
  store i8* %14, i8** %9, align 8
  %15 = call i32 @test_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32* @libvlc_new(i32 %16, i8** %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* @libvlc_media_new_path(i32* %23, i8* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @libvlc_media_list_new(i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @libvlc_media_list_player_new(i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @libvlc_media_list_add_media(i32* %40, i32* %41)
  %43 = call i32 @check_data_init(%struct.check_items_order_data* @test_media_list_player_items_queue.check)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32* @media_list_add_file_path(i32* %46, i32* %47, i8* %48)
  %50 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32* @media_list_add_file_path(i32* %51, i32* %52, i8* %53)
  %55 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32* @media_list_add_file_path(i32* %56, i32* %57, i8* %58)
  %60 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @libvlc_media_new_as_node(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = ptrtoint i32* %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @libvlc_media_list_add_media(i32* %66, i32* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @libvlc_media_subitems(i32* %71)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32* @media_list_add_file_path(i32* %73, i32* %74, i8* %75)
  %77 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32* @media_list_add_file_path(i32* %78, i32* %79, i8* %80)
  %82 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32* @media_list_add_file_path(i32* %83, i32* %84, i8* %85)
  %87 = call i32 @queue_expected_item(%struct.check_items_order_data* @test_media_list_player_items_queue.check, i32* %86)
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @libvlc_media_list_release(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @libvlc_media_list_player_set_media_list(i32* %90, i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @libvlc_media_list_player_event_manager(i32* %93)
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @libvlc_MediaListPlayerNextItemSet, align 4
  %97 = load i32, i32* @check_items_order_callback, align 4
  %98 = call i32 @libvlc_event_attach(i32* %95, i32 %96, i32 %97, %struct.check_items_order_data* @test_media_list_player_items_queue.check)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @libvlc_media_list_player_play(i32* %103)
  %105 = call i32 @wait_queued_items(%struct.check_items_order_data* @test_media_list_player_items_queue.check)
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @stop_and_wait(i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @libvlc_media_list_player_release(i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @libvlc_release(i32* %110)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_list_new(i32*) #1

declare dso_local i32* @libvlc_media_list_player_new(i32*) #1

declare dso_local i32 @libvlc_media_list_add_media(i32*, i32*) #1

declare dso_local i32 @check_data_init(%struct.check_items_order_data*) #1

declare dso_local i32 @queue_expected_item(%struct.check_items_order_data*, i32*) #1

declare dso_local i32* @media_list_add_file_path(i32*, i32*, i8*) #1

declare dso_local i32* @libvlc_media_new_as_node(i32*, i8*) #1

declare dso_local i32* @libvlc_media_subitems(i32*) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32 @libvlc_media_list_player_set_media_list(i32*, i32*) #1

declare dso_local i32* @libvlc_media_list_player_event_manager(i32*) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, %struct.check_items_order_data*) #1

declare dso_local i32 @libvlc_media_list_player_play(i32*) #1

declare dso_local i32 @wait_queued_items(%struct.check_items_order_data*) #1

declare dso_local i32 @stop_and_wait(i32*) #1

declare dso_local i32 @libvlc_media_list_player_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
