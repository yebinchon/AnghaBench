; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_sni_get_property_async.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_sni_get_property_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.get_property_data = type { i8*, i8*, i8*, %struct.swaybar_sni* }

@.str = private unnamed_addr constant [32 x i8] c"org.freedesktop.DBus.Properties\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Get\00", align 1
@get_property_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_sni*, i8*, i8*, i8*)* @sni_get_property_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sni_get_property_async(%struct.swaybar_sni* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.swaybar_sni*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.get_property_data*, align 8
  %10 = alloca i32, align 4
  store %struct.swaybar_sni* %0, %struct.swaybar_sni** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call %struct.get_property_data* @malloc(i32 32)
  store %struct.get_property_data* %11, %struct.get_property_data** %9, align 8
  %12 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %13 = load %struct.get_property_data*, %struct.get_property_data** %9, align 8
  %14 = getelementptr inbounds %struct.get_property_data, %struct.get_property_data* %13, i32 0, i32 3
  store %struct.swaybar_sni* %12, %struct.swaybar_sni** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.get_property_data*, %struct.get_property_data** %9, align 8
  %17 = getelementptr inbounds %struct.get_property_data, %struct.get_property_data* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.get_property_data*, %struct.get_property_data** %9, align 8
  %20 = getelementptr inbounds %struct.get_property_data, %struct.get_property_data* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.get_property_data*, %struct.get_property_data** %9, align 8
  %23 = getelementptr inbounds %struct.get_property_data, %struct.get_property_data* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %25 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %30 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %33 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @get_property_callback, align 4
  %36 = load %struct.get_property_data*, %struct.get_property_data** %9, align 8
  %37 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %38 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @sd_bus_call_method_async(i32 %28, i32* null, i32 %31, i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.get_property_data* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %4
  %45 = load i32, i32* @SWAY_ERROR, align 4
  %46 = load %struct.swaybar_sni*, %struct.swaybar_sni** %5, align 8
  %47 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @sway_log(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* %49, i32 %52)
  br label %54

54:                                               ; preds = %44, %4
  ret void
}

declare dso_local %struct.get_property_data* @malloc(i32) #1

declare dso_local i32 @sd_bus_call_method_async(i32, i32*, i32, i32, i8*, i8*, i32, %struct.get_property_data*, i8*, i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
