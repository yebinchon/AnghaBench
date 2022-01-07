; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_bus_link_method_renew.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_bus_link_method_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BUS_ERROR_UNMANAGED_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Interface %s is not managed by systemd-networkd\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"org.freedesktop.network1.renew\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_link_method_renew(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = call i32 @assert(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @BUS_ERROR_UNMANAGED_INTERFACE, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sd_bus_error_setf(i32* %19, i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CAP_NET_ADMIN, align 4
  %28 = load i32, i32* @UID_INVALID, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @bus_verify_polkit_async(i32* %26, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 1, i32 %28, i32* %32, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %61

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sd_dhcp_client_send_renew(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @sd_bus_reply_method_return(i32* %59, i32* null)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %55, %42, %37, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i32) #1

declare dso_local i32 @bus_verify_polkit_async(i32*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sd_dhcp_client_send_renew(i64) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
