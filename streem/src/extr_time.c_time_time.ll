; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_time_time.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_time_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bad time format\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@TZ_NONE = common dso_local global i32 0, align 4
@TZ_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong timezeone\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"wrong # of arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @time_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_time(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.tm, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = bitcast %struct.tm* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 28, i1 false)
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %155 [
    i32 1, label %22
    i32 3, label %43
    i32 8, label %72
    i32 7, label %90
    i32 6, label %98
    i32 5, label %104
    i32 4, label %110
  ]

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @strm_get_args(i32* %23, i32 %24, i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, i32* %15)
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @strm_time_parse_time(i8* %27, i32 %28, i64* %16, i64* %17, i32* %13)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @strm_raise(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @STRM_NG, align 4
  store i32 %34, i32* %5, align 4
  br label %159

35:                                               ; preds = %22
  %36 = load i64, i64* %16, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %17, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @time_alloc(%struct.timeval* %10, i32 %40, i32* %41)
  store i32 %42, i32* %5, align 4
  br label %159

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strm_value_int(i32 %46)
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strm_value_int(i32 %51)
  %53 = sub nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strm_value_int(i32 %57)
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = call i8* @mktime(%struct.tm* %11)
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = call i32 @time_localoffset(i32 1)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* @TZ_NONE, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @time_alloc(%struct.timeval* %10, i32 %69, i32* %70)
  store i32 %71, i32* %5, align 4
  br label %159

72:                                               ; preds = %4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strm_value_str(i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @strm_str_ptr(i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @strm_str_len(i32 %79)
  %81 = call i32 @parse_tz(i32 %78, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @TZ_FAIL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @strm_raise(i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @STRM_NG, align 4
  store i32 %88, i32* %5, align 4
  br label %159

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %4, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strm_value_int(i32 %93)
  %95 = sdiv i32 %94, 1000
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %4, %90
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strm_value_int(i32 %101)
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %4, %98
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strm_value_int(i32 %107)
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 4
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %4, %104
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strm_value_int(i32 %113)
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @strm_value_int(i32 %118)
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strm_value_int(i32 %123)
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @strm_value_int(i32 %128)
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 5
  store i32 %129, i32* %130, align 4
  %131 = call i8* @mktime(%struct.tm* %11)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 8
  br i1 %137, label %138, label %149

138:                                              ; preds = %110
  %139 = call i32 @time_localoffset(i32 1)
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %140
  store i64 %143, i64* %141, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, %145
  store i64 %148, i64* %146, align 8
  br label %151

149:                                              ; preds = %110
  %150 = call i32 @time_localoffset(i32 0)
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @time_alloc(%struct.timeval* %10, i32 %152, i32* %153)
  store i32 %154, i32* %5, align 4
  br label %159

155:                                              ; preds = %4
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @strm_raise(i32* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @STRM_NG, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %151, %85, %43, %35, %31
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i8**, i32*) #2

declare dso_local i32 @strm_time_parse_time(i8*, i32, i64*, i64*, i32*) #2

declare dso_local i32 @strm_raise(i32*, i8*) #2

declare dso_local i32 @time_alloc(%struct.timeval*, i32, i32*) #2

declare dso_local i32 @strm_value_int(i32) #2

declare dso_local i8* @mktime(%struct.tm*) #2

declare dso_local i32 @time_localoffset(i32) #2

declare dso_local i32 @strm_value_str(i32) #2

declare dso_local i32 @parse_tz(i32, i32) #2

declare dso_local i32 @strm_str_ptr(i32) #2

declare dso_local i32 @strm_str_len(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
