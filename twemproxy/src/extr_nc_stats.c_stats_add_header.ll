; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_header.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.stats_buffer }
%struct.stats_buffer = type { i8*, i32 }

@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stats*)* @stats_add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_add_header(%struct.stats* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stats_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  %8 = load %struct.stats*, %struct.stats** %3, align 8
  %9 = getelementptr inbounds %struct.stats, %struct.stats* %8, i32 0, i32 11
  store %struct.stats_buffer* %9, %struct.stats_buffer** %5, align 8
  %10 = load %struct.stats_buffer*, %struct.stats_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 123, i8* %13, align 1
  %14 = load %struct.stats_buffer*, %struct.stats_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = call i64 @time(i32* null)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.stats*, %struct.stats** %3, align 8
  %19 = getelementptr inbounds %struct.stats, %struct.stats* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.stats*, %struct.stats** %3, align 8
  %23 = load %struct.stats*, %struct.stats** %3, align 8
  %24 = getelementptr inbounds %struct.stats, %struct.stats* %23, i32 0, i32 9
  %25 = load %struct.stats*, %struct.stats** %3, align 8
  %26 = getelementptr inbounds %struct.stats, %struct.stats* %25, i32 0, i32 8
  %27 = call i64 @stats_add_string(%struct.stats* %22, i32* %24, i32* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NC_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %103

33:                                               ; preds = %1
  %34 = load %struct.stats*, %struct.stats** %3, align 8
  %35 = load %struct.stats*, %struct.stats** %3, align 8
  %36 = getelementptr inbounds %struct.stats, %struct.stats* %35, i32 0, i32 7
  %37 = load %struct.stats*, %struct.stats** %3, align 8
  %38 = getelementptr inbounds %struct.stats, %struct.stats* %37, i32 0, i32 6
  %39 = call i64 @stats_add_string(%struct.stats* %34, i32* %36, i32* %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @NC_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %103

45:                                               ; preds = %33
  %46 = load %struct.stats*, %struct.stats** %3, align 8
  %47 = load %struct.stats*, %struct.stats** %3, align 8
  %48 = getelementptr inbounds %struct.stats, %struct.stats* %47, i32 0, i32 5
  %49 = load %struct.stats*, %struct.stats** %3, align 8
  %50 = getelementptr inbounds %struct.stats, %struct.stats* %49, i32 0, i32 4
  %51 = call i64 @stats_add_string(%struct.stats* %46, i32* %48, i32* %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @NC_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* %2, align 8
  br label %103

57:                                               ; preds = %45
  %58 = load %struct.stats*, %struct.stats** %3, align 8
  %59 = load %struct.stats*, %struct.stats** %3, align 8
  %60 = getelementptr inbounds %struct.stats, %struct.stats* %59, i32 0, i32 3
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @stats_add_num(%struct.stats* %58, i32* %60, i64 %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @NC_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %103

68:                                               ; preds = %57
  %69 = load %struct.stats*, %struct.stats** %3, align 8
  %70 = load %struct.stats*, %struct.stats** %3, align 8
  %71 = getelementptr inbounds %struct.stats, %struct.stats* %70, i32 0, i32 2
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @stats_add_num(%struct.stats* %69, i32* %71, i64 %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @NC_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.stats*, %struct.stats** %3, align 8
  %81 = load %struct.stats*, %struct.stats** %3, align 8
  %82 = getelementptr inbounds %struct.stats, %struct.stats* %81, i32 0, i32 1
  %83 = call i64 (...) @conn_ntotal_conn()
  %84 = call i64 @stats_add_num(%struct.stats* %80, i32* %82, i64 %83)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @NC_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %2, align 8
  br label %103

90:                                               ; preds = %79
  %91 = load %struct.stats*, %struct.stats** %3, align 8
  %92 = load %struct.stats*, %struct.stats** %3, align 8
  %93 = getelementptr inbounds %struct.stats, %struct.stats* %92, i32 0, i32 0
  %94 = call i64 (...) @conn_ncurr_conn()
  %95 = call i64 @stats_add_num(%struct.stats* %91, i32* %93, i64 %94)
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @NC_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i64, i64* %4, align 8
  store i64 %100, i64* %2, align 8
  br label %103

101:                                              ; preds = %90
  %102 = load i64, i64* @NC_OK, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %101, %99, %88, %77, %66, %55, %43, %31
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @stats_add_string(%struct.stats*, i32*, i32*) #1

declare dso_local i64 @stats_add_num(%struct.stats*, i32*, i64) #1

declare dso_local i64 @conn_ntotal_conn(...) #1

declare dso_local i64 @conn_ncurr_conn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
