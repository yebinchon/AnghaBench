; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_handle_new_status.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_handle_new_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s new status error: %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s has new status = '%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @handle_new_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_status(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaybar_sni*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.swaybar_sni*
  store %struct.swaybar_sni* %12, %struct.swaybar_sni** %7, align 8
  %13 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @sni_check_msg_sender(%struct.swaybar_sni* %13, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sd_bus_message_read(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* @SWAY_ERROR, align 4
  %25 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %26 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @sway_log(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %8, align 4
  br label %50

33:                                               ; preds = %18
  %34 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %35 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free(i32 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strdup(i8* %38)
  %40 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %41 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SWAY_DEBUG, align 4
  %43 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %44 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %45, i8* %46)
  %48 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %49 = call i32 @set_sni_dirty(%struct.swaybar_sni* %48)
  br label %50

50:                                               ; preds = %33, %23
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %53 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %54 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %53, i32 0, i32 0
  %55 = call i32 @sni_get_property_async(%struct.swaybar_sni* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @sni_check_msg_sender(%struct.swaybar_sni*, i32*, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @set_sni_dirty(%struct.swaybar_sni*) #1

declare dso_local i32 @sni_get_property_async(%struct.swaybar_sni*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
