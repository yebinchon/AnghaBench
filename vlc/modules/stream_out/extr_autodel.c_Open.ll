; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_autodel.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_autodel.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32* }

@.str = private unnamed_addr constant [20 x i8] c"cannot create chain\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Add = common dso_local global i32 0, align 4
@Del = common dso_local global i32 0, align 4
@Send = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = call %struct.TYPE_7__* @malloc(i32 16)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call i32 @msg_Err(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = call i32 @free(%struct.TYPE_7__* %16)
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @Add, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @Del, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @Send, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
