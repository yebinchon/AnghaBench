; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_disconnect_share.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_disconnect_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.access_sys* }
%struct.access_sys = type { i32, i32 }

@smb2_generic_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smb2_connect_share_async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @vlc_smb2_disconnect_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_smb2_disconnect_share(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.access_sys*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.access_sys*, %struct.access_sys** %7, align 8
  store %struct.access_sys* %8, %struct.access_sys** %4, align 8
  %9 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %10 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %16 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @smb2_generic_cb, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i64 @smb2_disconnect_share_async(i32 %17, i32 %18, %struct.TYPE_6__* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 -1, i32* %2, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @vlc_smb2_mainloop(%struct.TYPE_6__* %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %29 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %22, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @smb2_disconnect_share_async(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @vlc_smb2_mainloop(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
