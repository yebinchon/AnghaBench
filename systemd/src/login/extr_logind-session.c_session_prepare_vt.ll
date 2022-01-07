; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_prepare_vt.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_prepare_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_mode = type { i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot change owner of /dev/tty%u: %m\00", align 1
@KDSKBMODE = common dso_local global i32 0, align 4
@K_OFF = common dso_local global %struct.vt_mode* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot set K_OFF on /dev/tty%u: %m\00", align 1
@KDSETMODE = common dso_local global i32 0, align 4
@KD_GRAPHICS = common dso_local global %struct.vt_mode* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot set KD_GRAPHICS on /dev/tty%u: %m\00", align 1
@VT_PROCESS = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i8* null, align 8
@VT_SETMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot set VT_PROCESS on /dev/tty%u: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @session_prepare_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_prepare_vt(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt_mode, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = bitcast %struct.vt_mode* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @session_open_vt(%struct.TYPE_7__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fchown(i32 %21, i32 %26, i32 -1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @errno, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @log_error_errno(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %5, align 4
  br label %82

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @KDSKBMODE, align 4
  %39 = load %struct.vt_mode*, %struct.vt_mode** @K_OFF, align 8
  %40 = call i32 @ioctl(i32 %37, i32 %38, %struct.vt_mode* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %5, align 4
  br label %82

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @KDSETMODE, align 4
  %52 = load %struct.vt_mode*, %struct.vt_mode** @KD_GRAPHICS, align 8
  %53 = call i32 @ioctl(i32 %50, i32 %51, %struct.vt_mode* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @errno, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @log_error_errno(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %49
  %63 = load i32, i32* @VT_PROCESS, align 4
  %64 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load i8*, i8** @SIGRTMIN, align 8
  %66 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** @SIGRTMIN, align 8
  %68 = getelementptr i8, i8* %67, i64 1
  %69 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @VT_SETMODE, align 4
  %72 = call i32 @ioctl(i32 %70, i32 %71, %struct.vt_mode* %6)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i32, i32* @errno, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @log_error_errno(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %5, align 4
  br label %82

81:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %75, %56, %43, %30
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = call i32 @session_restore_vt(%struct.TYPE_7__* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %81, %18, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @session_open_vt(%struct.TYPE_7__*) #2

declare dso_local i32 @fchown(i32, i32, i32) #2

declare dso_local i32 @log_error_errno(i32, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.vt_mode*) #2

declare dso_local i32 @session_restore_vt(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
