; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_meta.c_input_item_WriteMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_meta.c_input_item_WriteMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [12 x i8] c"meta writer\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot write meta to remote media %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_item_WriteMeta(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_10__* @vlc_custom_create(i32* %10, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = call i32 @vlc_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = call i32 @vlc_mutex_unlock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ITEM_TYPE_FILE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %69

33:                                               ; preds = %16
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i8* @input_item_GetURI(%struct.TYPE_11__* %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32* @vlc_uri2path(i8* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @msg_Err(%struct.TYPE_10__* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %33
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %69

56:                                               ; preds = %48
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = call i32* @module_need(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @module_unneed(%struct.TYPE_10__* %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = call i32 @vlc_object_delete(%struct.TYPE_10__* %66)
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %55, %32
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = call i32 @vlc_object_delete(%struct.TYPE_10__* %70)
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %65, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_10__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i8* @input_item_GetURI(%struct.TYPE_11__*) #1

declare dso_local i32* @vlc_uri2path(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @module_need(%struct.TYPE_10__*, i8*, i32*, i32) #1

declare dso_local i32 @module_unneed(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
