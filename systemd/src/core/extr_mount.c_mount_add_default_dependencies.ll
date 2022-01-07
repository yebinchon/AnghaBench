; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_default_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_default_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@UNIT_DEPENDENCY_FILE = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_MOUNTINFO_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nofail\00fail\00\00", align 1
@UNIT_AFTER = common dso_local global i32 0, align 4
@SPECIAL_NETWORK_TARGET = common dso_local global i8* null, align 8
@UNIT_WANTS = common dso_local global i32 0, align 4
@SPECIAL_NETWORK_ONLINE_TARGET = common dso_local global i32 0, align 4
@SPECIAL_REMOTE_FS_PRE_TARGET = common dso_local global i8* null, align 8
@SPECIAL_REMOTE_FS_TARGET = common dso_local global i8* null, align 8
@SPECIAL_LOCAL_FS_PRE_TARGET = common dso_local global i8* null, align 8
@SPECIAL_LOCAL_FS_TARGET = common dso_local global i8* null, align 8
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@SPECIAL_UMOUNT_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@SPECIAL_SWAP_TARGET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @mount_add_default_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_add_default_dependencies(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @assert(%struct.TYPE_16__* %10)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %12)
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = call i64 @mount_is_extrinsic(%struct.TYPE_16__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %142

23:                                               ; preds = %18
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call %struct.TYPE_15__* @get_mount_parameters(%struct.TYPE_16__* %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %7, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %142

29:                                               ; preds = %23
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @UNIT_DEPENDENCY_FILE, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @UNIT_DEPENDENCY_MOUNTINFO_DEFAULT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @fstab_test_yes_no_option(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32 [ %49, %44 ], [ 0, %50 ]
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = call i64 @mount_is_network(%struct.TYPE_15__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %57)
  %59 = load i32, i32* @UNIT_AFTER, align 4
  %60 = load i8*, i8** @SPECIAL_NETWORK_TARGET, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @unit_add_dependency_by_name(%struct.TYPE_17__* %58, i32 %59, i8* %60, i32 1, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %142

67:                                               ; preds = %56
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %68)
  %70 = load i32, i32* @UNIT_WANTS, align 4
  %71 = load i32, i32* @UNIT_AFTER, align 4
  %72 = load i32, i32* @SPECIAL_NETWORK_ONLINE_TARGET, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_17__* %69, i32 %70, i32 %71, i32 %72, i32 1, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %2, align 4
  br label %142

79:                                               ; preds = %67
  %80 = load i8*, i8** @SPECIAL_REMOTE_FS_PRE_TARGET, align 8
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** @SPECIAL_REMOTE_FS_TARGET, align 8
  store i8* %81, i8** %5, align 8
  br label %85

82:                                               ; preds = %51
  %83 = load i8*, i8** @SPECIAL_LOCAL_FS_PRE_TARGET, align 8
  store i8* %83, i8** %4, align 8
  %84 = load i8*, i8** @SPECIAL_LOCAL_FS_TARGET, align 8
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %89)
  %91 = load i32, i32* @UNIT_BEFORE, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @unit_add_dependency_by_name(%struct.TYPE_17__* %90, i32 %91, i8* %92, i32 1, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %142

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %101)
  %103 = load i32, i32* @UNIT_AFTER, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @unit_add_dependency_by_name(%struct.TYPE_17__* %102, i32 %103, i8* %104, i32 1, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %142

111:                                              ; preds = %100
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %112)
  %114 = load i32, i32* @UNIT_BEFORE, align 4
  %115 = load i32, i32* @UNIT_CONFLICTS, align 4
  %116 = load i32, i32* @SPECIAL_UMOUNT_TARGET, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_17__* %113, i32 %114, i32 %115, i32 %116, i32 1, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %142

123:                                              ; preds = %111
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @streq_ptr(i32 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_16__* %130)
  %132 = load i32, i32* @UNIT_AFTER, align 4
  %133 = load i8*, i8** @SPECIAL_SWAP_TARGET, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @unit_add_dependency_by_name(%struct.TYPE_17__* %131, i32 %132, i8* %133, i32 1, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %142

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %123
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %138, %121, %109, %97, %77, %65, %28, %22, %17
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @UNIT(%struct.TYPE_16__*) #1

declare dso_local i64 @mount_is_extrinsic(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @get_mount_parameters(%struct.TYPE_16__*) #1

declare dso_local i32 @fstab_test_yes_no_option(i32, i8*) #1

declare dso_local i64 @mount_is_network(%struct.TYPE_15__*) #1

declare dso_local i32 @unit_add_dependency_by_name(%struct.TYPE_17__*, i32, i8*, i32, i32) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @streq_ptr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
