; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_ftp_StopStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_ftp_StopStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ABOR\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot abort file\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @ftp_StopStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_StopStream(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i64 @ftp_SendCommand(i32* %7, %struct.TYPE_5__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @msg_Warn(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vlc_tls_Close(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VLC_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i32 @ftp_RecvCommand(i32* %31, %struct.TYPE_5__* %32, i32* null, i32* null)
  br label %34

34:                                               ; preds = %30, %20
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @ftp_RecvCommand(i32* %40, %struct.TYPE_5__* %41, i32* null, i32* null)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @ftp_SendCommand(i32*, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @vlc_tls_Close(i32*) #1

declare dso_local i32 @ftp_RecvCommand(i32*, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
