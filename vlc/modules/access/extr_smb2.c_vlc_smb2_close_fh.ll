; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_close_fh.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_vlc_smb2_close_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.access_sys* }
%struct.access_sys = type { i32*, i32 }

@smb2_generic_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"smb2_close_async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @vlc_smb2_close_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_smb2_close_fh(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.access_sys*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.access_sys*, %struct.access_sys** %6, align 8
  store %struct.access_sys* %7, %struct.access_sys** %4, align 8
  %8 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %9 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %13 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %16 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @smb2_generic_cb, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i64 @smb2_close_async(i32 %14, i32* %17, i32 %18, %struct.TYPE_6__* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 -1, i32* %2, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %27 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @vlc_smb2_mainloop(%struct.TYPE_6__* %28, i32 1)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @smb2_close_async(i32, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @vlc_smb2_mainloop(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
