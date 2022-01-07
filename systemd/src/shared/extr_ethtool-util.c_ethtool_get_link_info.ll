; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_get_link_info.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_get_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_cmd = type { i32, i32, i32, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_get_link_info(i32* %0, i8* %1, i32* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ethtool_cmd, align 4
  %15 = alloca %struct.ifreq, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 3
  %22 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  %24 = bitcast %struct.ethtool_cmd* %14 to i8*
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ethtool_connect_or_warn(i32* %30, i32 0)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %7, align 4
  br label %91

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %6
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFNAMSIZ, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strscpy(i32 %39, i32 %40, i8* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SIOCETHTOOL, align 4
  %46 = call i32 @ioctl(i32 %44, i32 %45, %struct.ifreq* %15)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @errno, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %91

52:                                               ; preds = %37
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i64*, i64** %11, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %14)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @SPEED_UNKNOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @SIZE_MAX, align 8
  br label %73

69:                                               ; preds = %62
  %70 = load i64, i64* %17, align 8
  %71 = mul i64 %70, 1000
  %72 = mul i64 %71, 1000
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ]
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** %13, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %83
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %49, %34
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @ethtool_connect_or_warn(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
