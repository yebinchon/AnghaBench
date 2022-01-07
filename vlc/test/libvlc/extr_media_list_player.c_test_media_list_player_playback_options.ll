; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_playback_options.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_playback_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }

@test_default_sample = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Testing media player playback options()\0A\00", align 1
@libvlc_playback_mode_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Testing media player playback option - Loop\0A\00", align 1
@libvlc_playback_mode_loop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Testing media player playback option - Repeat\0A\00", align 1
@libvlc_playback_mode_repeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list_player_playback_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list_player_playback_options(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i8*, i8** @test_default_sample, align 8
  store i8* %19, i8** %18, align 8
  %20 = call i32 @test_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %3, align 8
  %23 = call i32* @libvlc_new(i32 %21, i8** %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_17__*
  %29 = call i32 @assert(%struct.TYPE_17__* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = call %struct.TYPE_17__* @libvlc_media_new_path(i32* %30, i8* %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %6, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = call i32 @assert(%struct.TYPE_17__* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = call %struct.TYPE_17__* @libvlc_media_new_path(i32* %35, i8* %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %7, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = call i32 @assert(%struct.TYPE_17__* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = call %struct.TYPE_17__* @libvlc_media_new_path(i32* %40, i8* %41)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %8, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = call i32 @assert(%struct.TYPE_17__* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = call %struct.TYPE_17__* @libvlc_media_new_path(i32* %45, i8* %46)
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %9, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = call i32 @assert(%struct.TYPE_17__* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = call %struct.TYPE_17__* @libvlc_media_new_path(i32* %50, i8* %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %10, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = call i32 @assert(%struct.TYPE_17__* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @libvlc_media_list_new(i32* %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_17__*
  %62 = call i32 @assert(%struct.TYPE_17__* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32* @libvlc_media_list_new(i32* %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_17__*
  %70 = call i32 @assert(%struct.TYPE_17__* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32* @libvlc_media_list_new(i32* %71)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_17__*
  %78 = call i32 @assert(%struct.TYPE_17__* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32* @libvlc_media_list_new(i32* %79)
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_17__*
  %86 = call i32 @assert(%struct.TYPE_17__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @libvlc_media_list_new(i32* %87)
  store i32* %88, i32** %15, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct.TYPE_17__*
  %94 = call i32 @assert(%struct.TYPE_17__* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32* @libvlc_media_list_new(i32* %95)
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_17__*
  %102 = call i32 @assert(%struct.TYPE_17__* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = call i32 @media_list_add_file_path(i32* %103, i32* %104, i8* %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = call i32 @media_list_add_file_path(i32* %107, i32* %108, i8* %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @media_list_add_file_path(i32* %111, i32* %112, i8* %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 @media_list_add_file_path(i32* %115, i32* %116, i8* %117)
  %119 = load i32*, i32** %13, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = call i32 @libvlc_media_list_add_media(i32* %119, %struct.TYPE_17__* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @media_list_add_file_path(i32* %122, i32* %123, i8* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = call i32 @media_list_add_file_path(i32* %126, i32* %127, i8* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = call i32 @media_list_add_file_path(i32* %130, i32* %131, i8* %132)
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = call i32 @libvlc_media_list_add_media(i32* %134, %struct.TYPE_17__* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = call i32 @media_list_add_file_path(i32* %137, i32* %138, i8* %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = call i32 @media_list_add_file_path(i32* %141, i32* %142, i8* %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = call i32 @media_list_add_file_path(i32* %145, i32* %146, i8* %147)
  %149 = load i32*, i32** %5, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i8*, i8** %18, align 8
  %152 = call i32 @media_list_add_file_path(i32* %149, i32* %150, i8* %151)
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = call i32 @media_list_add_file_path(i32* %153, i32* %154, i8* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @media_list_add_file_path(i32* %157, i32* %158, i8* %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  store i32* %161, i32** %163, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  store i32* %164, i32** %166, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store i32* %170, i32** %172, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i32* %173, i32** %175, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = call i32 @libvlc_media_list_add_media(i32* %176, %struct.TYPE_17__* %177)
  %179 = load i32*, i32** %11, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = call i32 @libvlc_media_list_add_media(i32* %179, %struct.TYPE_17__* %180)
  %182 = load i32*, i32** %11, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %184 = call i32 @libvlc_media_list_add_media(i32* %182, %struct.TYPE_17__* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call %struct.TYPE_17__* @libvlc_media_list_player_new(i32* %185)
  store %struct.TYPE_17__* %186, %struct.TYPE_17__** %17, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %188 = call i32 @assert(%struct.TYPE_17__* %187)
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = call i32 @libvlc_media_list_player_set_media_list(%struct.TYPE_17__* %189, i32* %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %193 = load i32, i32* @libvlc_playback_mode_default, align 4
  %194 = call i32 @libvlc_media_list_player_set_playback_mode(%struct.TYPE_17__* %192, i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = call i32 @libvlc_media_list_player_play_item(%struct.TYPE_17__* %195, %struct.TYPE_17__* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %199 = call i32 @wait_playing(%struct.TYPE_17__* %198)
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %201 = call i32 @libvlc_media_release(%struct.TYPE_17__* %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %203 = call i32 @libvlc_media_release(%struct.TYPE_17__* %202)
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %205 = call i32 @libvlc_media_release(%struct.TYPE_17__* %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %207 = call i32 @libvlc_media_release(%struct.TYPE_17__* %206)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = call i32 @libvlc_media_release(%struct.TYPE_17__* %208)
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %211 = call i32 @libvlc_media_list_player_stop_async(%struct.TYPE_17__* %210)
  br label %212

212:                                              ; preds = %216, %2
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %214 = call i64 @libvlc_media_list_player_is_playing(%struct.TYPE_17__* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 (...) @sched_yield()
  br label %212

218:                                              ; preds = %212
  %219 = call i32 @test_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %221 = load i32, i32* @libvlc_playback_mode_loop, align 4
  %222 = call i32 @libvlc_media_list_player_set_playback_mode(%struct.TYPE_17__* %220, i32 %221)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %225 = call i32 @libvlc_media_list_player_play_item(%struct.TYPE_17__* %223, %struct.TYPE_17__* %224)
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %227 = call i32 @wait_playing(%struct.TYPE_17__* %226)
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %229 = call i32 @stop_and_wait(%struct.TYPE_17__* %228)
  %230 = call i32 @test_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %232 = load i32, i32* @libvlc_playback_mode_repeat, align 4
  %233 = call i32 @libvlc_media_list_player_set_playback_mode(%struct.TYPE_17__* %231, i32 %232)
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %236 = call i32 @libvlc_media_list_player_play_item(%struct.TYPE_17__* %234, %struct.TYPE_17__* %235)
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %238 = call i32 @wait_playing(%struct.TYPE_17__* %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %240 = call i32 @stop_and_wait(%struct.TYPE_17__* %239)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %242 = call i32 @libvlc_media_list_player_release(%struct.TYPE_17__* %241)
  %243 = load i32*, i32** %5, align 8
  %244 = call i32 @libvlc_release(i32* %243)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_list_new(i32*) #1

declare dso_local i32 @media_list_add_file_path(i32*, i32*, i8*) #1

declare dso_local i32 @libvlc_media_list_add_media(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @libvlc_media_list_player_new(i32*) #1

declare dso_local i32 @libvlc_media_list_player_set_media_list(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @libvlc_media_list_player_set_playback_mode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @libvlc_media_list_player_play_item(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @wait_playing(%struct.TYPE_17__*) #1

declare dso_local i32 @libvlc_media_release(%struct.TYPE_17__*) #1

declare dso_local i32 @libvlc_media_list_player_stop_async(%struct.TYPE_17__*) #1

declare dso_local i64 @libvlc_media_list_player_is_playing(%struct.TYPE_17__*) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @stop_and_wait(%struct.TYPE_17__*) #1

declare dso_local i32 @libvlc_media_list_player_release(%struct.TYPE_17__*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
