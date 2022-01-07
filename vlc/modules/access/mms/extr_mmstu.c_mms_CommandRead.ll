; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_CommandRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_CommandRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@MMS_RETRY_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"socket closed by server\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"end of media stream\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to receive command (aborting)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @mms_CommandRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_CommandRead(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %73, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MMS_RETRY_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @mms_ReceiveCommand(%struct.TYPE_6__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %73

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %34, %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %69 [
    i32 3, label %57
    i32 30, label %63
  ]

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 @msg_Warn(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %62, i32* %4, align 4
  br label %80

63:                                               ; preds = %53
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @msg_Warn(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %28
  br label %14

74:                                               ; preds = %14
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = call i32 @msg_Warn(%struct.TYPE_6__* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %63, %57, %51, %37
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mms_ReceiveCommand(%struct.TYPE_6__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
