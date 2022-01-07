; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-mdns.c_mdns_rr_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-mdns.c_mdns_rr_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Can't wire-format RR: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, %struct.TYPE_10__**)* @mdns_rr_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdns_rr_compare(%struct.TYPE_10__** %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = call i32 @assert(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CLEAR_CACHE_FLUSH(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CLEAR_CACHE_FLUSH(i32 %28)
  %30 = call i32 @CMP(i32 %23, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CMP(i32 %40, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %89

51:                                               ; preds = %35
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i32 @dns_resource_record_to_wire_format(%struct.TYPE_10__* %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @log_warning_errno(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = call i32 @dns_resource_record_to_wire_format(%struct.TYPE_10__* %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @log_warning_errno(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

67:                                               ; preds = %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = call i32 @DNS_RESOURCE_RECORD_RDATA_SIZE(%struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = call i32 @DNS_RESOURCE_RECORD_RDATA_SIZE(%struct.TYPE_10__* %70)
  %72 = call i64 @MIN(i32 %69, i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = call i32 @DNS_RESOURCE_RECORD_RDATA(%struct.TYPE_10__* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = call i32 @DNS_RESOURCE_RECORD_RDATA(%struct.TYPE_10__* %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @memcmp(i32 %74, i32 %76, i64 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = call i32 @DNS_RESOURCE_RECORD_RDATA_SIZE(%struct.TYPE_10__* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = call i32 @DNS_RESOURCE_RECORD_RDATA_SIZE(%struct.TYPE_10__* %86)
  %88 = call i32 @CMP(i32 %85, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %81, %64, %56, %49, %33
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @CLEAR_CACHE_FLUSH(i32) #1

declare dso_local i32 @dns_resource_record_to_wire_format(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @DNS_RESOURCE_RECORD_RDATA_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @DNS_RESOURCE_RECORD_RDATA(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
