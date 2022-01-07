; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_check_items_order_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_check_items_order_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.check_items_order_data = type { i32, i32, i32, i32** }

@libvlc_meta_Title = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Got items %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Item %d '%s' was correctly queued\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Done playing with success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @check_items_order_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_items_order_callback(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.check_items_order_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.check_items_order_data*
  store %struct.check_items_order_data* %10, %struct.check_items_order_data** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %17 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %20 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %26 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %29 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %27, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @libvlc_meta_Title, align 4
  %39 = call i8* @libvlc_media_get_meta(i32* %37, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %36, %2
  %45 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %46 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %49 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %47, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp eq i32* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @libvlc_meta_Title, align 4
  %60 = call i8* @libvlc_media_get_meta(i32* %58, i32 %59)
  store i8* %60, i8** %8, align 8
  %61 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %62 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %69 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %72 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %44
  %77 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %79 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %44
  %81 = load %struct.check_items_order_data*, %struct.check_items_order_data** %5, align 8
  %82 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @libvlc_media_get_meta(i32*, i32) #1

declare dso_local i32 @test_log(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
