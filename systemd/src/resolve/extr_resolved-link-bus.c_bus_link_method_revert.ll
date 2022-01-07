; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_revert.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"org.freedesktop.resolve1.revert\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_link_method_revert(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @verify_unmanaged_link(%struct.TYPE_14__* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = load i32, i32* @CAP_NET_ADMIN, align 4
  %26 = load i32, i32* @UID_INVALID, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @bus_verify_polkit_async(%struct.TYPE_14__* %24, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null, i32 1, i32 %26, i32* %30, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %60

41:                                               ; preds = %37
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = call i32 @link_flush_settings(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = call i32 @link_allocate_scopes(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = call i32 @link_add_rrs(%struct.TYPE_14__* %46, i32 0)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = call i32 @link_save_user(%struct.TYPE_14__* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = call i32 @manager_write_resolv_conf(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @manager_send_changed(%struct.TYPE_15__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %58, i32* null)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %41, %40, %35, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @verify_unmanaged_link(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_14__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @link_flush_settings(%struct.TYPE_14__*) #1

declare dso_local i32 @link_allocate_scopes(%struct.TYPE_14__*) #1

declare dso_local i32 @link_add_rrs(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @link_save_user(%struct.TYPE_14__*) #1

declare dso_local i32 @manager_write_resolv_conf(%struct.TYPE_15__*) #1

declare dso_local i32 @manager_send_changed(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
