; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_blkptr_list.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_blkptr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_15__, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@dsl_deadlist_entry_count_refd = common dso_local global i32 0, align 4
@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"old-format deadlist\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0A    %s: %s (%s/%s comp), %s entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dsl_deadlist_entry_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @dump_blkptr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_blkptr_list(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_13__* @dmu_objset_spa(i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = call i32 @bpobj_count_refd(%struct.TYPE_15__* %33)
  br label %35

35:                                               ; preds = %31, %24
  br label %45

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mos_obj_refd(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = load i32, i32* @dsl_deadlist_entry_count_refd, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = call i32 @dsl_deadlist_iterate(%struct.TYPE_14__* %41, i32 %42, %struct.TYPE_13__* %43)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 32, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @CTASSERT(i32 %49)
  %51 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 32, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @CTASSERT(i32 %54)
  %56 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 32, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @CTASSERT(i32 %59)
  %61 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 32, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @CTASSERT(i32 %64)
  %66 = load i32*, i32** @dump_opt, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 100
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %45
  br label %123

71:                                               ; preds = %45
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = call i32 @dump_full_bpobj(%struct.TYPE_15__* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %123

80:                                               ; preds = %71
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %87 = call i32 @zdb_nicenum(i32 %85, i8* %86, i32 32)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %94 = call i32 @zdb_nicenum(i32 %92, i8* %93, i32 32)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %101 = call i32 @zdb_nicenum(i32 %99, i8* %100, i32 32)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = call i32 @avl_numnodes(i32* %103)
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %106 = call i32 @zdb_nicenum(i32 %104, i8* %105, i32 32)
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %108, i8* %109, i8* %110, i8* %111)
  %113 = load i32*, i32** @dump_opt, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 100
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %118

117:                                              ; preds = %80
  br label %123

118:                                              ; preds = %80
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = load i32, i32* @dsl_deadlist_entry_dump, align 4
  %122 = call i32 @dsl_deadlist_iterate(%struct.TYPE_14__* %120, i32 %121, %struct.TYPE_13__* null)
  br label %123

123:                                              ; preds = %118, %117, %76, %70
  ret void
}

declare dso_local %struct.TYPE_13__* @dmu_objset_spa(i32) #1

declare dso_local i32 @bpobj_count_refd(%struct.TYPE_15__*) #1

declare dso_local i32 @mos_obj_refd(i32) #1

declare dso_local i32 @dsl_deadlist_iterate(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @dump_full_bpobj(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @zdb_nicenum(i32, i8*, i32) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
