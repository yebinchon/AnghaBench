; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_configure_duid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_configure_duid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, %struct.TYPE_15__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Failed to get product UUID. Falling back to use machine-app-specific ID as DUID-UUID: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @link_configure_duid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_configure_duid(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_15__* %7)
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = call i32 @assert(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call %struct.TYPE_15__* @link_get_duid(%struct.TYPE_15__* %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call i32 @link_requires_uuid(%struct.TYPE_15__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %84

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @duid_set_uuid(%struct.TYPE_15__* %32, i32 %35)
  store i32 1, i32* %2, align 4
  br label %84

37:                                               ; preds = %26
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = call i32 @manager_request_product_uuid(%struct.TYPE_15__* %43, %struct.TYPE_15__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %84

55:                                               ; preds = %48
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %56, i32 %57, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

59:                                               ; preds = %42
  br label %83

60:                                               ; preds = %37
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = call i32 @set_put(i32 %63, %struct.TYPE_15__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 (...) @log_oom()
  store i32 %69, i32* %2, align 4
  br label %84

70:                                               ; preds = %60
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = call i32 @set_put(i32 %73, %struct.TYPE_15__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 (...) @log_oom()
  store i32 %79, i32* %2, align 4
  br label %84

80:                                               ; preds = %70
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = call i32 @link_ref(%struct.TYPE_15__* %81)
  br label %83

83:                                               ; preds = %80, %59
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %78, %68, %55, %53, %31, %25
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @link_get_duid(%struct.TYPE_15__*) #1

declare dso_local i32 @link_requires_uuid(%struct.TYPE_15__*) #1

declare dso_local i32 @duid_set_uuid(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @manager_request_product_uuid(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @set_put(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @link_ref(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
