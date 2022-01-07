; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_sd_dhcp6_lease_get_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_sd_dhcp6_lease_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_dhcp6_lease_get_address(%struct.in6_addr* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca %struct.in6_addr, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @assert_return(%struct.in6_addr* %12, i32 %14)
  %16 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @assert_return(%struct.in6_addr* %16, i32 %18)
  %20 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @assert_return(%struct.in6_addr* %20, i32 %22)
  %24 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @assert_return(%struct.in6_addr* %24, i32 %26)
  %28 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %72

35:                                               ; preds = %4
  %36 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %37 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %38 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = call i32 @memcpy(%struct.in6_addr* %36, i32* %41, i32 8)
  %43 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %44 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_4__* @be32toh(i32 %49)
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %51, align 8
  %52 = bitcast %struct.in6_addr* %43 to i8*
  %53 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %55 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_4__* @be32toh(i32 %60)
  %62 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %62, align 8
  %63 = bitcast %struct.in6_addr* %54 to i8*
  %64 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %66 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %71 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %70, i32 0, i32 0
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %35, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @assert_return(%struct.in6_addr*, i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @be32toh(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
