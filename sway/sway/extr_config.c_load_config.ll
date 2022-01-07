; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_load_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_config = type { i32 }
%struct.swaynag_instance = type { i32 }
%struct.stat = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to find a config file!\00", align 1
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Loading config from %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s is a directory not a config file\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to open %s for reading\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Error(s) loading config!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sway_config*, %struct.swaynag_instance*)* @load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_config(i8* %0, %struct.sway_config* %1, %struct.swaynag_instance* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_config*, align 8
  %7 = alloca %struct.swaynag_instance*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sway_config* %1, %struct.sway_config** %6, align 8
  store %struct.swaynag_instance* %2, %struct.swaynag_instance** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @SWAY_ERROR, align 4
  %15 = call i32 (i32, i8*, ...) @sway_log(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32, i32* @SWAY_INFO, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i32, i8*, ...) @sway_log(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %8)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @SWAY_ERROR, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i32, i8*, ...) @sway_log(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i32 0, i32* %4, align 4
  br label %54

32:                                               ; preds = %23, %16
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SWAY_ERROR, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32, i8*, ...) @sway_log(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.sway_config*, %struct.sway_config** %6, align 8
  %44 = load %struct.swaynag_instance*, %struct.swaynag_instance** %7, align 8
  %45 = call i32 @read_config(i32* %42, %struct.sway_config* %43, %struct.swaynag_instance* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @SWAY_ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @sway_log(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %41
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %37, %28, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @read_config(i32*, %struct.sway_config*, %struct.swaynag_instance*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
