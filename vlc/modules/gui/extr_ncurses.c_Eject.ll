; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_Eject.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_Eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @Eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Eject(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @vlc_player_Lock(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @vlc_player_IsStarted(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @vlc_player_Unlock(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %48

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @vlc_player_Lock(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_3__* @vlc_player_GetCurrentMedia(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @vlc_player_Unlock(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %48

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @GetDiscDevice(i8* %35)
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i8* [ %36, %34 ], [ null, %37 ]
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @intf_Eject(i32* %43, i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %17, %27, %42, %38
  ret void
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @vlc_player_IsStarted(i32*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

declare dso_local %struct.TYPE_3__* @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i8* @GetDiscDevice(i8*) #1

declare dso_local i32 @intf_Eject(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
