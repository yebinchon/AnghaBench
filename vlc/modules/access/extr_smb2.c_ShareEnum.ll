; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_ShareEnum.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_ShareEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.access_sys* }
%struct.access_sys = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.srvsvc_netsharectr* }
%struct.srvsvc_netsharectr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.srvsvc_netshareinfo1* }
%struct.srvsvc_netshareinfo1 = type { i32, i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@SHARE_TYPE_HIDDEN = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @ShareEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShareEnum(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.access_sys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_readdir_helper, align 4
  %8 = alloca %struct.srvsvc_netsharectr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.srvsvc_netshareinfo1*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.access_sys*, %struct.access_sys** %12, align 8
  store %struct.access_sys* %13, %struct.access_sys** %5, align 8
  %14 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %15 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %7, %struct.TYPE_9__* %21, i32* %22)
  %24 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %25 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.srvsvc_netsharectr*, %struct.srvsvc_netsharectr** %27, align 8
  store %struct.srvsvc_netsharectr* %28, %struct.srvsvc_netsharectr** %8, align 8
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %69, %2
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.srvsvc_netsharectr*, %struct.srvsvc_netsharectr** %8, align 8
  %32 = getelementptr inbounds %struct.srvsvc_netsharectr, %struct.srvsvc_netsharectr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ]
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = load %struct.srvsvc_netsharectr*, %struct.srvsvc_netsharectr** %8, align 8
  %44 = getelementptr inbounds %struct.srvsvc_netsharectr, %struct.srvsvc_netsharectr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.srvsvc_netshareinfo1*, %struct.srvsvc_netshareinfo1** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.srvsvc_netshareinfo1, %struct.srvsvc_netshareinfo1* %46, i64 %47
  store %struct.srvsvc_netshareinfo1* %48, %struct.srvsvc_netshareinfo1** %10, align 8
  %49 = load %struct.srvsvc_netshareinfo1*, %struct.srvsvc_netshareinfo1** %10, align 8
  %50 = getelementptr inbounds %struct.srvsvc_netshareinfo1, %struct.srvsvc_netshareinfo1* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SHARE_TYPE_HIDDEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %69

56:                                               ; preds = %42
  %57 = load %struct.srvsvc_netshareinfo1*, %struct.srvsvc_netshareinfo1** %10, align 8
  %58 = getelementptr inbounds %struct.srvsvc_netshareinfo1, %struct.srvsvc_netshareinfo1* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 3
  switch i32 %60, label %68 [
    i32 128, label %61
  ]

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load %struct.srvsvc_netshareinfo1*, %struct.srvsvc_netshareinfo1** %10, align 8
  %64 = getelementptr inbounds %struct.srvsvc_netshareinfo1, %struct.srvsvc_netshareinfo1* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  %67 = call i32 @AddItem(%struct.TYPE_9__* %62, %struct.vlc_readdir_helper* %7, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %56, %61
  br label %69

69:                                               ; preds = %68, %55
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %29

72:                                               ; preds = %40
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %7, i32 %76)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @AddItem(%struct.TYPE_9__*, %struct.vlc_readdir_helper*, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
