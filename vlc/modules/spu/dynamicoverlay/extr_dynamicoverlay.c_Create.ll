; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay.c_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay.c_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@Filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"overlay-\00", align 1
@ppsz_filter_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"overlay-input\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"overlay-output\00", align 1
@AdjustCallback = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = call %struct.TYPE_10__* @malloc(i32 64)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 12
  %23 = call i32 @BufferInit(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 11
  %26 = call i32 @BufferInit(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 10
  %29 = call i32 @QueueInit(i32* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 9
  %32 = call i32 @QueueInit(i32* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 8
  %35 = call i32 @QueueInit(i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 7
  %38 = call i32 @do_ListInit(i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  %49 = call i32 @vlc_mutex_init(i32* %48)
  %50 = load i32, i32* @Filter, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i32, i32* @ppsz_filter_options, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @config_ChainParse(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = call i8* @var_CreateGetStringCommand(%struct.TYPE_9__* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i8* @var_CreateGetStringCommand(%struct.TYPE_9__* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load i32, i32* @AdjustCallback, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = call i32 @var_AddCallback(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %68, %struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load i32, i32* @AdjustCallback, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @var_AddCallback(%struct.TYPE_9__* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %72, %struct.TYPE_10__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i32 @RegisterCommand(%struct.TYPE_9__* %75)
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %17, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @BufferInit(i32*) #1

declare dso_local i32 @QueueInit(i32*) #1

declare dso_local i32 @do_ListInit(i32*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @config_ChainParse(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i8* @var_CreateGetStringCommand(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_9__*, i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @RegisterCommand(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
