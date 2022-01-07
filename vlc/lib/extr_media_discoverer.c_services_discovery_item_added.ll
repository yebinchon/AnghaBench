; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_discoverer.c_services_discovery_item_added.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_discoverer.c_services_discovery_item_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32 }

@kVLCDictionaryNotFound = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32*, i8*)* @services_discovery_item_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @services_discovery_item_added(%struct.TYPE_14__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @libvlc_media_new_from_input_item(i32 %22, i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %71

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.TYPE_15__* @vlc_dictionary_value_for_key(i32* %33, i8* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %11, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kVLCDictionaryNotFound, align 8
  %38 = icmp eq %struct.TYPE_15__* %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %31
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32* @libvlc_media_new_as_node(i32 %42, i8* %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call %struct.TYPE_15__* @libvlc_media_subitems(i32* %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %11, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = call i32 @vlc_dictionary_insert(i32* %50, i8* %51, %struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @libvlc_media_list_lock(%struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @libvlc_media_list_internal_add_media(%struct.TYPE_15__* %60, i32* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = call i32 @libvlc_media_list_unlock(%struct.TYPE_15__* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @libvlc_media_release(i32* %67)
  br label %69

69:                                               ; preds = %39, %31
  br label %70

70:                                               ; preds = %69, %28
  br label %71

71:                                               ; preds = %70, %27
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %73 = call i32 @libvlc_media_list_lock(%struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @libvlc_media_list_internal_add_media(%struct.TYPE_15__* %74, i32* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = call i32 @libvlc_media_list_unlock(%struct.TYPE_15__* %77)
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @libvlc_media_release(i32* %79)
  ret void
}

declare dso_local i32* @libvlc_media_new_from_input_item(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32* @libvlc_media_new_as_node(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @libvlc_media_subitems(i32*) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @libvlc_media_list_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @libvlc_media_list_internal_add_media(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @libvlc_media_list_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
