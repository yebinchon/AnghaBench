; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcache_boot.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcache_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@opt_lg_tcache_max = common dso_local global i32 0, align 4
@SMALL_MAXCLASS = common dso_local global i32 0, align 4
@tcache_maxclass = common dso_local global i32 0, align 4
@tcaches_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tcaches\00", align 1
@WITNESS_RANK_TCACHES = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@nhbins = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@tcache_bin_info = common dso_local global %struct.TYPE_4__* null, align 8
@stack_nelms = common dso_local global i64 0, align 8
@NBINS = common dso_local global i32 0, align 4
@bin_infos = common dso_local global %struct.TYPE_5__* null, align 8
@TCACHE_NSLOTS_SMALL_MIN = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_SMALL_MAX = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcache_boot(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @opt_lg_tcache_max, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = call i32 @ZU(i32 1)
  %9 = load i32, i32* @opt_lg_tcache_max, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* @SMALL_MAXCLASS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @SMALL_MAXCLASS, align 4
  store i32 %14, i32* @tcache_maxclass, align 4
  br label %19

15:                                               ; preds = %7
  %16 = call i32 @ZU(i32 1)
  %17 = load i32, i32* @opt_lg_tcache_max, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* @tcache_maxclass, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i32, i32* @WITNESS_RANK_TCACHES, align 4
  %21 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %22 = call i64 @malloc_mutex_init(i32* @tcaches_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %132

25:                                               ; preds = %19
  %26 = load i32, i32* @tcache_maxclass, align 4
  %27 = call i32 @sz_size2index(i32 %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @nhbins, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (...) @b0get()
  %31 = load i32, i32* @nhbins, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @CACHELINE, align 4
  %36 = call i64 @base_alloc(i32* %29, i32 %30, i32 %34, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** @tcache_bin_info, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %39 = icmp eq %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %132

41:                                               ; preds = %25
  store i64 0, i64* @stack_nelms, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %104, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NBINS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 1
  %54 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  br label %94

63:                                               ; preds = %46
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 1
  %71 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bin_infos, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  br label %93

86:                                               ; preds = %63
  %87 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %73
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @stack_nelms, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* @stack_nelms, align 8
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %42

107:                                              ; preds = %42
  br label %108

108:                                              ; preds = %128, %107
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @nhbins, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load i32, i32* @TCACHE_NSLOTS_LARGE, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @stack_nelms, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* @stack_nelms, align 8
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %4, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %108

131:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %40, %24
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ZU(i32) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i64 @base_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @b0get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
