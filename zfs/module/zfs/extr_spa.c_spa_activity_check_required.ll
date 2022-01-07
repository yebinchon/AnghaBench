; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check_required.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TIMESTAMP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_SEQ = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZFS_IMPORT_SKIP_MMP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@MMP_MAGIC = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32*)* @spa_activity_check_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_activity_check_required(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %18 = call i64 @nvlist_exists(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %23 = call i32* @fnvlist_lookup_nvlist(i32* %21, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_MMP_TXG, align 4
  %26 = call i32 @nvlist_lookup_uint64(i32* %24, i32 %25, i64* %12)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_TIMESTAMP, align 4
  %29 = call i32 @nvlist_lookup_uint64(i32* %27, i32 %28, i64* %13)
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* @ZPOOL_CONFIG_MMP_SEQ, align 4
  %32 = call i32 @nvlist_lookup_uint16(i32* %30, i32 %31, i32* %14)
  br label %33

33:                                               ; preds = %20, %4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %36 = call i32 @nvlist_lookup_uint64(i32* %34, i32 %35, i64* %10)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ZFS_IMPORT_SKIP_MMP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @B_FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %117

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MMP_MAGIC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @B_FALSE, align 4
  store i32 %57, i32* %5, align 4
  br label %117

58:                                               ; preds = %51, %45
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = call i64 @MMP_SEQ_VALID(%struct.TYPE_8__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = call i32 @MMP_SEQ(%struct.TYPE_8__* %85)
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  %90 = icmp eq i32 %80, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @B_FALSE, align 4
  store i32 %92, i32* %5, align 4
  br label %117

93:                                               ; preds = %88, %76, %70, %67, %61, %58
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %96 = call i64 @nvlist_exists(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %101 = call i64 @fnvlist_lookup_uint64(i32* %99, i32 %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = call i64 @spa_get_hostid(%struct.TYPE_9__* %104)
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @B_FALSE, align 4
  store i32 %108, i32* %5, align 4
  br label %117

109:                                              ; preds = %102
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @B_FALSE, align 4
  store i32 %114, i32* %5, align 4
  br label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @B_TRUE, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %113, %107, %91, %56, %43
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_lookup_uint16(i32*, i32, i32*) #1

declare dso_local i64 @MMP_SEQ_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @MMP_SEQ(%struct.TYPE_8__*) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i64 @spa_get_hostid(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
