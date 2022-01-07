; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_check_access.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_check_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtable_member = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SD_BUS_VTABLE_UNPRIVILEGED = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i64 0, align 8
@SD_BUS_ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Access to %s.%s() not permitted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtable_member*, %struct.vtable_member*, %struct.vtable_member*, i32*)* @check_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_access(%struct.vtable_member* %0, %struct.vtable_member* %1, %struct.vtable_member* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtable_member*, align 8
  %7 = alloca %struct.vtable_member*, align 8
  %8 = alloca %struct.vtable_member*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vtable_member* %0, %struct.vtable_member** %6, align 8
  store %struct.vtable_member* %1, %struct.vtable_member** %7, align 8
  store %struct.vtable_member* %2, %struct.vtable_member** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.vtable_member*, %struct.vtable_member** %6, align 8
  %13 = call i32 @assert(%struct.vtable_member* %12)
  %14 = load %struct.vtable_member*, %struct.vtable_member** %7, align 8
  %15 = call i32 @assert(%struct.vtable_member* %14)
  %16 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %17 = call i32 @assert(%struct.vtable_member* %16)
  %18 = load %struct.vtable_member*, %struct.vtable_member** %6, align 8
  %19 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

23:                                               ; preds = %4
  %24 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %25 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SD_BUS_VTABLE_UNPRIVILEGED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %82

33:                                               ; preds = %23
  %34 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %35 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @CAPABILITY_SHIFT(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %44 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @CAPABILITY_SHIFT(i32 %50)
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %42, %33
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* @CAP_SYS_ADMIN, align 8
  store i64 %56, i64* %10, align 8
  br label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %57, %55
  %61 = load %struct.vtable_member*, %struct.vtable_member** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @sd_bus_query_sender_privilege(%struct.vtable_member* %61, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %82

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %82

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @SD_BUS_ERROR_ACCESS_DENIED, align 4
  %75 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %76 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vtable_member*, %struct.vtable_member** %8, align 8
  %79 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sd_bus_error_setf(i32* %73, i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %72, %71, %66, %32, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @assert(%struct.vtable_member*) #1

declare dso_local i64 @CAPABILITY_SHIFT(i32) #1

declare dso_local i32 @sd_bus_query_sender_privilege(%struct.vtable_member*, i64) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
