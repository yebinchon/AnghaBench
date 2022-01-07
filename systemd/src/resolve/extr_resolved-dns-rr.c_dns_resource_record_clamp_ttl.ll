; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_clamp_ttl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_clamp_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@DNS_TYPE_OPT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_resource_record_clamp_ttl(%struct.TYPE_9__** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_9__** %9)
  %11 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DNS_TYPE_OPT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @MIN(i64 %26, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 1, i32* %3, align 4
  br label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = call %struct.TYPE_9__* @dns_resource_record_copy(%struct.TYPE_9__* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %44
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @dns_resource_record_unref(%struct.TYPE_9__* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %60, align 8
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %49, %40, %34, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @assert(%struct.TYPE_9__**) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.TYPE_9__* @dns_resource_record_copy(%struct.TYPE_9__*) #1

declare dso_local i32 @dns_resource_record_unref(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
