; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_dialog_map_events.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_dialog_map_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dialog_control = type { i8*, %struct.TYPE_8__* }

@dialog_map_events.queryW = internal constant [74 x i8] c"SELECT * FROM `EventMapping` WHERE `Dialog_` = '%s' AND `Control_` = '%s'\00", align 16
@map_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @dialog_map_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dialog_map_events(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.dialog_control, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds %struct.dialog_control, %struct.dialog_control* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = bitcast %struct.TYPE_8__* %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = getelementptr inbounds %struct.dialog_control, %struct.dialog_control* %6, i32 0, i32 1
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @MSI_OpenQuery(i32 %17, %struct.TYPE_9__** %5, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @dialog_map_events.queryW, i64 0, i64 0), i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load i32, i32* @map_event, align 4
  %27 = call i32 @MSI_IterateRecords(%struct.TYPE_9__* %25, i32* null, i32 %26, %struct.dialog_control* %6)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @msiobj_release(i32* %29)
  br label %31

31:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @MSI_OpenQuery(i32, %struct.TYPE_9__**, i8*, i32, i8*) #1

declare dso_local i32 @MSI_IterateRecords(%struct.TYPE_9__*, i32*, i32, %struct.dialog_control*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
