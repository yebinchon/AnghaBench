; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_create.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32*, i32*, i32, i32, i32 }

@LOG_DAEMON = common dso_local global i32 0, align 4
@ZED_MIN_EVENTS = common dso_local global i32 0, align 4
@ZED_MAX_EVENTS = common dso_local global i32 0, align 4
@ZED_CONF_FILE = common dso_local global i32 0, align 4
@ZED_PID_FILE = common dso_local global i32 0, align 4
@ZED_ZEDLET_DIR = common dso_local global i32 0, align 4
@ZED_STATE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create conf: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zed_conf* @zed_conf_create() #0 {
  %1 = alloca %struct.zed_conf*, align 8
  %2 = alloca %struct.zed_conf*, align 8
  %3 = call %struct.zed_conf* @calloc(i32 1, i32 80)
  store %struct.zed_conf* %3, %struct.zed_conf** %2, align 8
  %4 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %5 = icmp ne %struct.zed_conf* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %56

7:                                                ; preds = %0
  %8 = load i32, i32* @LOG_DAEMON, align 4
  %9 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %10 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @ZED_MIN_EVENTS, align 4
  %12 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %13 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @ZED_MAX_EVENTS, align 4
  %15 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %16 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %18 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %20 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %19, i32 0, i32 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %22 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %24 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %23, i32 0, i32 7
  store i32* null, i32** %24, align 8
  %25 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %26 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %25, i32 0, i32 2
  store i32 -1, i32* %26, align 8
  %27 = load i32, i32* @ZED_CONF_FILE, align 4
  %28 = call i8* @strdup(i32 %27)
  %29 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %30 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = icmp ne i8* %28, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  br label %56

33:                                               ; preds = %7
  %34 = load i32, i32* @ZED_PID_FILE, align 4
  %35 = call i8* @strdup(i32 %34)
  %36 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %37 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = icmp ne i8* %35, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %56

40:                                               ; preds = %33
  %41 = load i32, i32* @ZED_ZEDLET_DIR, align 4
  %42 = call i8* @strdup(i32 %41)
  %43 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %44 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = icmp ne i8* %42, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %56

47:                                               ; preds = %40
  %48 = load i32, i32* @ZED_STATE_FILE, align 4
  %49 = call i8* @strdup(i32 %48)
  %50 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %51 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = icmp ne i8* %49, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %56

54:                                               ; preds = %47
  %55 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  store %struct.zed_conf* %55, %struct.zed_conf** %1, align 8
  br label %60

56:                                               ; preds = %53, %46, %39, %32, %6
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @zed_log_die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  store %struct.zed_conf* null, %struct.zed_conf** %1, align 8
  br label %60

60:                                               ; preds = %56, %54
  %61 = load %struct.zed_conf*, %struct.zed_conf** %1, align 8
  ret %struct.zed_conf* %61
}

declare dso_local %struct.zed_conf* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @zed_log_die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
