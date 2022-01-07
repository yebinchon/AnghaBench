; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_OpenDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_OpenDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@VLC_CODEC_USF = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DecodeBlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"subsdec-align\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"subsdec-formatted\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDecoder(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VLC_CODEC_USF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = call %struct.TYPE_13__* @calloc(i32 1, i32 20)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %19, align 8
  %20 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %16
  %24 = load i32, i32* @DecodeBlock, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TAB_INIT(i32 %32, i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TAB_INIT(i32 %39, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = call i32 @var_CreateGetInteger(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @ParseImageAttachments(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = call i64 @var_CreateGetBool(%struct.TYPE_12__* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %23
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i32 @ParseUSFHeader(%struct.TYPE_12__* %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %23
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %21, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @var_CreateGetInteger(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ParseImageAttachments(%struct.TYPE_12__*) #1

declare dso_local i64 @var_CreateGetBool(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ParseUSFHeader(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
