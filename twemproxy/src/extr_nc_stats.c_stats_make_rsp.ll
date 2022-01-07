; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_make_rsp.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_make_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32 }
%struct.stats_pool = type { i32, i32, i32 }
%struct.stats_server = type { i32, i32 }

@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stats*)* @stats_make_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_make_rsp(%struct.stats* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stats_pool*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stats_server*, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  %9 = load %struct.stats*, %struct.stats** %3, align 8
  %10 = call i64 @stats_add_header(%struct.stats* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NC_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %2, align 8
  br label %114

16:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %101, %16
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.stats*, %struct.stats** %3, align 8
  %20 = getelementptr inbounds %struct.stats, %struct.stats* %19, i32 0, i32 0
  %21 = call i64 @array_n(i32* %20)
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %104

23:                                               ; preds = %17
  %24 = load %struct.stats*, %struct.stats** %3, align 8
  %25 = getelementptr inbounds %struct.stats, %struct.stats* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @array_get(i32* %25, i64 %26)
  %28 = bitcast i8* %27 to %struct.stats_pool*
  store %struct.stats_pool* %28, %struct.stats_pool** %6, align 8
  %29 = load %struct.stats*, %struct.stats** %3, align 8
  %30 = load %struct.stats_pool*, %struct.stats_pool** %6, align 8
  %31 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %30, i32 0, i32 2
  %32 = call i64 @stats_begin_nesting(%struct.stats* %29, i32* %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @NC_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %114

38:                                               ; preds = %23
  %39 = load %struct.stats*, %struct.stats** %3, align 8
  %40 = load %struct.stats_pool*, %struct.stats_pool** %6, align 8
  %41 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %40, i32 0, i32 1
  %42 = call i64 @stats_copy_metric(%struct.stats* %39, i32* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @NC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %114

48:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.stats_pool*, %struct.stats_pool** %6, align 8
  %52 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %51, i32 0, i32 0
  %53 = call i64 @array_n(i32* %52)
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %49
  %56 = load %struct.stats_pool*, %struct.stats_pool** %6, align 8
  %57 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i8* @array_get(i32* %57, i64 %58)
  %60 = bitcast i8* %59 to %struct.stats_server*
  store %struct.stats_server* %60, %struct.stats_server** %8, align 8
  %61 = load %struct.stats*, %struct.stats** %3, align 8
  %62 = load %struct.stats_server*, %struct.stats_server** %8, align 8
  %63 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %62, i32 0, i32 1
  %64 = call i64 @stats_begin_nesting(%struct.stats* %61, i32* %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @NC_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %2, align 8
  br label %114

70:                                               ; preds = %55
  %71 = load %struct.stats*, %struct.stats** %3, align 8
  %72 = load %struct.stats_server*, %struct.stats_server** %8, align 8
  %73 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %72, i32 0, i32 0
  %74 = call i64 @stats_copy_metric(%struct.stats* %71, i32* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @NC_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %4, align 8
  store i64 %79, i64* %2, align 8
  br label %114

80:                                               ; preds = %70
  %81 = load %struct.stats*, %struct.stats** %3, align 8
  %82 = call i64 @stats_end_nesting(%struct.stats* %81)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @NC_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %2, align 8
  br label %114

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %49

92:                                               ; preds = %49
  %93 = load %struct.stats*, %struct.stats** %3, align 8
  %94 = call i64 @stats_end_nesting(%struct.stats* %93)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @NC_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %4, align 8
  store i64 %99, i64* %2, align 8
  br label %114

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %17

104:                                              ; preds = %17
  %105 = load %struct.stats*, %struct.stats** %3, align 8
  %106 = call i64 @stats_add_footer(%struct.stats* %105)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @NC_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i64, i64* %4, align 8
  store i64 %111, i64* %2, align 8
  br label %114

112:                                              ; preds = %104
  %113 = load i64, i64* @NC_OK, align 8
  store i64 %113, i64* %2, align 8
  br label %114

114:                                              ; preds = %112, %110, %98, %86, %78, %68, %46, %36, %14
  %115 = load i64, i64* %2, align 8
  ret i64 %115
}

declare dso_local i64 @stats_add_header(%struct.stats*) #1

declare dso_local i64 @array_n(i32*) #1

declare dso_local i8* @array_get(i32*, i64) #1

declare dso_local i64 @stats_begin_nesting(%struct.stats*, i32*) #1

declare dso_local i64 @stats_copy_metric(%struct.stats*, i32*) #1

declare dso_local i64 @stats_end_nesting(%struct.stats*) #1

declare dso_local i64 @stats_add_footer(%struct.stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
