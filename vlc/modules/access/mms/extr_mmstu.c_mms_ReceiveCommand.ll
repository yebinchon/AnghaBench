; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ReceiveCommand.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ReceiveCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"cannot fill buffer\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@MMS_BUFFER_SIZE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @mms_ReceiveCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_ReceiveCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  br label %10

10:                                               ; preds = %70, %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i64 @NetFillBuffer(%struct.TYPE_8__* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32 @msg_Warn(%struct.TYPE_8__* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %73

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mms_ParseCommand(%struct.TYPE_8__* %24, i64 %27, i64 %30, i64* %5)
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* @MMS_BUFFER_SIZE, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @memmove(i64 %38, i64 %43, i64 %46)
  br label %48

48:                                               ; preds = %35, %23
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %73

58:                                               ; preds = %48
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 27
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @mms_CommandSend(%struct.TYPE_8__* %64, i32 27, i32 0, i32 0, i32* null, i32 0)
  br label %67

66:                                               ; preds = %58
  br label %71

67:                                               ; preds = %63
  br label %70

68:                                               ; preds = %18
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %2, align 4
  br label %73

70:                                               ; preds = %67
  br label %10

71:                                               ; preds = %66
  %72 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %68, %56, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @NetFillBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mms_ParseCommand(%struct.TYPE_8__*, i64, i64, i64*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @mms_CommandSend(%struct.TYPE_8__*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
