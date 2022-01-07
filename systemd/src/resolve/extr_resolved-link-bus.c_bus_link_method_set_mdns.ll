; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_set_mdns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link-bus.c_bus_link_method_set_mdns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@RESOLVE_SUPPORT_NO = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid MulticastDNS setting: %s\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"org.freedesktop.resolve1.set-mdns\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_link_method_set_mdns(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_14__* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @verify_unmanaged_link(%struct.TYPE_14__* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 @sd_bus_message_read(%struct.TYPE_14__* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @isempty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  store i64 %37, i64* %9, align 8
  br label %49

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @resolve_support_from_string(i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @sd_bus_error_setf(i32* %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %4, align 4
  br label %79

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = load i32, i32* @CAP_NET_ADMIN, align 4
  %52 = load i32, i32* @UID_INVALID, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @bus_verify_polkit_async(%struct.TYPE_14__* %50, i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 1, i32 %52, i32* %56, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %79

63:                                               ; preds = %49
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %79

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = call i32 @link_allocate_scopes(%struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = call i32 @link_add_rrs(%struct.TYPE_14__* %73, i32 0)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = call i32 @link_save_user(%struct.TYPE_14__* %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %77, i32* null)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %67, %66, %61, %43, %30, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @verify_unmanaged_link(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_14__*, i8*, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @resolve_support_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_14__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @link_allocate_scopes(%struct.TYPE_14__*) #1

declare dso_local i32 @link_add_rrs(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @link_save_user(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
