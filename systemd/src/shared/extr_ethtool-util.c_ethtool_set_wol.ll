; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_wolinfo = type { i32, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GWOL = common dso_local global i32 0, align 4
@_WOL_INVALID = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@ETHTOOL_SWOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_set_wol(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_wolinfo, align 4
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 0
  %13 = load i32, i32* @ETHTOOL_GWOL, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %16 = bitcast %struct.ethtool_wolinfo* %8 to i8*
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  store i32 0, i32* %17, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @_WOL_INVALID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ethtool_connect_or_warn(i32* %27, i32 1)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %139

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFNAMSIZ, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strscpy(i32 %36, i32 %37, i8* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIOCETHTOOL, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.ifreq* %9)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %139

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %121 [
    i32 129, label %51
    i32 128, label %60
    i32 131, label %69
    i32 134, label %78
    i32 135, label %87
    i32 133, label %96
    i32 132, label %105
    i32 130, label %114
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WAKE_PHY, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @WAKE_PHY, align 4
  %58 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %122

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WAKE_UCAST, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @WAKE_UCAST, align 4
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %122

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WAKE_MCAST, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @WAKE_MCAST, align 4
  %76 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %69
  br label %122

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WAKE_BCAST, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @WAKE_BCAST, align 4
  %85 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %122

87:                                               ; preds = %49
  %88 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @WAKE_ARP, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @WAKE_ARP, align 4
  %94 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %122

96:                                               ; preds = %49
  %97 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @WAKE_MAGIC, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @WAKE_MAGIC, align 4
  %103 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %96
  br label %122

105:                                              ; preds = %49
  %106 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %112 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %122

114:                                              ; preds = %49
  %115 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i32 0, i32* %119, align 4
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %114
  br label %122

121:                                              ; preds = %49
  br label %122

122:                                              ; preds = %121, %120, %113, %104, %95, %86, %77, %68, %59
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i32, i32* @ETHTOOL_SWOL, align 4
  %127 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SIOCETHTOOL, align 4
  %131 = call i32 @ioctl(i32 %129, i32 %130, %struct.ifreq* %9)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @errno, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %139

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %122
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %134, %46, %31, %21
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @ethtool_connect_or_warn(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
