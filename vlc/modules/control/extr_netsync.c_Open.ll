; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_netsync.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_netsync.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"netsync-master\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"netsync-master-ip\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"master address not specified\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@NETSYNC_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Netsync socket failure\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"netsync-timeout\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"input-current\00", align 1
@PlaylistEvent = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = call i64 @var_InheritBool(%struct.TYPE_11__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call i8* @var_InheritString(%struct.TYPE_11__* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @msg_Err(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @NETSYNC_PORT, align 4
  %27 = call i32 @net_ConnectUDP(i32 %24, i8* %25, i32 %26, i32 -1)
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @free(i8* %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %31)
  %33 = load i32, i32* @NETSYNC_PORT, align 4
  %34 = call i32 @net_ListenUDP1(i32 %32, i32* null, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = call i32 @msg_Err(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %2, align 4
  br label %85

42:                                               ; preds = %35
  %43 = call %struct.TYPE_12__* @malloc(i32 32)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @net_Close(i32 %49)
  %51 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = call i64 @var_InheritBool(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @var_InheritInteger(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 500
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  store i32 500, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %52
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @pl_Get(%struct.TYPE_11__* %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PlaylistEvent, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = call i32 @var_AddCallback(i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %81, %struct.TYPE_11__* %82)
  %84 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %71, %48, %38, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @var_InheritBool(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @net_ConnectUDP(i32, i8*, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @net_ListenUDP1(i32, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @pl_Get(%struct.TYPE_11__*) #1

declare dso_local i32 @var_AddCallback(i32, i8*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
