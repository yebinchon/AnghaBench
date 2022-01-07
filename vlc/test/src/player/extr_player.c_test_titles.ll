; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_titles.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_titles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64, i32** }
%struct.media_params = type { i32, i32, i32 }
%struct.vlc_player_title = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"titles (null_names: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, i32)* @test_titles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_titles(%struct.ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_params, align 4
  %7 = alloca { i64, i32 }, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.vlc_player_title*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @test_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ctx*, %struct.ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = call i32 @VLC_TICK_FROM_SEC(i32 100)
  %22 = call { i64, i32 } @DEFAULT_MEDIA_PARAMS(i32 %21)
  store { i64, i32 } %22, { i64, i32 }* %7, align 8
  %23 = bitcast { i64, i32 }* %7 to i8*
  %24 = bitcast %struct.media_params* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %23, i64 12, i1 false)
  %25 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 0
  store i32 5, i32* %25, align 4
  %26 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 1
  store i32 2000, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ctx*, %struct.ctx** %3, align 8
  %30 = call i32 @player_set_next_mock_media(%struct.ctx* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.media_params* %6)
  %31 = load %struct.ctx*, %struct.ctx** %3, align 8
  %32 = call i32 @player_start(%struct.ctx* %31)
  %33 = load %struct.ctx*, %struct.ctx** %3, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %9, align 8
  br label %36

36:                                               ; preds = %41, %2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ctx*, %struct.ctx** %3, align 8
  %44 = getelementptr inbounds %struct.ctx, %struct.ctx* %43, i32 0, i32 0
  %45 = call i32 @vlc_player_CondWait(i32* %42, i32* %44)
  br label %36

46:                                               ; preds = %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32* @vlc_player_GetTitleList(i32* %56)
  %58 = icmp eq i32* %55, %57
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i1 [ false, %46 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %10, align 8
  %67 = load %struct.ctx*, %struct.ctx** %3, align 8
  %68 = getelementptr inbounds %struct.ctx, %struct.ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %11, align 8
  br label %70

70:                                               ; preds = %75, %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.ctx*, %struct.ctx** %3, align 8
  %78 = getelementptr inbounds %struct.ctx, %struct.ctx* %77, i32 0, i32 0
  %79 = call i32 @vlc_player_CondWait(i32* %76, i32* %78)
  br label %70

80:                                               ; preds = %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32* %89, i32 4)
  store %struct.vlc_player_title* %90, %struct.vlc_player_title** %12, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.vlc_player_title*, %struct.vlc_player_title** %12, align 8
  %93 = call i32 @vlc_player_SelectTitle(i32* %91, %struct.vlc_player_title* %92)
  br label %94

94:                                               ; preds = %99, %80
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.ctx*, %struct.ctx** %3, align 8
  %102 = getelementptr inbounds %struct.ctx, %struct.ctx* %101, i32 0, i32 0
  %103 = call i32 @vlc_player_CondWait(i32* %100, i32* %102)
  br label %94

104:                                              ; preds = %94
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 4
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.vlc_player_title*, %struct.vlc_player_title** %12, align 8
  %114 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %115, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.vlc_player_title*, %struct.vlc_player_title** %12, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @vlc_player_SelectChapter(i32* %121, %struct.vlc_player_title* %122, i64 %123)
  %125 = load %struct.ctx*, %struct.ctx** %3, align 8
  %126 = getelementptr inbounds %struct.ctx, %struct.ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %13, align 8
  br label %128

128:                                              ; preds = %147, %104
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %135 = call { i64, i32 } @VEC_LAST(%struct.TYPE_10__* %134)
  %136 = bitcast %struct.TYPE_11__* %14 to { i64, i32 }*
  %137 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %136, i32 0, i32 0
  %138 = extractvalue { i64, i32 } %135, 0
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %136, i32 0, i32 1
  %140 = extractvalue { i64, i32 } %135, 1
  store i32 %140, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %142, %143
  br label %145

145:                                              ; preds = %133, %128
  %146 = phi i1 [ true, %128 ], [ %144, %133 ]
  br i1 %146, label %147, label %152

147:                                              ; preds = %145
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.ctx*, %struct.ctx** %3, align 8
  %150 = getelementptr inbounds %struct.ctx, %struct.ctx* %149, i32 0, i32 0
  %151 = call i32 @vlc_player_CondWait(i32* %148, i32* %150)
  br label %128

152:                                              ; preds = %145
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %154 = call { i64, i32 } @VEC_LAST(%struct.TYPE_10__* %153)
  %155 = bitcast %struct.TYPE_11__* %15 to { i64, i32 }*
  %156 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %155, i32 0, i32 0
  %157 = extractvalue { i64, i32 } %154, 0
  store i64 %157, i64* %156, align 8
  %158 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %155, i32 0, i32 1
  %159 = extractvalue { i64, i32 } %154, 1
  store i32 %159, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 4
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.ctx*, %struct.ctx** %3, align 8
  %166 = call i32 @test_prestop(%struct.ctx* %165)
  %167 = load %struct.ctx*, %struct.ctx** %3, align 8
  %168 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %169 = call i32 @wait_state(%struct.ctx* %167, i32 %168)
  %170 = load %struct.ctx*, %struct.ctx** %3, align 8
  %171 = call i32 @assert_normal_state(%struct.ctx* %170)
  %172 = load %struct.ctx*, %struct.ctx** %3, align 8
  %173 = call i32 @test_end(%struct.ctx* %172)
  ret void
}

declare dso_local i32 @test_log(i8*, i32) #1

declare dso_local { i64, i32 } @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @player_set_next_mock_media(%struct.ctx*, i8*, %struct.media_params*) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_player_GetTitleList(i32*) #1

declare dso_local %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32*, i32) #1

declare dso_local i32 @vlc_player_SelectTitle(i32*, %struct.vlc_player_title*) #1

declare dso_local i32 @vlc_player_SelectChapter(i32*, %struct.vlc_player_title*, i64) #1

declare dso_local { i64, i32 } @VEC_LAST(%struct.TYPE_10__*) #1

declare dso_local i32 @test_prestop(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @assert_normal_state(%struct.ctx*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
