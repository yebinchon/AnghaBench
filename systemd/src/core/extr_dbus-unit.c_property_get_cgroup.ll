; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_property_get_cgroup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_property_get_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i8*, %struct.TYPE_8__*, i8*, i32*)* @property_get_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_cgroup(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_8__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %15, align 8
  store i8* null, i8** %16, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = call i32 @assert(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %24 = call i32 @assert(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @empty_to_root(i64 %32)
  store i8* %33, i8** %16, align 8
  br label %34

34:                                               ; preds = %29, %7
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = call i32 @sd_bus_message_append(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %36)
  ret i32 %37
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i8* @empty_to_root(i64) #1

declare dso_local i32 @sd_bus_message_append(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
