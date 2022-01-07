; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_collect_nvlist_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_collect_nvlist_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"children\00", align 1
@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"skip type %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @collect_nvlist_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_nvlist_stats(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %110, %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @nvlist_next_nvpair(i32* %17, i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %111

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @nvpair_type(i32* %24)
  switch i32 %25, label %106 [
    i32 129, label %26
    i32 128, label %34
    i32 132, label %42
    i32 131, label %48
    i32 130, label %56
  ]

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fnvpair_value_string(i32* %31)
  %33 = call i32 @fnvlist_add_string(i32 %29, i8* %30, i32 %32)
  br label %110

34:                                               ; preds = %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @fnvpair_value_uint64(i32* %39)
  %41 = call i32 @fnvlist_add_uint64(i32 %37, i8* %38, i32 %40)
  br label %110

42:                                               ; preds = %21
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @fnvlist_add_boolean(i32 %45, i8* %46)
  br label %110

48:                                               ; preds = %21
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @nvpair_value_nvlist(i32* %49, i32** %5)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  call void @collect_nvlist_stats(i32* %53, %struct.TYPE_3__* %54)
  br label %55

55:                                               ; preds = %52, %48
  br label %110

56:                                               ; preds = %21
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @nvpair_value_nvlist_array(i32* %57, i32*** %6, i64* %10)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %110

61:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %102, %61
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = load i32**, i32*** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  call void @collect_nvlist_stats(i32* %70, %struct.TYPE_3__* %71)
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %66
  %76 = load i32**, i32*** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @NV_ENCODE_XDR, align 4
  %81 = call i32 @nvlist_size(i32* %79, i64* %11, i32 %80)
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %75
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %96, %66
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %62

105:                                              ; preds = %62
  br label %110

106:                                              ; preds = %21
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @nvpair_type(i32* %107)
  %109 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %105, %60, %55, %42, %34, %26
  br label %16

111:                                              ; preds = %16
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @fnvlist_add_string(i32, i8*, i32) #1

declare dso_local i32 @fnvpair_value_string(i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32, i8*, i32) #1

declare dso_local i32 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @nvpair_value_nvlist_array(i32*, i32***, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
