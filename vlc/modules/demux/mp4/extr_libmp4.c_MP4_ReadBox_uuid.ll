; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_uuid.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@TfrfBoxUUID = common dso_local global i32 0, align 4
@TfxdBoxUUID = common dso_local global i32 0, align 4
@XML360BoxUUID = common dso_local global i32 0, align 4
@PS3DDSBoxUUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown uuid type box\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @MP4_ReadBox_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_uuid(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = call i32 @CmpUUID(%struct.TYPE_9__* %7, i32* @TfrfBoxUUID)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32 @MP4_ReadBox_tfrf(i32* %11, %struct.TYPE_8__* %12)
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = call i32 @CmpUUID(%struct.TYPE_9__* %16, i32* @TfxdBoxUUID)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call i32 @MP4_ReadBox_tfxd(i32* %20, %struct.TYPE_8__* %21)
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i32 @CmpUUID(%struct.TYPE_9__* %25, i32* @XML360BoxUUID)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @MP4_ReadBox_XML360(i32* %29, %struct.TYPE_8__* %30)
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = call i32 @CmpUUID(%struct.TYPE_9__* %34, i32* @PS3DDSBoxUUID)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 28
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = call i32 @MP4_ReadBox_Binary(i32* %43, %struct.TYPE_8__* %44)
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %37, %32
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %42, %28, %19, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @CmpUUID(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MP4_ReadBox_tfrf(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @MP4_ReadBox_tfxd(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @MP4_ReadBox_XML360(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @MP4_ReadBox_Binary(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
