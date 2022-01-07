; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*)*, i64 }

@EALREADY = common dso_local global i32 0, align 4
@UNIT_MAINTENANCE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@UNIT_LOADED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@UNIT_ACTIVATING = common dso_local global i64 0, align 8
@ECOMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Starting requested but condition failed. Not starting unit.\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Starting requested but asserts failed.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Redirecting start request from %s to %s.\00", align 1
@EBADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_start(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_18__* %6)
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i64 @unit_active_state(%struct.TYPE_18__* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @UNIT_IS_ACTIVE_OR_RELOADING(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EALREADY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %122

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @UNIT_MAINTENANCE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %122

23:                                               ; preds = %16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNIT_LOADED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %122

32:                                               ; preds = %23
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = call %struct.TYPE_17__* @UNIT_VTABLE(%struct.TYPE_18__* %33)
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = call i64 @dual_timestamp_is_set(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ESTALE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %122

46:                                               ; preds = %38, %32
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @UNIT_ACTIVATING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = call i32 @unit_test_condition(%struct.TYPE_18__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = load i32, i32* @ECOMM, align 4
  %57 = call i32 @SYNTHETIC_ERRNO(i32 %56)
  %58 = call i32 @log_unit_debug_errno(%struct.TYPE_18__* %55, i32 %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  br label %122

59:                                               ; preds = %50, %46
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @UNIT_ACTIVATING, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = call i32 @unit_test_assert(%struct.TYPE_18__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = load i32, i32* @EPROTO, align 4
  %70 = call i32 @SYNTHETIC_ERRNO(i32 %69)
  %71 = call i32 @log_unit_notice_errno(%struct.TYPE_18__* %68, i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %2, align 4
  br label %122

72:                                               ; preds = %63, %59
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @unit_type_supported(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %122

81:                                               ; preds = %72
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = call i32 @unit_verify_deps(%struct.TYPE_18__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @ENOLINK, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %122

88:                                               ; preds = %81
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = call %struct.TYPE_18__* @unit_following(%struct.TYPE_18__* %89)
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %5, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = icmp ne %struct.TYPE_18__* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @log_unit_debug(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = call i32 @unit_start(%struct.TYPE_18__* %102)
  store i32 %103, i32* %2, align 4
  br label %122

104:                                              ; preds = %88
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = call %struct.TYPE_17__* @UNIT_VTABLE(%struct.TYPE_18__* %105)
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %107, align 8
  %109 = icmp ne i32 (%struct.TYPE_18__*)* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @EBADR, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %122

113:                                              ; preds = %104
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = call i32 @unit_add_to_dbus_queue(%struct.TYPE_18__* %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = call %struct.TYPE_17__* @UNIT_VTABLE(%struct.TYPE_18__* %116)
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = call i32 %119(%struct.TYPE_18__* %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %113, %110, %93, %85, %78, %67, %54, %43, %29, %20, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i64 @unit_active_state(%struct.TYPE_18__*) #1

declare dso_local i64 @UNIT_IS_ACTIVE_OR_RELOADING(i64) #1

declare dso_local %struct.TYPE_17__* @UNIT_VTABLE(%struct.TYPE_18__*) #1

declare dso_local i64 @dual_timestamp_is_set(i32*) #1

declare dso_local i32 @unit_test_condition(%struct.TYPE_18__*) #1

declare dso_local i32 @log_unit_debug_errno(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @unit_test_assert(%struct.TYPE_18__*) #1

declare dso_local i32 @log_unit_notice_errno(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @unit_type_supported(i32) #1

declare dso_local i32 @unit_verify_deps(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @unit_following(%struct.TYPE_18__*) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @unit_add_to_dbus_queue(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
