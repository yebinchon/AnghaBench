; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_bus_link_method_revert_dns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_bus_link_method_revert_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"org.freedesktop.network1.revert-dns\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_link_method_revert_dns(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @verify_managed_link(%struct.TYPE_12__* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* @CAP_NET_ADMIN, align 4
  %26 = load i32, i32* @UID_INVALID, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @bus_verify_polkit_async(%struct.TYPE_12__* %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* null, i32 1, i32 %26, i32* %30, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %48

41:                                               ; preds = %37
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 @link_dns_settings_clear(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = call i32 @link_dirty(%struct.TYPE_12__* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = call i32 @sd_bus_reply_method_return(%struct.TYPE_12__* %46, i32* null)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %40, %35, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @verify_managed_link(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_12__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @link_dns_settings_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @link_dirty(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
