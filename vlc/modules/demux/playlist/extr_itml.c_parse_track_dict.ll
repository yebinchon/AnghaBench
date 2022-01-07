; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_track_dict.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_track_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"name: %s, artist: %s, album: %s, genre: %s, trackNum: %s, location: %s\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"ignoring track without Location entry\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Adding '%s'\00", align 1
@COMPLEX_CONTENT = common dso_local global i32 0, align 4
@SIMPLE_CONTENT = common dso_local global i32 0, align 4
@UNKNOWN_CONTENT = common dso_local global i32 0, align 4
@save_data = common dso_local global i32 0, align 4
@skip_element = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32*, i8*, i8*)* @parse_track_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_track_dict(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [8 x i8], align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i32 @VLC_UNUSED(i8* %17)
  %19 = load i8*, i8** %13, align 8
  %20 = call i32 @VLC_UNUSED(i8* %19)
  store i32* null, i32** %14, align 8
  %21 = call %struct.TYPE_15__* (...) @new_track()
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %10, align 8
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  store i8 ptrtoint ([6 x i8]* @.str to i8), i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 ptrtoint ([4 x i8]* @.str.1 to i8), i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 ptrtoint ([8 x i8]* @.str.2 to i8), i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 ptrtoint ([7 x i8]* @.str.3 to i8), i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 ptrtoint ([5 x i8]* @.str.4 to i8), i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 ptrtoint ([5 x i8]* @.str.5 to i8), i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 ptrtoint ([6 x i8]* @.str.6 to i8), i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %35 = call i32 @parse_dict(%struct.TYPE_16__* %30, i32* %31, %struct.TYPE_15__* %32, i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @msg_Dbg(%struct.TYPE_16__* %36, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %6
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = call i32 @msg_Warn(%struct.TYPE_16__* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = call i32 @free_track(%struct.TYPE_15__* %63)
  store i32 1, i32* %7, align 4
  br label %92

65:                                               ; preds = %6
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @msg_Info(%struct.TYPE_16__* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @input_item_New(i32 %73, i32* null)
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @input_item_node_AppendItem(i32* %75, i32* %76)
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = call i32 @add_meta(i32* %78, %struct.TYPE_15__* %79)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @input_item_Release(i32* %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = call i32 @free_track(%struct.TYPE_15__* %89)
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %65, %60
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local %struct.TYPE_15__* @new_track(...) #1

declare dso_local i32 @parse_dict(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @free_track(%struct.TYPE_15__*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32* @input_item_New(i32, i32*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @add_meta(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
