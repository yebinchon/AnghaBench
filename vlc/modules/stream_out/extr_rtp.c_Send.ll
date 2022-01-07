; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32, i32 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"theora\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, %struct.TYPE_15__*)* @Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Send(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %70, %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %8, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @rtp_packetize_xiph_config(%struct.TYPE_14__* %50, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %49, %42
  br label %60

60:                                               ; preds = %59, %23
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = call i64 %64(%struct.TYPE_14__* %65, %struct.TYPE_15__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %72

70:                                               ; preds = %60
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %6, align 8
  br label %20

72:                                               ; preds = %69, %20
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @rtp_packetize_xiph_config(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
