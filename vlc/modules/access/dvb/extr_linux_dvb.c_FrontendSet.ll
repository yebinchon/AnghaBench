; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"DVB-S tuning error\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DVB-C tuning error\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DVB-T tuning error\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ATSC tuning error\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"tuner type %s not supported\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FrontendSet(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %52 [
    i32 128, label %12
    i32 129, label %22
    i32 130, label %32
    i32 131, label %42
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = call i32 @FrontendSetQPSK(i32* %13, %struct.TYPE_11__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @msg_Err(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %12
  br label %62

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = call i32 @FrontendSetQAM(i32* %23, %struct.TYPE_11__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @msg_Err(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %22
  br label %62

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i32 @FrontendSetOFDM(i32* %33, %struct.TYPE_11__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @msg_Err(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %3, align 4
  br label %68

41:                                               ; preds = %32
  br label %62

42:                                               ; preds = %2
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call i32 @FrontendSetATSC(i32* %43, %struct.TYPE_11__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (i32*, i8*, ...) @msg_Err(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %3, align 4
  br label %68

51:                                               ; preds = %42
  br label %62

52:                                               ; preds = %2
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @msg_Err(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %51, %41, %31, %21
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %52, %47, %37, %27, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @FrontendSetQPSK(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @FrontendSetQAM(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @FrontendSetOFDM(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @FrontendSetATSC(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
