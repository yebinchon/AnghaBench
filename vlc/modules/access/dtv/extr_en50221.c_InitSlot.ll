; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_InitSlot.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_InitSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }

@T_CREATE_TC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"en50221_Init: couldn't send TPDU on slot %d\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@MAX_TC_RETRIES = common dso_local global i32 0, align 4
@T_CTC_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @InitSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitSlot(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @T_CREATE_TC, align 4
  %11 = call i64 @TPDUSend(%struct.TYPE_5__* %8, i32 %9, i32 %10, i32* null, i32 0)
  %12 = load i64, i64* @VLC_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @msg_Err(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX_TC_RETRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @TPDURecv(%struct.TYPE_5__* %27, i32 %28, i64* %7, i32* null, i32* null)
  %30 = load i64, i64* @VLC_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @T_CTC_REPLY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 1, i32* %42, align 4
  br label %60

43:                                               ; preds = %32, %26
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @T_CREATE_TC, align 4
  %47 = call i64 @TPDUSend(%struct.TYPE_5__* %44, i32 %45, i32 %46, i32* null, i32 0)
  %48 = load i64, i64* @VLC_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @msg_Err(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %22

60:                                               ; preds = %36, %22
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = call i32 @VLC_TICK_FROM_MS(i32 100)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @VLC_SUCCESS, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %60
  %76 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %69, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @TPDUSend(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i64 @TPDURecv(%struct.TYPE_5__*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
