; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_FileRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_FileRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.access_sys* }
%struct.access_sys = type { i64, %struct.TYPE_9__, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@smb2_read_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"smb2_read_async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64)* @FileRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FileRead(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.access_sys*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.access_sys*, %struct.access_sys** %10, align 8
  store %struct.access_sys* %11, %struct.access_sys** %8, align 8
  %12 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %13 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %19 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %54

23:                                               ; preds = %17
  %24 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %25 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %29 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %32 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @smb2_read_cb, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i64 @smb2_read_async(i32 %30, i32 %33, i8* %34, i64 %35, i32 %36, %struct.TYPE_10__* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = call i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_10__* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 -1, i32* %4, align 4
  br label %54

43:                                               ; preds = %23
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i64 @vlc_smb2_mainloop(%struct.TYPE_10__* %44, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %54

48:                                               ; preds = %43
  %49 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  %50 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %47, %40, %22, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @smb2_read_async(i32, i32, i8*, i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @VLC_SMB2_SET_ERROR(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @vlc_smb2_mainloop(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
