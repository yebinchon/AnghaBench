; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_create.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32*, i64 }
%struct.array = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nutcracker\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@NC_VERSION_STRING = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"total_connections\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"curr_connections\00", align 1
@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stats* @stats_create(i32 %0, i8* %1, i32 %2, i8* %3, %struct.array* %4) #0 {
  %6 = alloca %struct.stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.array*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stats*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.array* %4, %struct.array** %11, align 8
  %14 = call %struct.stats* @nc_alloc(i32 128)
  store %struct.stats* %14, %struct.stats** %13, align 8
  %15 = load %struct.stats*, %struct.stats** %13, align 8
  %16 = icmp eq %struct.stats* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store %struct.stats* null, %struct.stats** %6, align 8
  br label %135

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.stats*, %struct.stats** %13, align 8
  %21 = getelementptr inbounds %struct.stats, %struct.stats* %20, i32 0, i32 21
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.stats*, %struct.stats** %13, align 8
  %24 = getelementptr inbounds %struct.stats, %struct.stats* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.stats*, %struct.stats** %13, align 8
  %26 = getelementptr inbounds %struct.stats, %struct.stats* %25, i32 0, i32 20
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @string_set_raw(i32* %26, i8* %27)
  %29 = call i64 @time(i32* null)
  %30 = load %struct.stats*, %struct.stats** %13, align 8
  %31 = getelementptr inbounds %struct.stats, %struct.stats* %30, i32 0, i32 19
  store i64 %29, i64* %31, align 8
  %32 = load %struct.stats*, %struct.stats** %13, align 8
  %33 = getelementptr inbounds %struct.stats, %struct.stats* %32, i32 0, i32 18
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.stats*, %struct.stats** %13, align 8
  %36 = getelementptr inbounds %struct.stats, %struct.stats* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.stats*, %struct.stats** %13, align 8
  %39 = getelementptr inbounds %struct.stats, %struct.stats* %38, i32 0, i32 18
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.stats*, %struct.stats** %13, align 8
  %42 = getelementptr inbounds %struct.stats, %struct.stats* %41, i32 0, i32 4
  %43 = call i32 @array_null(i32* %42)
  %44 = load %struct.stats*, %struct.stats** %13, align 8
  %45 = getelementptr inbounds %struct.stats, %struct.stats* %44, i32 0, i32 3
  %46 = call i32 @array_null(i32* %45)
  %47 = load %struct.stats*, %struct.stats** %13, align 8
  %48 = getelementptr inbounds %struct.stats, %struct.stats* %47, i32 0, i32 2
  %49 = call i32 @array_null(i32* %48)
  %50 = load %struct.stats*, %struct.stats** %13, align 8
  %51 = getelementptr inbounds %struct.stats, %struct.stats* %50, i32 0, i32 17
  store i64 -1, i64* %51, align 8
  %52 = load %struct.stats*, %struct.stats** %13, align 8
  %53 = getelementptr inbounds %struct.stats, %struct.stats* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.stats*, %struct.stats** %13, align 8
  %55 = getelementptr inbounds %struct.stats, %struct.stats* %54, i32 0, i32 16
  %56 = call i32 @string_set_text(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.stats*, %struct.stats** %13, align 8
  %58 = getelementptr inbounds %struct.stats, %struct.stats* %57, i32 0, i32 15
  %59 = call i32 @string_set_text(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.stats*, %struct.stats** %13, align 8
  %61 = getelementptr inbounds %struct.stats, %struct.stats* %60, i32 0, i32 14
  %62 = call i32 @string_set_text(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.stats*, %struct.stats** %13, align 8
  %64 = getelementptr inbounds %struct.stats, %struct.stats* %63, i32 0, i32 13
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @string_set_raw(i32* %64, i8* %65)
  %67 = load %struct.stats*, %struct.stats** %13, align 8
  %68 = getelementptr inbounds %struct.stats, %struct.stats* %67, i32 0, i32 12
  %69 = call i32 @string_set_text(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.stats*, %struct.stats** %13, align 8
  %71 = getelementptr inbounds %struct.stats, %struct.stats* %70, i32 0, i32 11
  %72 = load i8*, i8** @NC_VERSION_STRING, align 8
  %73 = call i32 @string_set_text(i32* %71, i8* %72)
  %74 = load %struct.stats*, %struct.stats** %13, align 8
  %75 = getelementptr inbounds %struct.stats, %struct.stats* %74, i32 0, i32 10
  %76 = call i32 @string_set_text(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.stats*, %struct.stats** %13, align 8
  %78 = getelementptr inbounds %struct.stats, %struct.stats* %77, i32 0, i32 9
  %79 = call i32 @string_set_text(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.stats*, %struct.stats** %13, align 8
  %81 = getelementptr inbounds %struct.stats, %struct.stats* %80, i32 0, i32 8
  %82 = call i32 @string_set_text(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.stats*, %struct.stats** %13, align 8
  %84 = getelementptr inbounds %struct.stats, %struct.stats* %83, i32 0, i32 7
  %85 = call i32 @string_set_text(i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.stats*, %struct.stats** %13, align 8
  %87 = getelementptr inbounds %struct.stats, %struct.stats* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.stats*, %struct.stats** %13, align 8
  %89 = getelementptr inbounds %struct.stats, %struct.stats* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.stats*, %struct.stats** %13, align 8
  %91 = getelementptr inbounds %struct.stats, %struct.stats* %90, i32 0, i32 4
  %92 = load %struct.array*, %struct.array** %11, align 8
  %93 = call i64 @stats_pool_map(i32* %91, %struct.array* %92)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @NC_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %18
  br label %132

98:                                               ; preds = %18
  %99 = load %struct.stats*, %struct.stats** %13, align 8
  %100 = getelementptr inbounds %struct.stats, %struct.stats* %99, i32 0, i32 3
  %101 = load %struct.array*, %struct.array** %11, align 8
  %102 = call i64 @stats_pool_map(i32* %100, %struct.array* %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @NC_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %132

107:                                              ; preds = %98
  %108 = load %struct.stats*, %struct.stats** %13, align 8
  %109 = getelementptr inbounds %struct.stats, %struct.stats* %108, i32 0, i32 2
  %110 = load %struct.array*, %struct.array** %11, align 8
  %111 = call i64 @stats_pool_map(i32* %109, %struct.array* %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @NC_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %132

116:                                              ; preds = %107
  %117 = load %struct.stats*, %struct.stats** %13, align 8
  %118 = call i64 @stats_create_buf(%struct.stats* %117)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @NC_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %132

123:                                              ; preds = %116
  %124 = load %struct.stats*, %struct.stats** %13, align 8
  %125 = call i64 @stats_start_aggregator(%struct.stats* %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @NC_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %132

130:                                              ; preds = %123
  %131 = load %struct.stats*, %struct.stats** %13, align 8
  store %struct.stats* %131, %struct.stats** %6, align 8
  br label %135

132:                                              ; preds = %129, %122, %115, %106, %97
  %133 = load %struct.stats*, %struct.stats** %13, align 8
  %134 = call i32 @stats_destroy(%struct.stats* %133)
  store %struct.stats* null, %struct.stats** %6, align 8
  br label %135

135:                                              ; preds = %132, %130, %17
  %136 = load %struct.stats*, %struct.stats** %6, align 8
  ret %struct.stats* %136
}

declare dso_local %struct.stats* @nc_alloc(i32) #1

declare dso_local i32 @string_set_raw(i32*, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @array_null(i32*) #1

declare dso_local i32 @string_set_text(i32*, i8*) #1

declare dso_local i64 @stats_pool_map(i32*, %struct.array*) #1

declare dso_local i64 @stats_create_buf(%struct.stats*) #1

declare dso_local i64 @stats_start_aggregator(%struct.stats*) #1

declare dso_local i32 @stats_destroy(%struct.stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
