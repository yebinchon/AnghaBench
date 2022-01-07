; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_channels.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_channels = type { i64, i64, i64, i64, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GCHANNELS = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ETHTOOL_SCHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_set_channels(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.ethtool_channels, align 8
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = bitcast %struct.ethtool_channels* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 4
  %14 = load i32, i32* @ETHTOOL_GCHANNELS, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %16 = bitcast %struct.ethtool_channels* %8 to i8*
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
  br label %129

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
  br label %129

44:                                               ; preds = %29
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 0
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
  %60 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %49, %44
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %73, %66, %61
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 2
  store i64 %93, i64* %94, align 8
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %90, %83, %78
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 3
  store i64 %110, i64* %111, align 8
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %100, %95
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32, i32* @ETHTOOL_SCHANNELS, align 4
  %117 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %8, i32 0, i32 4
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SIOCETHTOOL, align 4
  %121 = call i32 @ioctl(i32 %119, i32 %120, %struct.ifreq* %9)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @errno, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %129

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %112
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %124, %41, %26
  %130 = load i32, i32* %4, align 4
  ret i32 %130
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
