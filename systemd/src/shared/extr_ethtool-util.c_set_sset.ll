; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_set_sset.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_set_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i8* }
%struct.ethtool_link_usettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ETHTOOL_SSET = common dso_local global i32 0, align 4
@ETHTOOL_GSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ifreq*, %struct.ethtool_link_usettings*)* @set_sset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sset(i32 %0, %struct.ifreq* %1, %struct.ethtool_link_usettings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca %struct.ethtool_link_usettings*, align 8
  %8 = alloca %struct.ethtool_cmd, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store %struct.ethtool_link_usettings* %2, %struct.ethtool_link_usettings** %7, align 8
  %10 = bitcast %struct.ethtool_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 44, i1 false)
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 10
  %12 = load i32, i32* @ETHTOOL_SSET, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %14 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ETHTOOL_GSET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %19
  %29 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 9
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 7
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %8, i32 %53)
  %55 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %61 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %81 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.ethtool_link_usettings*, %struct.ethtool_link_usettings** %7, align 8
  %86 = getelementptr inbounds %struct.ethtool_link_usettings, %struct.ethtool_link_usettings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = bitcast %struct.ethtool_cmd* %8 to i8*
  %91 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %92 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SIOCETHTOOL, align 4
  %95 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %96 = call i32 @ioctl(i32 %93, i32 %94, %struct.ifreq* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %28
  %100 = load i32, i32* @errno, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %99, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
