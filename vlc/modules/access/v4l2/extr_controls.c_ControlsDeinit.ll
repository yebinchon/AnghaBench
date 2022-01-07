; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_controls.c_ControlsDeinit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_controls.c_ControlsDeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@ControlsResetCallback = common dso_local global i32 0, align 4
@ControlSetCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"controls\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ControlsDeinit(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ControlsResetCallback, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @var_DelCallback(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.TYPE_5__* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @var_Destroy(i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %15, %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @ControlSetCallback, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @var_DelCallback(i32* %19, i8* %22, i32 %23, %struct.TYPE_5__* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @var_Destroy(i32* %26, i8* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @free(%struct.TYPE_5__* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %4, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @var_Destroy(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @var_DelCallback(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
