; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_key_new_redirect.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_key_new_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@DNS_TYPE_CNAME = common dso_local global i64 0, align 8
@DNS_TYPE_DNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @dns_resource_key_new_redirect(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_18__* %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_18__* %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DNS_TYPE_CNAME, align 8
  %19 = load i32, i32* @DNS_TYPE_DNAME, align 4
  %20 = call %struct.TYPE_18__* @IN_SET(i64 %17, i64 %18, i32 %19)
  %21 = call i32 @assert(%struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DNS_TYPE_CNAME, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_18__* @dns_resource_key_new(i32 %32, i64 %35, i32 %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %3, align 8
  br label %78

41:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = call i32 @dns_resource_key_name(%struct.TYPE_18__* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = call i32 @dns_resource_key_name(%struct.TYPE_18__* %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dns_name_change_suffix(i32 %43, i32 %47, i32 %51, i8** %8)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %78

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = call %struct.TYPE_18__* @dns_resource_key_ref(%struct.TYPE_18__* %60)
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %3, align 8
  br label %78

62:                                               ; preds = %56
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call %struct.TYPE_18__* @dns_resource_key_new_consume(i32 %65, i64 %68, i8* %69)
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %7, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i8*, i8** %8, align 8
  %75 = call %struct.TYPE_18__* @mfree(i8* %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %3, align 8
  br label %78

76:                                               ; preds = %62
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %3, align 8
  br label %78

78:                                               ; preds = %76, %73, %59, %55, %29
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %79
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @IN_SET(i64, i64, i32) #1

declare dso_local %struct.TYPE_18__* @dns_resource_key_new(i32, i64, i32) #1

declare dso_local i32 @dns_name_change_suffix(i32, i32, i32, i8**) #1

declare dso_local i32 @dns_resource_key_name(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @dns_resource_key_ref(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @dns_resource_key_new_consume(i32, i64, i8*) #1

declare dso_local %struct.TYPE_18__* @mfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
