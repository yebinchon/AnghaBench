; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_InitField.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_InitField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@vlc_meta_Title = common dso_local global i32 0, align 4
@INPUT_DURATION_INDEFINITE = common dso_local global i32 0, align 4
@INPUT_DURATION_UNSET = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@vlc_meta_Artist = common dso_local global i32 0, align 4
@vlc_meta_Album = common dso_local global i32 0, align 4
@vlc_meta_AlbumArtist = common dso_local global i32 0, align 4
@vlc_meta_Genre = common dso_local global i32 0, align 4
@vlc_meta_Date = common dso_local global i32 0, align 4
@vlc_meta_TrackNumber = common dso_local global i32 0, align 4
@vlc_meta_DiscNumber = common dso_local global i32 0, align 4
@vlc_meta_URL = common dso_local global i32 0, align 4
@vlc_meta_Rating = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown sort key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_playlist_item_meta*, i32)* @vlc_playlist_item_meta_InitField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_playlist_item_meta_InitField(%struct.vlc_playlist_item_meta* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_item_meta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_item_meta** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %18 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %17, i32 0, i32 15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %6, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %190 [
    i32 130, label %23
    i32 133, label %39
    i32 136, label %62
    i32 138, label %70
    i32 137, label %78
    i32 132, label %86
    i32 135, label %94
    i32 129, label %116
    i32 134, label %138
    i32 128, label %160
    i32 131, label %168
  ]

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* @vlc_meta_Title, align 4
  %26 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %24, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @EMPTY_STR(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %36 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %35, i32 0, i32 14
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @vlc_playlist_item_meta_CopyString(i32* %36, i8* %37)
  store i32 %38, i32* %3, align 4
  br label %193

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @INPUT_DURATION_INDEFINITE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @INPUT_DURATION_UNSET, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %53 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %52, i32 0, i32 13
  store i32 0, i32* %53, align 8
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %59 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %193

62:                                               ; preds = %2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = load i32, i32* @vlc_meta_Artist, align 4
  %65 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %63, i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %67 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %66, i32 0, i32 12
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @vlc_playlist_item_meta_CopyString(i32* %67, i8* %68)
  store i32 %69, i32* %3, align 4
  br label %193

70:                                               ; preds = %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = load i32, i32* @vlc_meta_Album, align 4
  %73 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %71, i32 %72)
  store i8* %73, i8** %9, align 8
  %74 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %75 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %74, i32 0, i32 11
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @vlc_playlist_item_meta_CopyString(i32* %75, i8* %76)
  store i32 %77, i32* %3, align 4
  br label %193

78:                                               ; preds = %2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i32, i32* @vlc_meta_AlbumArtist, align 4
  %81 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %79, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %83 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %82, i32 0, i32 10
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @vlc_playlist_item_meta_CopyString(i32* %83, i8* %84)
  store i32 %85, i32* %3, align 4
  br label %193

86:                                               ; preds = %2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = load i32, i32* @vlc_meta_Genre, align 4
  %89 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %87, i32 %88)
  store i8* %89, i8** %11, align 8
  %90 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %91 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %90, i32 0, i32 9
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @vlc_playlist_item_meta_CopyString(i32* %91, i8* %92)
  store i32 %93, i32* %3, align 4
  br label %193

94:                                               ; preds = %2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = load i32, i32* @vlc_meta_Date, align 4
  %97 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %95, i32 %96)
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @EMPTY_STR(i8* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %104 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %106 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load i8*, i8** %12, align 8
  %111 = call i8* @atoll(i8* %110)
  %112 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %113 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %109, %94
  %115 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %115, i32* %3, align 4
  br label %193

116:                                              ; preds = %2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = load i32, i32* @vlc_meta_TrackNumber, align 4
  %119 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %117, i32 %118)
  store i8* %119, i8** %13, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @EMPTY_STR(i8* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %126 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %128 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %116
  %132 = load i8*, i8** %13, align 8
  %133 = call i8* @atoll(i8* %132)
  %134 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %135 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %116
  %137 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %137, i32* %3, align 4
  br label %193

138:                                              ; preds = %2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = load i32, i32* @vlc_meta_DiscNumber, align 4
  %141 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %139, i32 %140)
  store i8* %141, i8** %14, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @EMPTY_STR(i8* %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %148 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %150 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load i8*, i8** %14, align 8
  %155 = call i8* @atoll(i8* %154)
  %156 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %157 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %153, %138
  %159 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %159, i32* %3, align 4
  br label %193

160:                                              ; preds = %2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = load i32, i32* @vlc_meta_URL, align 4
  %163 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %161, i32 %162)
  store i8* %163, i8** %15, align 8
  %164 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %165 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %164, i32 0, i32 5
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @vlc_playlist_item_meta_CopyString(i32* %165, i8* %166)
  store i32 %167, i32* %3, align 4
  br label %193

168:                                              ; preds = %2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = load i32, i32* @vlc_meta_Rating, align 4
  %171 = call i8* @input_item_GetMetaLocked(%struct.TYPE_5__* %169, i32 %170)
  store i8* %171, i8** %16, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = call i32 @EMPTY_STR(i8* %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %178 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %180 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %168
  %184 = load i8*, i8** %16, align 8
  %185 = call i8* @atoll(i8* %184)
  %186 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  %187 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %183, %168
  %189 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %189, i32* %3, align 4
  br label %193

190:                                              ; preds = %2
  %191 = call i32 @assert(i32 0)
  %192 = call i32 (...) @vlc_assert_unreachable()
  br label %193

193:                                              ; preds = %34, %60, %62, %70, %78, %86, %114, %136, %158, %160, %188, %190
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i8* @input_item_GetMetaLocked(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @EMPTY_STR(i8*) #1

declare dso_local i32 @vlc_playlist_item_meta_CopyString(i32*, i8*) #1

declare dso_local i8* @atoll(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
