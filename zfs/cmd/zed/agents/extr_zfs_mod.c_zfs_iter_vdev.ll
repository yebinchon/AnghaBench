; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_iter_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_iter_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i32*, i32*, i32)*, i32*, i8*, i32, i32* }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"  zfs_iter_vdev: matched on %llu\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"  zfs_iter_vdev: matched %s on %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"new_devid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @zfs_iter_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_iter_vdev(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %17 = call i64 @nvlist_lookup_nvlist_array(i32* %15, i32 %16, i32*** %11, i64* %10)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32**, i32*** %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %6, align 8
  call void @zfs_iter_vdev(i32* %25, i32* %29, i8* %30)
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %20

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %38 = call i64 @nvlist_lookup_nvlist_array(i32* %36, i32 %37, i32*** %11, i64* %10)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32**, i32*** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %6, align 8
  call void @zfs_iter_vdev(i32* %46, i32* %50, i8* %51)
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %41

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %59 = call i64 @nvlist_lookup_nvlist_array(i32* %57, i32 %58, i32*** %11, i64* %10)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = load i32**, i32*** %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %6, align 8
  call void @zfs_iter_vdev(i32* %67, i32* %71, i8* %72)
  br label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %62

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %160

83:                                               ; preds = %77
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %91 = call i64 @nvlist_lookup_uint64(i32* %89, i32 %90, i64* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %88
  br label %160

100:                                              ; preds = %93
  %101 = load i32, i32* @LOG_INFO, align 4
  %102 = load i64, i64* %12, align 8
  %103 = call i32 (i32, i8*, i64, ...) @zed_log_msg(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %102)
  %104 = load i8*, i8** @B_TRUE, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %150

107:                                              ; preds = %83
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %149

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @nvlist_lookup_string(i32* %113, i32 %116, i8** %8)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @strcmp(i32* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %112
  br label %160

127:                                              ; preds = %119
  %128 = load i32, i32* @LOG_INFO, align 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 (i32, i8*, i64, ...) @zed_log_msg(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %132, i8* %133)
  %135 = load i8*, i8** @B_TRUE, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @nvlist_add_string(i32* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %146)
  br label %148

148:                                              ; preds = %142, %127
  br label %149

149:                                              ; preds = %148, %107
  br label %150

150:                                              ; preds = %149, %100
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %152, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %153(i32* %154, i32* %155, i32 %158)
  br label %160

160:                                              ; preds = %150, %126, %99, %82
  ret void
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i64, ...) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
