; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_initialize.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i8*, i32, %struct.swaybar_config*, i32 }
%struct.swaybar_config = type { i64, i64 }

@IPC_GET_BAR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[ \22barconfig_update\22 , \22bar_state_update\22 %s %s ]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c", \22mode\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c", \22workspace\22\00", align 1
@IPC_SUBSCRIBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_initialize(%struct.swaybar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.swaybar_config*, align 8
  %7 = alloca [128 x i8], align 16
  store %struct.swaybar* %0, %struct.swaybar** %3, align 8
  %8 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %9 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %13 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IPC_GET_BAR_CONFIG, align 4
  %16 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %17 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @ipc_single_command(i32 %14, i32 %15, i8* %18, i32* %4)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %21 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %20, i32 0, i32 2
  %22 = load %struct.swaybar_config*, %struct.swaybar_config** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @ipc_parse_config(%struct.swaybar_config* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @free(i8* %27)
  store i32 0, i32* %2, align 4
  br label %56

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %33 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %32, i32 0, i32 2
  %34 = load %struct.swaybar_config*, %struct.swaybar_config** %33, align 8
  store %struct.swaybar_config* %34, %struct.swaybar_config** %6, align 8
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %36 = load %struct.swaybar_config*, %struct.swaybar_config** %6, align 8
  %37 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load %struct.swaybar_config*, %struct.swaybar_config** %6, align 8
  %43 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @snprintf(i8* %35, i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %50 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPC_SUBSCRIBE, align 4
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %54 = call i8* @ipc_single_command(i32 %51, i32 %52, i8* %53, i32* %4)
  %55 = call i32 @free(i8* %54)
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %29, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ipc_single_command(i32, i32, i8*, i32*) #1

declare dso_local i32 @ipc_parse_config(%struct.swaybar_config*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
