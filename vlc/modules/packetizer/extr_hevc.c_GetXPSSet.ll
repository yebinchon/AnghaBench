; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_GetXPSSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_GetXPSSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32**, i32**, i32**)* @GetXPSSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetXPSSet(i64 %0, i8* %1, i32** %2, i32** %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %11, align 8
  %14 = load i32**, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32**, i32*** %10, align 8
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32**, i32*** %8, align 8
  store i32* %22, i32** %23, align 8
  %24 = icmp ne i32* %22, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @hevc_get_pps_sps_id(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  %36 = icmp ne i32* %34, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @hevc_get_sps_vps_id(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32**, i32*** %10, align 8
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %37, %25
  br label %49

49:                                               ; preds = %48, %5
  ret void
}

declare dso_local i64 @hevc_get_pps_sps_id(i32*) #1

declare dso_local i64 @hevc_get_sps_vps_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
