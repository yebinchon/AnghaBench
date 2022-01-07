; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_importd.c_manager_add_bus_objects.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_importd.c_manager_add_bus_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"/org/freedesktop/import1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"org.freedesktop.import1.Manager\00", align 1
@manager_vtable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register object: %m\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"/org/freedesktop/import1/transfer\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"org.freedesktop.import1.Transfer\00", align 1
@transfer_vtable = common dso_local global i32 0, align 4
@transfer_object_find = common dso_local global i32 0, align 4
@transfer_node_enumerator = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to add transfer enumerator: %m\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"org.freedesktop.import1\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to request name: %m\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to attach bus to event loop: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @manager_add_bus_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_add_bus_objects(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @manager_vtable, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @sd_bus_add_object_vtable(i32 %9, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %10, %struct.TYPE_7__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @log_error_errno(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @transfer_vtable, align 4
  %23 = load i32, i32* @transfer_object_find, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i32 @sd_bus_add_fallback_vtable(i32 %21, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %22, i32 %23, %struct.TYPE_7__* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @log_error_errno(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @transfer_node_enumerator, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @sd_bus_add_node_enumerator(i32 %34, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %35, %struct.TYPE_7__* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @log_error_errno(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %31
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sd_bus_request_name_async(i32 %46, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @log_error_errno(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %67

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sd_bus_attach_event(i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @log_error_errno(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %50, %40, %28, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @sd_bus_add_object_vtable(i32, i32*, i8*, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_add_fallback_vtable(i32, i32*, i8*, i8*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sd_bus_add_node_enumerator(i32, i32*, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sd_bus_request_name_async(i32, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @sd_bus_attach_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
