; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_pool_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_pool = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32 }
%struct.string = type { i32, i32 }

@CONF_UNSET_HASH = common dso_local global i32 0, align 4
@CONF_UNSET_DIST = common dso_local global i32 0, align 4
@CONF_UNSET_NUM = common dso_local global i8* null, align 8
@NC_OK = common dso_local global i64 0, align 8
@CONF_DEFAULT_SERVERS = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"init conf pool %p, '%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf_pool*, %struct.string*)* @conf_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_pool_init(%struct.conf_pool* %0, %struct.string* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.conf_pool*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i64, align 8
  store %struct.conf_pool* %0, %struct.conf_pool** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %7 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %8 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %7, i32 0, i32 0
  %9 = call i32 @string_init(i32* %8)
  %10 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %11 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = call i32 @string_init(i32* %12)
  %14 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %15 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %14, i32 0, i32 17
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i32 @string_init(i32* %16)
  %18 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %19 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %18, i32 0, i32 18
  %20 = call i32 @string_init(i32* %19)
  %21 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %22 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %21, i32 0, i32 17
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %25 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %24, i32 0, i32 17
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  %28 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %29 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %28, i32 0, i32 17
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @CONF_UNSET_HASH, align 4
  %32 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %33 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %32, i32 0, i32 16
  store i32 %31, i32* %33, align 8
  %34 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %35 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %34, i32 0, i32 15
  %36 = call i32 @string_init(i32* %35)
  %37 = load i32, i32* @CONF_UNSET_DIST, align 4
  %38 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %39 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %38, i32 0, i32 14
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %41 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %42 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %44 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %45 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %44, i32 0, i32 12
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %47 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %48 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %50 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %51 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %53 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %54 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %53, i32 0, i32 9
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %56 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %57 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %59 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %60 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %62 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %63 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %65 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %66 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %68 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %69 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @CONF_UNSET_NUM, align 8
  %71 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %72 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %74 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %73, i32 0, i32 1
  %75 = call i32 @array_null(i32* %74)
  %76 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %77 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %79 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %78, i32 0, i32 0
  %80 = load %struct.string*, %struct.string** %5, align 8
  %81 = call i64 @string_duplicate(i32* %79, %struct.string* %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @NC_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %2
  %86 = load i64, i64* %6, align 8
  store i64 %86, i64* %3, align 8
  br label %111

87:                                               ; preds = %2
  %88 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %89 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %88, i32 0, i32 1
  %90 = load i32, i32* @CONF_DEFAULT_SERVERS, align 4
  %91 = call i64 @array_init(i32* %89, i32 %90, i32 4)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @NC_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %97 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %96, i32 0, i32 0
  %98 = call i32 @string_deinit(i32* %97)
  %99 = load i64, i64* %6, align 8
  store i64 %99, i64* %3, align 8
  br label %111

100:                                              ; preds = %87
  %101 = load i32, i32* @LOG_VVERB, align 4
  %102 = load %struct.conf_pool*, %struct.conf_pool** %4, align 8
  %103 = load %struct.string*, %struct.string** %5, align 8
  %104 = getelementptr inbounds %struct.string, %struct.string* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.string*, %struct.string** %5, align 8
  %107 = getelementptr inbounds %struct.string, %struct.string* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @log_debug(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.conf_pool* %102, i32 %105, i32 %108)
  %110 = load i64, i64* @NC_OK, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %100, %95, %85
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i32 @string_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @array_null(i32*) #1

declare dso_local i64 @string_duplicate(i32*, %struct.string*) #1

declare dso_local i64 @array_init(i32*, i32, i32) #1

declare dso_local i32 @string_deinit(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conf_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
