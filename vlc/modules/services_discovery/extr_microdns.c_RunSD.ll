; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_RunSD.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_RunSD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.discovery_sys* }
%struct.discovery_sys = type { i32, i32, i32 }

@RR_PTR = common dso_local global i32 0, align 4
@LISTEN_INTERVAL = common dso_local global i32 0, align 4
@stop_sd_cb = common dso_local global i32 0, align 4
@new_entries_sd_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @RunSD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @RunSD(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.discovery_sys*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.discovery_sys*, %struct.discovery_sys** %9, align 8
  store %struct.discovery_sys* %10, %struct.discovery_sys** %4, align 8
  %11 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %12 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %15 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %18 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RR_PTR, align 4
  %21 = load i32, i32* @LISTEN_INTERVAL, align 4
  %22 = call i32 @SEC_FROM_VLC_TICK(i32 %21)
  %23 = load i32, i32* @stop_sd_cb, align 4
  %24 = load i32, i32* @new_entries_sd_cb, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 @mdns_listen(i32 %13, i32 %16, i32 %19, i32 %20, i32 %22, i32 %23, i32 %24, %struct.TYPE_4__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = call i32 @VLC_OBJECT(%struct.TYPE_4__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @print_error(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  ret i8* null
}

declare dso_local i32 @mdns_listen(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SEC_FROM_VLC_TICK(i32) #1

declare dso_local i32 @print_error(i32, i8*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
