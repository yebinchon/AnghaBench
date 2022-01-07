; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_full_chapter_descriptions.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_full_chapter_descriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_title = type { i64, i32, %struct.vlc_player_chapter*, i32* }
%struct.vlc_player_chapter = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_player_get_full_chapter_descriptions(%struct.vlc_player_title* %0, i32 %1, %struct.TYPE_6__*** %2) #0 {
  %4 = alloca %struct.vlc_player_title*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlc_player_title*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.vlc_player_chapter*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  store %struct.vlc_player_title* %0, %struct.vlc_player_title** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__*** %2, %struct.TYPE_6__**** %6, align 8
  %18 = load %struct.vlc_player_title*, %struct.vlc_player_title** %4, align 8
  %19 = call i32 @assert(%struct.vlc_player_title* %18)
  store i32 -1, i32* %7, align 4
  %20 = load %struct.vlc_player_title*, %struct.vlc_player_title** %4, align 8
  %21 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @vlc_player_Lock(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @vlc_player_GetTitleList(i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %136

30:                                               ; preds = %3
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @vlc_player_title_list_GetCount(i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %10, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %136

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32* %39, i32 %40)
  store %struct.vlc_player_title* %41, %struct.vlc_player_title** %11, align 8
  %42 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %43 = call i32 @assert(%struct.vlc_player_title* %42)
  %44 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %45 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call %struct.TYPE_6__** @vlc_alloc(i64 %47, i32 8)
  store %struct.TYPE_6__** %48, %struct.TYPE_6__*** %13, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %53 = icmp ne %struct.TYPE_6__** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %136

55:                                               ; preds = %51, %38
  store i64 0, i64* %14, align 8
  br label %56

56:                                               ; preds = %128, %55
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %56
  %61 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %62 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %61, i32 0, i32 2
  %63 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %63, i64 %64
  store %struct.vlc_player_chapter* %65, %struct.vlc_player_chapter** %15, align 8
  %66 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %16, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @libvlc_chapter_descriptions_release(%struct.TYPE_6__** %70, i64 %71)
  br label %136

73:                                               ; preds = %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %76
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %12, align 8
  %80 = sub i64 %79, 1
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %84 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %83, i32 0, i32 2
  %85 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %85, i64 %87
  %89 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  br label %95

91:                                               ; preds = %73
  %92 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %93 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  br label %95

95:                                               ; preds = %91, %82
  %96 = phi i32 [ %90, %82 ], [ %94, %91 ]
  store i32 %96, i32* %17, align 4
  %97 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %15, align 8
  %98 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @MS_FROM_VLC_TICK(i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %15, align 8
  %104 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %95
  %108 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %15, align 8
  %109 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32* @strdup(i64 %110)
  br label %113

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %107
  %114 = phi i32* [ %111, %107 ], [ null, %112 ]
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i8* @MS_FROM_VLC_TICK(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %118 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %113
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %14, align 8
  br label %56

131:                                              ; preds = %56
  %132 = load i64, i64* %12, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  %134 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %135 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %6, align 8
  store %struct.TYPE_6__** %134, %struct.TYPE_6__*** %135, align 8
  br label %136

136:                                              ; preds = %131, %69, %54, %37, %29
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @vlc_player_Unlock(i32* %137)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @assert(%struct.vlc_player_title*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32* @vlc_player_GetTitleList(i32*) #1

declare dso_local i64 @vlc_player_title_list_GetCount(i32*) #1

declare dso_local %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32*, i32) #1

declare dso_local %struct.TYPE_6__** @vlc_alloc(i64, i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @libvlc_chapter_descriptions_release(%struct.TYPE_6__**, i64) #1

declare dso_local i8* @MS_FROM_VLC_TICK(i32) #1

declare dso_local i32* @strdup(i64) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
