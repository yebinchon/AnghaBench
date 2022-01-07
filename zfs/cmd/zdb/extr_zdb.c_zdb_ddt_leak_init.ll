; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_ddt_leak_init.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_ddt_leak_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32** }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@dump_opt = common dso_local global i32* null, align 8
@DDT_CLASS_UNIQUE = common dso_local global i64 0, align 8
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@DDT_PHYS_DITTO = common dso_local global i32 0, align 4
@ZDB_OT_DITTO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @zdb_ddt_leak_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_ddt_leak_init(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = load i32*, i32** @dump_opt, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 76
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 @bzero(%struct.TYPE_19__* %5, i32 16)
  br label %20

20:                                               ; preds = %81, %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call i32 @ddt_walk(%struct.TYPE_16__* %21, %struct.TYPE_19__* %5, %struct.TYPE_18__* %6)
  store i32 %22, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DDT_CLASS_UNIQUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %105

32:                                               ; preds = %24
  %33 = call i32 @ddt_phys_total_refcnt(%struct.TYPE_18__* %6)
  %34 = icmp sgt i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %76, %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %76

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = call i32 @ddt_bp_create(i64 %49, i32* %50, %struct.TYPE_17__* %51, i32* %9)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = load i32, i32* @ZDB_OT_DITTO, align 4
  %59 = call i32 @zdb_count_block(%struct.TYPE_15__* %57, i32* null, i32* %9, i32 %58)
  br label %75

60:                                               ; preds = %47
  %61 = call i32 @BP_GET_ASIZE(i32* %9)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 %61, %65
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %60, %56
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 1
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %10, align 8
  br label %37

81:                                               ; preds = %37
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @ddt_enter(i32* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @B_TRUE, align 4
  %93 = call i32* @ddt_lookup(i32* %91, i32* %9, i32 %92)
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @VERIFY(i32 %95)
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @ddt_exit(i32* %97)
  br label %20

99:                                               ; preds = %20
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ENOENT, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  br label %105

105:                                              ; preds = %99, %31
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ddt_walk(%struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ddt_phys_total_refcnt(%struct.TYPE_18__*) #1

declare dso_local i32 @ddt_bp_create(i64, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @zdb_count_block(%struct.TYPE_15__*, i32*, i32*, i32) #1

declare dso_local i32 @BP_GET_ASIZE(i32*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @ddt_lookup(i32*, i32*, i32) #1

declare dso_local i32 @ddt_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
