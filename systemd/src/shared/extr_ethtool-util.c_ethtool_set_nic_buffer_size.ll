; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_nic_buffer_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_nic_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.ethtool_ringparam = type { i64, i64, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GRINGPARAM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ETHTOOL_SRINGPARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_set_nic_buffer_size(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.ethtool_ringparam, align 8
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = bitcast %struct.ethtool_ringparam* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 2
  %14 = load i32, i32* @ETHTOOL_GRINGPARAM, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %16 = bitcast %struct.ethtool_ringparam* %8 to i8*
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  store i32 0, i32* %17, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ethtool_connect_or_warn(i32* %22, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %97

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %3
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFNAMSIZ, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strscpy(i32 %31, i32 %32, i8* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SIOCETHTOOL, align 4
  %38 = call i32 @ioctl(i32 %36, i32 %37, %struct.ifreq* %9)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %29
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i32, i32* @ETHTOOL_SRINGPARAM, align 4
  %85 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SIOCETHTOOL, align 4
  %89 = call i32 @ioctl(i32 %87, i32 %88, %struct.ifreq* %9)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @errno, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %97

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %80
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %92, %41, %26
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ethtool_connect_or_warn(i32*, i32) #2

declare dso_local i32 @strscpy(i32, i32, i8*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
