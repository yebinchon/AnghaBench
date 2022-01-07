; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_print_playlist.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_print_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@INPUT_DURATION_INDEFINITE = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@MSTRTIME_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"|-- %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"|-- %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_playlist(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @vlc_playlist_Count(i32* %12)
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32* @vlc_playlist_Get(i32* %19, i64 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_3__* @vlc_playlist_item_GetMedia(i32* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @INPUT_DURATION_INDEFINITE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @VLC_TICK_INVALID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %10, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @SEC_FROM_VLC_TICK(i64 %39)
  %41 = call i32 @secstotimestr(i8* %38, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, ...) @msg_rc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %38)
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %52

47:                                               ; preds = %30, %18
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @msg_rc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %14

56:                                               ; preds = %14
  ret void
}

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @vlc_playlist_item_GetMedia(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @secstotimestr(i8*, i32) #1

declare dso_local i32 @SEC_FROM_VLC_TICK(i64) #1

declare dso_local i32 @msg_rc(i8*, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
