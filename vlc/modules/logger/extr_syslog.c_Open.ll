; ModuleID = '/home/carl/AnghaBench/vlc/modules/logger/extr_syslog.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/logger/extr_syslog.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger_operations = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"syslog-ident\00", align 1
@default_ident = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"syslog-facility\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"syslog-debug\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@ops = common dso_local global %struct.vlc_logger_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_logger_operations* (i32*, i8**)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_logger_operations* @Open(i32* %0, i8** noalias %1) #0 {
  %3 = alloca %struct.vlc_logger_operations*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @var_InheritBool(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.vlc_logger_operations* null, %struct.vlc_logger_operations** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @var_InheritString(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @default_ident, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i8*, i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @var_InheritFacility(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @LOG_PID, align 4
  %28 = load i32, i32* @LOG_NDELAY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @openlog(i8* %26, i32 %29, i32 %30)
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = call i32 @LOG_MASK(i32 %32)
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = call i32 @LOG_MASK(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @LOG_INFO, align 4
  %38 = call i32 @LOG_MASK(i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @var_InheritBool(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load i32, i32* @LOG_DEBUG, align 4
  %45 = call i32 @LOG_MASK(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %21
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @setlogmask(i32 %49)
  store %struct.vlc_logger_operations* @ops, %struct.vlc_logger_operations** %3, align 8
  br label %51

51:                                               ; preds = %48, %12
  %52 = load %struct.vlc_logger_operations*, %struct.vlc_logger_operations** %3, align 8
  ret %struct.vlc_logger_operations* %52
}

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @var_InheritFacility(i32*, i8*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @LOG_MASK(i32) #1

declare dso_local i32 @setlogmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
