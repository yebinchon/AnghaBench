; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_DelApp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_DelApp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.app = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @DelApp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DelApp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.app*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.app*
  store %struct.app* %5, %struct.app** %3, align 8
  %6 = load %struct.app*, %struct.app** %3, align 8
  %7 = getelementptr inbounds %struct.app, %struct.app* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.app*, %struct.app** %3, align 8
  %10 = getelementptr inbounds %struct.app, %struct.app* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @services_discovery_RemoveItem(i32 %8, i32 %11)
  %13 = load %struct.app*, %struct.app** %3, align 8
  %14 = getelementptr inbounds %struct.app, %struct.app* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_item_Release(i32 %15)
  %17 = load %struct.app*, %struct.app** %3, align 8
  %18 = call i32 @free(%struct.app* %17)
  ret void
}

declare dso_local i32 @services_discovery_RemoveItem(i32, i32) #1

declare dso_local i32 @input_item_Release(i32) #1

declare dso_local i32 @free(%struct.app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
