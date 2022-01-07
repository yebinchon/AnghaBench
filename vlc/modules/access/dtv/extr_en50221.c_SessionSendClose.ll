; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionSendClose.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionSendClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ST_CLOSE_SESSION_REQUEST = common dso_local global i32 0, align 4
@T_DATA_LAST = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"SessionSendClose: couldn't send TPDU on slot %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SessionSendClose: couldn't recv TPDU on slot %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @SessionSendClose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SessionSendClose(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ST_CLOSE_SESSION_REQUEST, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 2, i32* %19, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @SetWBE(i32* %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @T_DATA_LAST, align 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %27 = call i64 @TPDUSend(%struct.TYPE_7__* %23, i32 %24, i32 %25, i32* %26, i32 4)
  %28 = load i64, i64* @VLC_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @msg_Err(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @TPDURecv(%struct.TYPE_7__* %37, i32 %38, i32* %6, i32* null, i32* null)
  %40 = load i64, i64* @VLC_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @msg_Err(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %30, %42, %36
  ret void
}

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i64 @TPDUSend(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i64 @TPDURecv(%struct.TYPE_7__*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
