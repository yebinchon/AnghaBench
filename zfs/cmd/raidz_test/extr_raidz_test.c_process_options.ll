; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_process_options.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_process_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@rto_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rto_opts_defaults = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TDBSvha:o:d:s:t:\00", align 1
@optarg = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @process_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.TYPE_4__* @rto_opts, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @bcopy(i32* @rto_opts_defaults, %struct.TYPE_4__* %8, i32 64)
  br label %10

10:                                               ; preds = %84, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %85

15:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %81 [
    i32 97, label %17
    i32 111, label %25
    i32 100, label %35
    i32 115, label %43
    i32 116, label %54
    i32 118, label %60
    i32 83, label %65
    i32 66, label %68
    i32 68, label %71
    i32 84, label %74
    i32 104, label %77
    i32 63, label %80
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i64 @strtoull(i32 %18, i32* null, i32 0)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @MAX(i32 9, i64 %20)
  %22 = call i64 @MIN(i32 13, i64 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %84

25:                                               ; preds = %15
  %26 = load i32, i32* @optarg, align 4
  %27 = call i64 @strtoull(i32 %26, i32* null, i32 0)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @MIN(i32 12, i64 %28)
  %30 = shl i64 1, %29
  %31 = lshr i64 %30, 9
  %32 = shl i64 %31, 9
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %84

35:                                               ; preds = %15
  %36 = load i32, i32* @optarg, align 4
  %37 = call i64 @strtoull(i32 %36, i32* null, i32 0)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @MAX(i32 1, i64 %38)
  %40 = call i64 @MIN(i32 255, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %84

43:                                               ; preds = %15
  %44 = load i32, i32* @optarg, align 4
  %45 = call i64 @strtoull(i32 %44, i32* null, i32 0)
  store i64 %45, i64* %5, align 8
  %46 = load i32, i32* @SPA_MAXBLOCKSHIFT, align 4
  %47 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @MAX(i32 %47, i64 %48)
  %50 = call i64 @MIN(i32 %46, i64 %49)
  %51 = shl i64 1, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %84

54:                                               ; preds = %15
  %55 = load i32, i32* @optarg, align 4
  %56 = call i64 @strtoull(i32 %55, i32* null, i32 0)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  br label %84

60:                                               ; preds = %15
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %84

65:                                               ; preds = %15
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  store i32 1, i32* %67, align 8
  br label %84

68:                                               ; preds = %15
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  store i32 1, i32* %70, align 4
  br label %84

71:                                               ; preds = %15
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  store i32 1, i32* %73, align 8
  br label %84

74:                                               ; preds = %15
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 8
  store i32 1, i32* %76, align 4
  br label %84

77:                                               ; preds = %15
  %78 = load i32, i32* @B_TRUE, align 4
  %79 = call i32 @usage(i32 %78)
  br label %84

80:                                               ; preds = %15
  br label %81

81:                                               ; preds = %15, %80
  %82 = load i32, i32* @B_FALSE, align 4
  %83 = call i32 @usage(i32 %82)
  br label %84

84:                                               ; preds = %81, %77, %74, %71, %68, %65, %60, %54, %43, %35, %25, %17
  br label %10

85:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bcopy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoull(i32, i32*, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
