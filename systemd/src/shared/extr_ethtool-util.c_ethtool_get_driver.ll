; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_get_driver.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_get_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_drvinfo = type { i32, i32 }
%struct.ifreq = type { i8*, i32 }

@ETHTOOL_GDRVINFO = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_get_driver(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ethtool_drvinfo, align 4
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 1
  %14 = load i32, i32* @ETHTOOL_GDRVINFO, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %16 = bitcast %struct.ethtool_drvinfo* %8 to i8*
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  store i32 0, i32* %17, align 8
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
  br label %56

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
  br label %56

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @strdup(i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i8*, i8** %10, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %50, %41, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ethtool_connect_or_warn(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
