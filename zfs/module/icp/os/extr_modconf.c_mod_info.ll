; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_info.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modlinkage = type { i64, i32 }
%struct.modinfo = type { i64, i8*, %struct.modspecific_info*, i32 }
%struct.modspecific_info = type { i8*, i32 }
%struct.modlmisc = type { i32 }

@MODMAXLINK = common dso_local global i32 0, align 4
@MODMAXLINKINFOLEN = common dso_local global i32 0, align 4
@MI_INFO_LINKAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_info(%struct.modlinkage* %0, %struct.modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.modlinkage*, align 8
  %5 = alloca %struct.modinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.modspecific_info*, align 8
  %9 = alloca %struct.modlmisc**, align 8
  store %struct.modlinkage* %0, %struct.modlinkage** %4, align 8
  store %struct.modinfo* %1, %struct.modinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.modlinkage*, %struct.modlinkage** %4, align 8
  %11 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.modinfo*, %struct.modinfo** %5, align 8
  %14 = getelementptr inbounds %struct.modinfo, %struct.modinfo* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.modlinkage*, %struct.modlinkage** %4, align 8
  %16 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.modlmisc**
  store %struct.modlmisc** %18, %struct.modlmisc*** %9, align 8
  %19 = load %struct.modinfo*, %struct.modinfo** %5, align 8
  %20 = getelementptr inbounds %struct.modinfo, %struct.modinfo* %19, i32 0, i32 2
  %21 = load %struct.modspecific_info*, %struct.modspecific_info** %20, align 8
  %22 = getelementptr inbounds %struct.modspecific_info, %struct.modspecific_info* %21, i64 0
  store %struct.modspecific_info* %22, %struct.modspecific_info** %8, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %61, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MODMAXLINK, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load %struct.modlmisc**, %struct.modlmisc*** %9, align 8
  %29 = load %struct.modlmisc*, %struct.modlmisc** %28, align 8
  %30 = icmp eq %struct.modlmisc* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.modspecific_info*, %struct.modspecific_info** %8, align 8
  %33 = getelementptr inbounds %struct.modspecific_info, %struct.modspecific_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.modspecific_info*, %struct.modspecific_info** %8, align 8
  %38 = getelementptr inbounds %struct.modspecific_info, %struct.modspecific_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.modlmisc**, %struct.modlmisc*** %9, align 8
  %41 = load %struct.modlmisc*, %struct.modlmisc** %40, align 8
  %42 = getelementptr inbounds %struct.modlmisc, %struct.modlmisc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MODMAXLINKINFOLEN, align 4
  %45 = call i32 @strlcpy(i8* %39, i32 %43, i32 %44)
  %46 = load %struct.modlmisc**, %struct.modlmisc*** %9, align 8
  %47 = load %struct.modlmisc*, %struct.modlmisc** %46, align 8
  %48 = load %struct.modlinkage*, %struct.modlinkage** %4, align 8
  %49 = load %struct.modspecific_info*, %struct.modspecific_info** %8, align 8
  %50 = getelementptr inbounds %struct.modspecific_info, %struct.modspecific_info* %49, i32 0, i32 1
  %51 = call i32 @MODL_INFO(%struct.modlmisc* %47, %struct.modlinkage* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %64

55:                                               ; preds = %36
  %56 = load %struct.modlmisc**, %struct.modlmisc*** %9, align 8
  %57 = getelementptr inbounds %struct.modlmisc*, %struct.modlmisc** %56, i32 1
  store %struct.modlmisc** %57, %struct.modlmisc*** %9, align 8
  br label %58

58:                                               ; preds = %55, %31
  %59 = load %struct.modspecific_info*, %struct.modspecific_info** %8, align 8
  %60 = getelementptr inbounds %struct.modspecific_info, %struct.modspecific_info* %59, i32 1
  store %struct.modspecific_info* %60, %struct.modspecific_info** %8, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %23

64:                                               ; preds = %54, %23
  %65 = load %struct.modinfo*, %struct.modinfo** %5, align 8
  %66 = getelementptr inbounds %struct.modinfo, %struct.modinfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MI_INFO_LINKAGE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.modlinkage*, %struct.modlinkage** %4, align 8
  %72 = bitcast %struct.modlinkage* %71 to i8*
  %73 = load %struct.modinfo*, %struct.modinfo** %5, align 8
  %74 = getelementptr inbounds %struct.modinfo, %struct.modinfo* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @MODL_INFO(%struct.modlmisc*, %struct.modlinkage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
