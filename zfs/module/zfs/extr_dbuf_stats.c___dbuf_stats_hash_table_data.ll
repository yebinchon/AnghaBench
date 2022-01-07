; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c___dbuf_stats_hash_table_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c___dbuf_stats_hash_table_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@zfs_dbuf_state_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [223 x i8] c"%-16s %-8llu %-8lld %-8lld %-8lld %-10llu %-8llu %-5d %-5d %-7lu %-3d | %-5d %-5d 0x%-7x %-6lu %-8llu %-12llu %-6lu %-6lu %-6lu %-6lu %-6lu %-8llu %-8llu %-8d %-6lu | %-6d %-6d %-8lu %-8lu %-6llu %-6lu %-6lu %-8llu %-8llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dbuf_stats_hash_table_data(i8* %0, i64 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %12 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 112, i1 false)
  %13 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 64, i1 false)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = call %struct.TYPE_16__* @DB_DNODE(%struct.TYPE_18__* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %10, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @zfs_dbuf_state_index, align 4
  %25 = call i32 @arc_buf_info(i64 %23, %struct.TYPE_19__* %8, i32 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %28 = call i32 @__dmu_object_info_from_dnode(%struct.TYPE_16__* %27, %struct.TYPE_17__* %9)
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @spa_name(i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @dmu_objset_id(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = call i32 @dbuf_is_metadata(%struct.TYPE_18__* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = call i64 @zfs_refcount_count(i32* %75)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = call i32 @multilist_link_active(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = call i64 @zfs_refcount_count(i32* %139)
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i64 @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %41, i32 %46, i32 %50, i32 %54, i32 %59, i32 %64, i32 %70, i32 %73, i32 %77, i32 %80, i32 %82, i32 %84, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 %118, i32 %121, i32 %123, i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, i32 %141, i32 %144, i32 %147)
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %6, align 8
  %151 = icmp uge i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %26
  %153 = load i64, i64* %6, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  br label %159

155:                                              ; preds = %26
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %156, 1
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_16__* @DB_DNODE(%struct.TYPE_18__*) #2

declare dso_local i32 @arc_buf_info(i64, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @__dmu_object_info_from_dnode(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i8* @spa_name(i32) #2

declare dso_local i64 @dmu_objset_id(i32) #2

declare dso_local i32 @dbuf_is_metadata(%struct.TYPE_18__*) #2

declare dso_local i64 @zfs_refcount_count(i32*) #2

declare dso_local i32 @multilist_link_active(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
