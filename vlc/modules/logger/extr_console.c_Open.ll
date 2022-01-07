; ModuleID = '/home/carl/AnghaBench/vlc/modules/logger/extr_console.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/logger/extr_console.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger_operations = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VLC_VERBOSE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@VLC_MSG_ERR = common dso_local global i64 0, align 8
@VLC_MSG_DBG = common dso_local global i32 0, align 4
@verbosities = common dso_local global i8* null, align 8
@gray_ops = common dso_local global %struct.vlc_logger_operations zeroinitializer, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@color_ops = common dso_local global %struct.vlc_logger_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_logger_operations* (i32*, i8**)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_logger_operations* @Open(i32* %0, i8** noalias %1) #0 {
  %3 = alloca %struct.vlc_logger_operations*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @var_InheritBool(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @var_InheritInteger(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store %struct.vlc_logger_operations* null, %struct.vlc_logger_operations** %3, align 8
  br label %43

26:                                               ; preds = %22
  %27 = load i64, i64* @VLC_MSG_ERR, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VLC_MSG_DBG, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @VLC_MSG_DBG, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i8*, i8** @verbosities, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  store %struct.vlc_logger_operations* @gray_ops, %struct.vlc_logger_operations** %3, align 8
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.vlc_logger_operations*, %struct.vlc_logger_operations** %3, align 8
  ret %struct.vlc_logger_operations* %44
}

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
