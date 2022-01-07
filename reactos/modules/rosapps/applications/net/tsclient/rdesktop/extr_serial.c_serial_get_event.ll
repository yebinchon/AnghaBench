; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_get_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@False = common dso_local global i64 0, align 8
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@SERIAL_EV_DSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"event -> SERIAL_EV_DSR %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@True = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i32 0, align 4
@SERIAL_EV_CTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c" EVENT-> SERIAL_EV_CTS %s\0A\00", align 1
@SERIAL_EV_RLSD = common dso_local global i32 0, align 4
@SERIAL_EV_RXCHAR = common dso_local global i32 0, align 4
@SERIAL_EV_RXFLAG = common dso_local global i32 0, align 4
@SERIAL_EV_TXEMPTY = common dso_local global i32 0, align 4
@TIOCINQ = common dso_local global i32 0, align 4
@TIOCOUTQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serial_get_event(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @False, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @get_device_index(%struct.TYPE_8__* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @False, align 8
  store i64 %20, i64* %4, align 8
  br label %100

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TIOCMGET, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, i32* %10)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @TIOCM_DSR, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @TIOCM_DSR, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SERIAL_EV_DSR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @TIOCM_DSR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @DEBUG_SERIAL(i8* %50)
  %52 = load i32, i32* @SERIAL_EV_DSR, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* @True, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %44, %32
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @TIOCM_CTS, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @TIOCM_CTS, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SERIAL_EV_CTS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @TIOCM_CTS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %85 = call i32 @DEBUG_SERIAL(i8* %84)
  %86 = load i32, i32* @SERIAL_EV_CTS, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i64, i64* @True, align 8
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %78, %66
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %19
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @get_device_index(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @DEBUG_SERIAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
