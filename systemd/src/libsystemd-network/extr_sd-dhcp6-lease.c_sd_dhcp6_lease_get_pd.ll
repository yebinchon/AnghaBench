; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_sd_dhcp6_lease_get_pd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_sd_dhcp6_lease_get_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.in6_addr, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_dhcp6_lease_get_pd(%struct.in6_addr* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, %struct.in6_addr* %3, %struct.in6_addr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr, align 8
  %13 = alloca %struct.in6_addr, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %11, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @assert_return(%struct.in6_addr* %14, i32 %16)
  %18 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @assert_return(%struct.in6_addr* %18, i32 %20)
  %22 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @assert_return(%struct.in6_addr* %22, i32 %24)
  %26 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @assert_return(%struct.in6_addr* %26, i32 %28)
  %30 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @assert_return(%struct.in6_addr* %30, i32 %32)
  %34 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOMSG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %86

41:                                               ; preds = %5
  %42 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %43 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = call i32 @memcpy(%struct.in6_addr* %42, i32* %47, i32 8)
  %49 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %50 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = bitcast %struct.in6_addr* %49 to i8*
  %56 = bitcast %struct.in6_addr* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %58 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %59 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_4__* @be32toh(i32 %63)
  %65 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %65, align 8
  %66 = bitcast %struct.in6_addr* %57 to i8*
  %67 = bitcast %struct.in6_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %69 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %70 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_4__* @be32toh(i32 %74)
  %76 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %76, align 8
  %77 = bitcast %struct.in6_addr* %68 to i8*
  %78 = bitcast %struct.in6_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %80 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %85 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %84, i32 0, i32 0
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %85, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %41, %38
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @assert_return(%struct.in6_addr*, i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
