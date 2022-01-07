; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_PlayerRewind.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_PlayerRewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"key-action\00", align 1
@ACTIONID_JUMP_BACKWARD_EXTRASHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @PlayerRewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerRewind(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @vlc_playlist_GetPlayer(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @vlc_player_Lock(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @vlc_player_CanRewind(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call float @vlc_player_GetRate(i32* %19)
  store float %20, float* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load float, float* %5, align 4
  %23 = call i64 @isless(float %22, float 0.000000e+00)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load float, float* %5, align 4
  %27 = fmul float %26, 2.000000e+00
  br label %31

28:                                               ; preds = %18
  %29 = load float, float* %5, align 4
  %30 = fneg float %29
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi float [ %27, %25 ], [ %30, %28 ]
  %33 = call i32 @vlc_player_ChangeRate(i32* %21, float %32)
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @vlc_object_instance(%struct.TYPE_6__* %35)
  %37 = load i32, i32* @ACTIONID_JUMP_BACKWARD_EXTRASHORT, align 4
  %38 = call i32 @var_SetInteger(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @vlc_player_Unlock(i32* %40)
  ret void
}

declare dso_local i32* @vlc_playlist_GetPlayer(i32*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i64 @vlc_player_CanRewind(i32*) #1

declare dso_local float @vlc_player_GetRate(i32*) #1

declare dso_local i32 @vlc_player_ChangeRate(i32*, float) #1

declare dso_local i64 @isless(float, float) #1

declare dso_local i32 @var_SetInteger(i32, i8*, i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
