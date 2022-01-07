; ModuleID = '/home/carl/AnghaBench/streem/src/extr_csv.c_sv.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_csv.c_sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csv_data = type { i8, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRM_NG = common dso_local global i32 0, align 4
@strm_ary_null = common dso_local global i32 0, align 4
@strm_str_null = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i32 0, align 4
@sv_accept = common dso_local global i32 0, align 4
@sv_finish = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i8)* @sv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv(i32* %0, i32 %1, i32* %2, i32* %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca %struct.csv_data*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8 %4, i8* %11, align 1
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @strm_get_args(i32* %14, i32 %15, i32* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = call %struct.csv_data* @malloc(i32 40)
  store %struct.csv_data* %18, %struct.csv_data** %13, align 8
  %19 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %20 = icmp ne %struct.csv_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load i32, i32* @strm_ary_null, align 4
  %25 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %26 = getelementptr inbounds %struct.csv_data, %struct.csv_data* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %28 = getelementptr inbounds %struct.csv_data, %struct.csv_data* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @strm_str_null, align 4
  %30 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %31 = getelementptr inbounds %struct.csv_data, %struct.csv_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i8, i8* %11, align 1
  %33 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %34 = getelementptr inbounds %struct.csv_data, %struct.csv_data* %33, i32 0, i32 0
  store i8 %32, i8* %34, align 8
  %35 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %36 = getelementptr inbounds %struct.csv_data, %struct.csv_data* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @strm_filter, align 4
  %38 = load i32, i32* @sv_accept, align 4
  %39 = load i32, i32* @sv_finish, align 4
  %40 = load %struct.csv_data*, %struct.csv_data** %13, align 8
  %41 = bitcast %struct.csv_data* %40 to i8*
  %42 = call i32* @strm_stream_new(i32 %37, i32 %38, i32 %39, i8* %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @strm_stream_value(i32* %43)
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @STRM_OK, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %23, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*) #1

declare dso_local %struct.csv_data* @malloc(i32) #1

declare dso_local i32* @strm_stream_new(i32, i32, i32, i8*) #1

declare dso_local i32 @strm_stream_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
