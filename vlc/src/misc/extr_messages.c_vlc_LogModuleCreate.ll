; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogModuleCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogModuleCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger = type { i32* }
%struct.vlc_logger_module = type { %struct.vlc_logger }

@.str = private unnamed_addr constant [7 x i8] c"logger\00", align 1
@vlc_logger_load = common dso_local global i32 0, align 4
@module_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_logger* (i32*)* @vlc_LogModuleCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_logger* @vlc_LogModuleCreate(i32* %0) #0 {
  %2 = alloca %struct.vlc_logger*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vlc_logger_module*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.vlc_logger_module* @vlc_custom_create(i32* %5, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.vlc_logger_module* %6, %struct.vlc_logger_module** %4, align 8
  %7 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %8 = icmp eq %struct.vlc_logger_module* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.vlc_logger* null, %struct.vlc_logger** %2, align 8
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %15 = call i32 @VLC_OBJECT(%struct.vlc_logger_module* %14)
  %16 = load i32, i32* @vlc_logger_load, align 4
  %17 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %18 = call i32* @vlc_module_load(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %16, %struct.vlc_logger_module* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %22 = call i32 @VLC_OBJECT(%struct.vlc_logger_module* %21)
  %23 = call i32 @vlc_object_delete(i32 %22)
  store %struct.vlc_logger* null, %struct.vlc_logger** %2, align 8
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %26 = getelementptr inbounds %struct.vlc_logger_module, %struct.vlc_logger_module* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.vlc_logger, %struct.vlc_logger* %26, i32 0, i32 0
  store i32* @module_ops, i32** %27, align 8
  %28 = load %struct.vlc_logger_module*, %struct.vlc_logger_module** %4, align 8
  %29 = getelementptr inbounds %struct.vlc_logger_module, %struct.vlc_logger_module* %28, i32 0, i32 0
  store %struct.vlc_logger* %29, %struct.vlc_logger** %2, align 8
  br label %30

30:                                               ; preds = %24, %20, %12
  %31 = load %struct.vlc_logger*, %struct.vlc_logger** %2, align 8
  ret %struct.vlc_logger* %31
}

declare dso_local %struct.vlc_logger_module* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_module_load(i32, i8*, i32*, i32, i32, %struct.vlc_logger_module*) #1

declare dso_local i32 @VLC_OBJECT(%struct.vlc_logger_module*) #1

declare dso_local i32 @vlc_object_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
