; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_copy_ace_2_fuid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_copy_ace_2_fuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ZFS_ACE_USER = common dso_local global i32 0, align 4
@ZFS_ACE_GROUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_copy_ace_2_fuid(i32* %0, i32 %1, %struct.TYPE_15__* %2, i8* %3, %struct.TYPE_16__* %4, i32 %5, i64* %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %13, align 8
  store i8* %3, i8** %14, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64* %6, i64** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %22, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %23, align 8
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %148, %9
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %151

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* @ACE_OWNER, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %33
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* @OWNING_GROUP, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* @ACE_EVERYONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %19, align 8
  %75 = load i32, i32* %21, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @ZFS_ACE_USER, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @ZFS_ACE_GROUP, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = load i32**, i32*** %18, align 8
  %84 = call i32 @zfs_fuid_create(i32* %70, i32 %73, i32* %74, i32 %82, i32** %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %65, %61, %33
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @zfs_ace_valid(i32 %88, %struct.TYPE_15__* %89, i32 %93, i32 %97)
  %99 = load i64, i64* @B_TRUE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i32, i32* @EINVAL, align 4
  %103 = call i32 @SET_ERROR(i32 %102)
  store i32 %103, i32* %10, align 4
  br label %158

104:                                              ; preds = %87
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %131 [
    i32 131, label %108
    i32 130, label %108
    i32 128, label %108
    i32 129, label %108
  ]

108:                                              ; preds = %104, %104, %104, %104
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %110 = bitcast %struct.TYPE_16__* %109 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %24, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %112 = bitcast %struct.TYPE_17__* %111 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %25, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bcopy(i32 %115, i32 %118, i32 4)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bcopy(i32 %122, i32 %125, i32 4)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %128 = ptrtoint %struct.TYPE_17__* %127 to i64
  %129 = add i64 %128, 8
  %130 = inttoptr i64 %129 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %23, align 8
  br label %136

131:                                              ; preds = %104
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %133 = ptrtoint %struct.TYPE_17__* %132 to i64
  %134 = add i64 %133, 16
  %135 = inttoptr i64 %134 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %23, align 8
  br label %136

136:                                              ; preds = %131, %108
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %138 = ptrtoint %struct.TYPE_16__* %137 to i64
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %145 = call i64 %143(%struct.TYPE_16__* %144)
  %146 = add i64 %138, %145
  %147 = inttoptr i64 %146 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %22, align 8
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %20, align 4
  br label %29

151:                                              ; preds = %29
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %153 = ptrtoint %struct.TYPE_16__* %152 to i64
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %155 = ptrtoint %struct.TYPE_16__* %154 to i64
  %156 = sub i64 %153, %155
  %157 = load i64*, i64** %17, align 8
  store i64 %156, i64* %157, align 8
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %151, %101
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i32 @zfs_fuid_create(i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @zfs_ace_valid(i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
