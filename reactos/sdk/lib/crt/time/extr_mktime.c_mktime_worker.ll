; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_mktime.c_mktime_worker.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_mktime.c_mktime_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@g_monthdays = common dso_local global i64* null, align 8
@TIME_ZONE_ID_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mktime_worker(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i64, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.tm*, %struct.tm** %4, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 0, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 12
  %25 = add nsw i32 1, %24
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %30, 12
  %32 = sub nsw i32 11, %31
  %33 = load %struct.tm*, %struct.tm** %4, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.tm*, %struct.tm** %4, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 11
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.tm*, %struct.tm** %4, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %44, 12
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %8, align 4
  %51 = srem i32 %50, 12
  %52 = load %struct.tm*, %struct.tm** %4, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %40, %35
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.tm*, %struct.tm** %4, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 70
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.tm*, %struct.tm** %4, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 139
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  store i32 -1, i32* %3, align 4
  br label %161

66:                                               ; preds = %60
  %67 = load %struct.tm*, %struct.tm** %4, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 70
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = sdiv i32 %72, 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 365
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i64*, i64** @g_monthdays, align 8
  %79 = load %struct.tm*, %struct.tm** %4, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %78, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 2
  %91 = srem i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %66
  %94 = load %struct.tm*, %struct.tm** %4, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %66
  %103 = load %struct.tm*, %struct.tm** %4, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %109, 24
  store i32 %110, i32* %7, align 4
  %111 = load %struct.tm*, %struct.tm** %4, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 %118, 60
  store i32 %119, i32* %7, align 4
  %120 = load %struct.tm*, %struct.tm** %4, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %127, 60
  store i32 %128, i32* %7, align 4
  %129 = load %struct.tm*, %struct.tm** %4, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %102
  store i32 -1, i32* %3, align 4
  br label %161

139:                                              ; preds = %102
  %140 = call %struct.tm* @_gmtime64(i32* %7)
  store %struct.tm* %140, %struct.tm** %6, align 8
  %141 = load %struct.tm*, %struct.tm** %6, align 8
  %142 = icmp ne %struct.tm* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i32 -1, i32* %3, align 4
  br label %161

144:                                              ; preds = %139
  %145 = load %struct.tm*, %struct.tm** %4, align 8
  %146 = load %struct.tm*, %struct.tm** %6, align 8
  %147 = bitcast %struct.tm* %145 to i8*
  %148 = bitcast %struct.tm* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 40, i1 false)
  %149 = call i64 @GetTimeZoneInformation(%struct.TYPE_3__* %11)
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 60
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %153, %144
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %143, %138, %65
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.tm* @_gmtime64(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
