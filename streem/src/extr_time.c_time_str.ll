; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_time_str.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_time_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_time = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.tm = type { i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"v|s\00", align 1
@TZ_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong timezeone\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@TZ_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%Y.%m.%d\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%Y.%m.%dT%H:%M:%S\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%c%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @time_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_str(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strm_time*, align 8
  %11 = alloca %struct.tm, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [20 x i8], align 16
  %20 = alloca double, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.strm_time* @get_time(i32 %30)
  store %struct.strm_time* %31, %struct.strm_time** %10, align 8
  %32 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %33 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  br label %53

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @strm_get_args(i32* %36, i32 %37, i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %16, i8** %17, i32* %18)
  %40 = load i32, i32* %16, align 4
  %41 = call %struct.strm_time* @get_time(i32 %40)
  store %struct.strm_time* %41, %struct.strm_time** %10, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @parse_tz(i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @TZ_FAIL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @strm_raise(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @STRM_NG, align 4
  store i32 %51, i32* %5, align 4
  br label %165

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @TZ_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %59 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_tm(i32 %61, i32 0, %struct.tm* %11)
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %76 = call i64 @strftime(i8* %75, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %11)
  store i64 %76, i64* %15, align 8
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %78 = load i64, i64* %15, align 8
  %79 = call i32 @strm_str_new(i8* %77, i64 %78)
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @STRM_OK, align 4
  store i32 %81, i32* %5, align 4
  br label %165

82:                                               ; preds = %70, %66, %57
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %85 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @get_tm(i32 %87, i32 %88, %struct.tm* %11)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %91 = call i64 @strftime(i8* %90, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %11)
  store i64 %91, i64* %15, align 8
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %14, align 8
  %95 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %96 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %83
  %101 = load %struct.strm_time*, %struct.strm_time** %10, align 8
  %102 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sitofp i64 %104 to double
  %106 = fdiv double %105, 1.000000e+06
  store double %106, double* %20, align 8
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %108 = load double, double* %20, align 8
  %109 = fptosi double %108 to i8
  %110 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %107, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8 signext %109)
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %21, align 8
  %113 = load i8*, i8** %21, align 8
  %114 = call i64 @strlen(i8* %113)
  store i64 %114, i64* %22, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %21, align 8
  %117 = load i64, i64* %22, align 8
  %118 = call i32 @strncpy(i8* %115, i8* %116, i64 %117)
  %119 = load i64, i64* %22, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %14, align 8
  br label %122

122:                                              ; preds = %100, %83
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** %14, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  store i8 90, i8* %127, align 1
  %128 = load i8*, i8** %14, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 0, i8* %129, align 1
  br label %158

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = sdiv i32 %131, 60
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %23, align 4
  %134 = icmp sgt i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 43, i32 45
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %24, align 1
  %138 = load i32, i32* %23, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %23, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %23, align 4
  br label %143

143:                                              ; preds = %140, %130
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = sub i64 256, %149
  %151 = trunc i64 %150 to i32
  %152 = load i8, i8* %24, align 1
  %153 = load i32, i32* %23, align 4
  %154 = sdiv i32 %153, 60
  %155 = load i32, i32* %23, align 4
  %156 = srem i32 %155, 60
  %157 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %144, i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8 signext %152, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %143, %125
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %161 = call i64 @strlen(i8* %160)
  %162 = call i32 @strm_str_new(i8* %159, i64 %161)
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* @STRM_OK, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %158, %74, %48
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.strm_time* @get_time(i32) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i8**, i32*) #1

declare dso_local i32 @parse_tz(i8*, i32) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i32 @get_tm(i32, i32, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @strm_str_new(i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
