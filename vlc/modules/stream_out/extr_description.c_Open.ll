; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_description.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_description.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@Add = common dso_local global i32 0, align 4
@Del = common dso_local global i32 0, align 4
@Send = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sout-description-data\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Missing data: the description stream output is not meant to be used without special setup from the core\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  %8 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load i32, i32* @Add, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @Del, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @Send, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = call i32* @var_InheritAddress(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %16
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @msg_Err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = call i32 @free(%struct.TYPE_8__* %40)
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %16
  %44 = load i32, i32* @VLC_TICK_INVALID, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %37, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @var_InheritAddress(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
