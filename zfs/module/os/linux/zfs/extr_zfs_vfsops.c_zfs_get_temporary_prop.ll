; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_get_temporary_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_get_temporary_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@DMU_OST_ZFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"temporary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_temporary_prop(i32* %0, i32 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @dmu_objset_from_ds(i32* %17, %struct.TYPE_10__** %13)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %141

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %25 = call i64 @dmu_objset_type(%struct.TYPE_10__* %24)
  %26 = load i64, i64* @DMU_OST_ZFS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %141

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = call i32 @mutex_enter(i32* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = call %struct.TYPE_8__* @dmu_objset_get_user(%struct.TYPE_10__* %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @mutex_exit(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @ESRCH, align 4
  store i32 %42, i32* %5, align 4
  br label %141

43:                                               ; preds = %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %12, align 8
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %128 [
    i32 135, label %48
    i32 130, label %58
    i32 134, label %68
    i32 133, label %78
    i32 129, label %88
    i32 131, label %98
    i32 128, label %108
    i32 132, label %118
  ]

48:                                               ; preds = %43
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %53, %48
  br label %130

58:                                               ; preds = %43
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %63, %58
  br label %130

68:                                               ; preds = %43
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %73, %68
  br label %130

78:                                               ; preds = %43
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %83, %78
  br label %130

88:                                               ; preds = %43
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  br label %97

97:                                               ; preds = %93, %88
  br label %130

98:                                               ; preds = %43
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %103, %98
  br label %130

108:                                              ; preds = %43
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %113, %108
  br label %130

118:                                              ; preds = %43
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %123, %118
  br label %130

128:                                              ; preds = %43
  %129 = load i32, i32* @ENOENT, align 4
  store i32 %129, i32* %5, align 4
  br label %141

130:                                              ; preds = %127, %117, %107, %97, %87, %77, %67, %57
  %131 = load i64, i64* %14, align 8
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @strcpy(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %138 = load i64, i64* %14, align 8
  %139 = load i64*, i64** %8, align 8
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %135, %130
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %128, %41, %28, %21
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @dmu_objset_from_ds(i32*, %struct.TYPE_10__**) #1

declare dso_local i64 @dmu_objset_type(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_8__* @dmu_objset_get_user(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
