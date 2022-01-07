; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_get_registered_snis.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_get_registered_snis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_watcher = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @get_registered_snis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_registered_snis(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.swaybar_watcher*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.swaybar_watcher*
  store %struct.swaybar_watcher* %18, %struct.swaybar_watcher** %15, align 8
  %19 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %15, align 8
  %20 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @list_add(%struct.TYPE_3__* %21, i32* null)
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %15, align 8
  %25 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8**
  %30 = call i32 @sd_bus_message_append_strv(i32* %23, i8** %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %15, align 8
  %32 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %15, align 8
  %35 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @list_del(%struct.TYPE_3__* %33, i64 %39)
  %41 = load i32, i32* %16, align 4
  ret i32 %41
}

declare dso_local i32 @list_add(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @sd_bus_message_append_strv(i32*, i8**) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
