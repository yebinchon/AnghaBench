; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_property_get_progress.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_property_get_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i8*, %struct.TYPE_9__*, i8*, i32*)* @property_get_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_progress(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_9__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %15, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = call i32 @assert(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %24 = call i32 @assert(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %26 = call i64 @MANAGER_IS_FINISHED(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store double 1.000000e+00, double* %16, align 8
  br label %41

29:                                               ; preds = %7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @hashmap_size(i32 %32)
  %34 = sitofp i64 %33 to double
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %34, %38
  %40 = fsub double 1.000000e+00, %39
  store double %40, double* %16, align 8
  br label %41

41:                                               ; preds = %29, %28
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = load double, double* %16, align 8
  %44 = call i32 @sd_bus_message_append(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), double %43)
  ret i32 %44
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i64 @MANAGER_IS_FINISHED(%struct.TYPE_9__*) #1

declare dso_local i64 @hashmap_size(i32) #1

declare dso_local i32 @sd_bus_message_append(%struct.TYPE_9__*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
