; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_AddItem.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_AddItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.access_sys* }
%struct.access_sys = type { i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.vlc_readdir_helper*, i8*, i32)* @AddItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddItem(%struct.TYPE_3__* %0, %struct.vlc_readdir_helper* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.vlc_readdir_helper*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.access_sys*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.vlc_readdir_helper* %1, %struct.vlc_readdir_helper** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.access_sys*, %struct.access_sys** %15, align 8
  store %struct.access_sys* %16, %struct.access_sys** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @vlc_uri_encode(i8* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.access_sys*, %struct.access_sys** %10, align 8
  %25 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %24, i32 0, i32 0
  %26 = load i8*, i8** %11, align 8
  %27 = call i8* @vlc_smb2_get_url(i32* %25, i8* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %7, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ITEM_NET, align 4
  %40 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %35, i8* %36, i32* null, i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %34, %32, %21
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i8* @vlc_uri_encode(i8*) #1

declare dso_local i8* @vlc_smb2_get_url(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
