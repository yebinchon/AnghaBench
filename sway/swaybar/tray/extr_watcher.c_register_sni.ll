; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_register_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_register_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_watcher = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to parse register SNI message: %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"/StatusNotifierItem\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@cmp_id = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Registering Status Notifier Item '%s'\00", align 1
@obj_path = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"StatusNotifierItemRegistered\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Status Notifier Item '%s' already registered\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @register_sni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_sni(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.swaybar_watcher*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @sd_bus_message_read(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @SWAY_ERROR, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @strerror(i32 %22)
  %24 = call i32 @sway_log(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %95

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.swaybar_watcher*
  store %struct.swaybar_watcher* %28, %struct.swaybar_watcher** %11, align 8
  %29 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %11, align 8
  %30 = call i64 @using_standard_protocol(%struct.swaybar_watcher* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %9, align 8
  br label %60

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @sd_bus_message_get_sender(i32* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %13, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %12, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %49)
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i8* @malloc(i64 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %47, %32
  %61 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %11, align 8
  %62 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @cmp_id, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @list_seq_find(i32 %63, i32 %64, i8* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load i32, i32* @SWAY_DEBUG, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @sway_log(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %11, align 8
  %73 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @list_add(i32 %74, i8* %75)
  %77 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %11, align 8
  %78 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @obj_path, align 4
  %81 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %11, align 8
  %82 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @sd_bus_emit_signal(i32 %79, i32 %80, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %84)
  br label %92

86:                                               ; preds = %60
  %87 = load i32, i32* @SWAY_DEBUG, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @sway_log(i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %86, %68
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @sd_bus_reply_method_return(i32* %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @using_standard_protocol(%struct.swaybar_watcher*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @sd_bus_message_get_sender(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @list_seq_find(i32, i32, i8*) #1

declare dso_local i32 @list_add(i32, i8*) #1

declare dso_local i32 @sd_bus_emit_signal(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
