; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_get_product_uuid_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_get_product_uuid_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [89 x i8] c"Could not get product UUID. Falling back to use machine-app-specific ID as DUID-UUID: %s\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Invalid product UUID. Falling back to use machine-app-specific ID as DUID-UUID.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_product_uuid_handler(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @assert(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = call i32 @assert(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call %struct.TYPE_12__* @sd_bus_message_get_error(%struct.TYPE_11__* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = call i32 @sd_bus_error_get_errno(%struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @sd_bus_message_read_array(%struct.TYPE_11__* %32, i8 signext 121, i8** %9, i64* %10)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %68

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @log_error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  br label %68

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @memcpy(i32* %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %55, %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @set_steal_first(i8* %51)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @duid_set_uuid(i32* %56, i32 %59)
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @set_free(i8* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %40, %36, %24
  br label %69

69:                                               ; preds = %86, %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @set_steal_first(i8* %72)
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @link_unref(i32* %77)
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @link_configure(i32* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @link_enter_failed(i32* %84)
  br label %86

86:                                               ; preds = %83, %76
  br label %69

87:                                               ; preds = %69
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @set_free(i8* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  ret i32 1
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @sd_bus_message_get_error(%struct.TYPE_11__*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32) #1

declare dso_local i32 @sd_bus_error_get_errno(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_bus_message_read_array(%struct.TYPE_11__*, i8 signext, i8**, i64*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i8* @set_steal_first(i8*) #1

declare dso_local i32 @duid_set_uuid(i32*, i32) #1

declare dso_local i8* @set_free(i8*) #1

declare dso_local i32 @link_unref(i32*) #1

declare dso_local i32 @link_configure(i32*) #1

declare dso_local i32 @link_enter_failed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
