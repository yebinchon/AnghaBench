; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_add_extras.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_add_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, %struct.TYPE_15__, i32, i32, i32, i64*, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@_SERVICE_TYPE_INVALID = common dso_local global i64 0, align 8
@SERVICE_DBUS = common dso_local global i64 0, align 8
@SERVICE_EXEC_START = common dso_local global i64 0, align 8
@SERVICE_SIMPLE = common dso_local global i64 0, align 8
@SERVICE_ONESHOT = common dso_local global i64 0, align 8
@USEC_INFINITY = common dso_local global i32 0, align 4
@NOTIFY_NONE = common dso_local global i64 0, align 8
@SERVICE_NOTIFY = common dso_local global i64 0, align 8
@NOTIFY_MAIN = common dso_local global i64 0, align 8
@OOM_CONTINUE = common dso_local global i64 0, align 8
@OOM_KILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @service_add_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_add_extras(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_16__* %5)
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @_SERVICE_TYPE_INVALID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @SERVICE_DBUS, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 9
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @SERVICE_EXEC_START, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i64, i64* @SERVICE_SIMPLE, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %21
  %34 = load i64, i64* @SERVICE_ONESHOT, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SERVICE_ONESHOT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @USEC_INFINITY, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %45, %39
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = call i32 @service_fix_output(%struct.TYPE_16__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %57)
  %59 = call i32 @unit_patch_contexts(%struct.TYPE_17__* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %156

64:                                               ; preds = %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 6
  %69 = call i32 @unit_add_exec_dependencies(%struct.TYPE_17__* %66, i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %156

74:                                               ; preds = %64
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %75)
  %77 = call i32 @unit_set_default_slice(%struct.TYPE_17__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %156

82:                                               ; preds = %74
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NOTIFY_NONE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SERVICE_NOTIFY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %94, %88
  %105 = load i64, i64* @NOTIFY_MAIN, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %99, %82
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i64, i64* @OOM_CONTINUE, align 8
  br label %128

121:                                              ; preds = %113
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %122)
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  br label %128

128:                                              ; preds = %121, %119
  %129 = phi i64 [ %120, %119 ], [ %127, %121 ]
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %108
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @OOM_KILL, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = call i32 @service_add_default_dependencies(%struct.TYPE_16__* %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %156

148:                                              ; preds = %132
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = call i32 @service_setup_bus_name(%struct.TYPE_16__* %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %153, %146, %80, %72, %62
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @service_fix_output(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_patch_contexts(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @UNIT(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_add_exec_dependencies(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @unit_set_default_slice(%struct.TYPE_17__*) #1

declare dso_local i32 @service_add_default_dependencies(%struct.TYPE_16__*) #1

declare dso_local i32 @service_setup_bus_name(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
