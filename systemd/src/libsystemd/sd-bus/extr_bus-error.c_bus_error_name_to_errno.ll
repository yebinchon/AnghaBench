; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-error.c_bus_error_name_to_errno.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-error.c_bus_error_name_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"System.Error.\00", align 1
@EIO = common dso_local global i32 0, align 4
@additional_error_maps = common dso_local global %struct.TYPE_7__** null, align 8
@BUS_ERROR_MAP_END_MARKER = common dso_local global i64 0, align 8
@__start_SYSTEMD_BUS_ERROR_MAP = common dso_local global %struct.TYPE_7__* null, align 8
@__stop_SYSTEMD_BUS_ERROR_MAP = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bus_error_name_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_error_name_to_errno(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %100

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @startswith(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @errno_from_name(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %100

26:                                               ; preds = %12
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @additional_error_maps, align 8
  %28 = icmp ne %struct.TYPE_7__** %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @additional_error_maps, align 8
  store %struct.TYPE_7__** %30, %struct.TYPE_7__*** %4, align 8
  br label %31

31:                                               ; preds = %62, %29
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %5, align 8
  br label %38

38:                                               ; preds = %58, %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BUS_ERROR_MAP_END_MARKER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @streq(i32 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %100

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 1
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %5, align 8
  br label %38

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %63, i32 1
  store %struct.TYPE_7__** %64, %struct.TYPE_7__*** %4, align 8
  br label %31

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__start_SYSTEMD_BUS_ERROR_MAP, align 8
  %68 = call %struct.TYPE_7__* @ALIGN_TO_PTR(%struct.TYPE_7__* %67, i32 8)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %5, align 8
  br label %69

69:                                               ; preds = %95, %79, %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__stop_SYSTEMD_BUS_ERROR_MAP, align 8
  %72 = icmp ult %struct.TYPE_7__* %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BUS_ERROR_MAP_END_MARKER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 1
  %82 = call %struct.TYPE_7__* @ALIGN_TO_PTR(%struct.TYPE_7__* %81, i32 8)
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %5, align 8
  br label %69

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @streq(i32 %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %100

95:                                               ; preds = %83
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 1
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %5, align 8
  br label %69

98:                                               ; preds = %69
  %99 = load i32, i32* @EIO, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %90, %52, %24, %22, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @errno_from_name(i8*) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ALIGN_TO_PTR(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
