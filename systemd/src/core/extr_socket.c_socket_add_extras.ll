; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_add_extras.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_add_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".service\00", align 1
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_TRIGGERS = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @socket_add_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_add_extras(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call i32* @UNIT(%struct.TYPE_12__* %7)
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @USEC_INFINITY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @USEC_PER_SEC, align 4
  %19 = mul nsw i32 2, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i32 200, i32* %37, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 20, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i64 @have_non_accept_socket(%struct.TYPE_12__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @UNIT_DEREF(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @unit_load_related_unit(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32** %6)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %131

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @unit_ref_set(i32* %62, i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %60, %47
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @UNIT_BEFORE, align 4
  %69 = load i32, i32* @UNIT_TRIGGERS, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @UNIT_DEREF(i32 %72)
  %74 = load i32, i32* @UNIT_DEPENDENCY_IMPLICIT, align 4
  %75 = call i32 @unit_add_two_dependencies(i32* %67, i32 %68, i32 %69, i32 %73, i32 1, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %131

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = call i32 @socket_add_mount_dependencies(%struct.TYPE_12__* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %131

88:                                               ; preds = %81
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @socket_add_device_dependencies(%struct.TYPE_12__* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %131

95:                                               ; preds = %88
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @unit_patch_contexts(i32* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %131

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i64 @socket_has_exec(%struct.TYPE_12__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = call i32 @unit_add_exec_dependencies(i32* %107, i32* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %131

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @unit_set_default_slice(i32* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %131

123:                                              ; preds = %116
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = call i32 @socket_add_default_dependencies(%struct.TYPE_12__* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %128, %121, %113, %100, %93, %86, %78, %58
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32* @UNIT(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i64 @have_non_accept_socket(%struct.TYPE_12__*) #1

declare dso_local i32 @UNIT_DEREF(i32) #1

declare dso_local i32 @unit_load_related_unit(i32*, i8*, i32**) #1

declare dso_local i32 @unit_ref_set(i32*, i32*, i32*) #1

declare dso_local i32 @unit_add_two_dependencies(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @socket_add_mount_dependencies(%struct.TYPE_12__*) #1

declare dso_local i32 @socket_add_device_dependencies(%struct.TYPE_12__*) #1

declare dso_local i32 @unit_patch_contexts(i32*) #1

declare dso_local i64 @socket_has_exec(%struct.TYPE_12__*) #1

declare dso_local i32 @unit_add_exec_dependencies(i32*, i32*) #1

declare dso_local i32 @unit_set_default_slice(i32*) #1

declare dso_local i32 @socket_add_default_dependencies(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
