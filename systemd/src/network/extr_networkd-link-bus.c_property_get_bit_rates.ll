; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_property_get_bit_rates.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link-bus.c_property_get_bit_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@BUS_ERROR_SPEED_METER_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Speed meter is disabled.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Speed meter is not active.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to measure bit-rates.\00", align 1
@USEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@UINT64_MAX = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"(tt)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_bit_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_bit_rates(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %16, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %13, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %14, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %17, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %7
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* @BUS_ERROR_SPEED_METER_INACTIVE, align 4
  %42 = call i32 @sd_bus_error_set(i32* %40, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %8, align 4
  br label %165

43:                                               ; preds = %7
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* @BUS_ERROR_SPEED_METER_INACTIVE, align 4
  %51 = call i32 @sd_bus_error_set(i32* %49, i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %8, align 4
  br label %165

52:                                               ; preds = %43
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* @BUS_ERROR_SPEED_METER_INACTIVE, align 4
  %60 = call i32 @sd_bus_error_set(i32* %58, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %8, align 4
  br label %165

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = sitofp i64 %77 to double
  %79 = load double, double* @USEC_PER_SEC, align 8
  %80 = fdiv double %78, %79
  store double %80, double* %18, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %61
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %94, %98
  %100 = sitofp i64 %99 to double
  %101 = load double, double* %18, align 8
  %102 = fdiv double %100, %101
  %103 = fptosi double %102 to i64
  store i64 %103, i64* %19, align 8
  br label %120

104:                                              ; preds = %61
  %105 = load double, double* @UINT64_MAX, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %109, %113
  %115 = sitofp i64 %114 to double
  %116 = fsub double %105, %115
  %117 = load double, double* %18, align 8
  %118 = fdiv double %116, %117
  %119 = fptosi double %118 to i64
  store i64 %119, i64* %19, align 8
  br label %120

120:                                              ; preds = %104, %90
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %120
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %134, %138
  %140 = sitofp i64 %139 to double
  %141 = load double, double* %18, align 8
  %142 = fdiv double %140, %141
  %143 = fptosi double %142 to i64
  store i64 %143, i64* %20, align 8
  br label %160

144:                                              ; preds = %120
  %145 = load double, double* @UINT64_MAX, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %149, %153
  %155 = sitofp i64 %154 to double
  %156 = fsub double %145, %155
  %157 = load double, double* %18, align 8
  %158 = fdiv double %156, %157
  %159 = fptosi double %158 to i64
  store i64 %159, i64* %20, align 8
  br label %160

160:                                              ; preds = %144, %130
  %161 = load i32*, i32** %13, align 8
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %20, align 8
  %164 = call i32 @sd_bus_message_append(i32* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %162, i64 %163)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %160, %57, %48, %39
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_bus_error_set(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
