; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_synctask.c_zcp_synctask_wrapper.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_synctask.c_zcp_synctask_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (i32*, i32, i32*)*, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@DST_AVG_BLKSHIFT = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_synctask_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_synctask_wrapper(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %14 = call i32* (...) @fnvlist_alloc()
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @zcp_register_cleanup(i32* %15, i32* bitcast (i32 (i32*)* @fnvlist_free to i32*), i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_upvalueindex(i32 1)
  %20 = call %struct.TYPE_8__* @lua_touserdata(i32* %18, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_upvalueindex(i32 2)
  %23 = call i32 @lua_toboolean(i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call %struct.TYPE_9__* @zcp_run_info(i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @DST_AVG_BLKSHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = mul nsw i32 %34, 3
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @zcp_parse_args(i32* %36, i32 %39, i32 %42, i32 %45)
  store i32 0, i32* %3, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZFS_SPACE_CHECK_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dsl_pool_unreserved_space(%struct.TYPE_10__* %53, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_11__* @dsl_dir_phys(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i32, i32* @ENOSPC, align 4
  %75 = call i32 @SET_ERROR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %52
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %82, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 %83(i32* %84, i32 %85, i32* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i32, i32* %3, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @lua_pushnumber(i32* %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = call i64 @fnvlist_num_pairs(i32* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32*, i32** %2, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @zcp_nvlist_to_lua(i32* %105, i32* %106, i32* null, i32 0)
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load i32*, i32** %2, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @zcp_deregister_cleanup(i32* %111, i32* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @fnvlist_free(i32* %114)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @zcp_register_cleanup(i32*, i32*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local %struct.TYPE_8__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @zcp_run_info(i32*) #1

declare dso_local i32 @zcp_parse_args(i32*, i32, i32, i32) #1

declare dso_local i32 @dsl_pool_unreserved_space(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.TYPE_11__* @dsl_dir_phys(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i64 @fnvlist_num_pairs(i32*) #1

declare dso_local i32 @zcp_nvlist_to_lua(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zcp_deregister_cleanup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
