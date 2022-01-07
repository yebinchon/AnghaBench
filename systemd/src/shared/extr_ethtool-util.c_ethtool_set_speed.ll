; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_speed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_cmd = type { i32, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@_DUP_INVALID = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ETHTOOL_SSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_set_speed(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethtool_cmd, align 4
  %11 = alloca %struct.ifreq, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 0
  %15 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %18 = bitcast %struct.ethtool_cmd* %10 to i8*
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  store i32 0, i32* %19, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @_DUP_INVALID, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %99

27:                                               ; preds = %22, %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ethtool_connect_or_warn(i32* %32, i32 1)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %99

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %27
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFNAMSIZ, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strscpy(i32 %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SIOCETHTOOL, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.ifreq* %11)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @errno, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %99

54:                                               ; preds = %39
  %55 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %10)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %10, i32 %59)
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %81 [
    i32 128, label %63
    i32 129, label %72
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DUPLEX_HALF, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @DUPLEX_HALF, align 4
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %82

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DUPLEX_FULL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @DUPLEX_FULL, align 4
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %82

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %80, %71
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @ETHTOOL_SSET, align 4
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SIOCETHTOOL, align 4
  %91 = call i32 @ioctl(i32 %89, i32 %90, %struct.ifreq* %11)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @errno, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %99

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %82
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %94, %51, %36, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @ethtool_connect_or_warn(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
