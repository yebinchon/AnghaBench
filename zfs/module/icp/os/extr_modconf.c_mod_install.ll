; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_install.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modlinkage = type { i64, i32* }
%struct.modlmisc = type { i32 }

@MODREV_1 = common dso_local global i64 0, align 8
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"mod_install: modlinkage structure is not MODREV_1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_install(%struct.modlinkage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.modlinkage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.modlmisc**, align 8
  %6 = alloca %struct.modlmisc**, align 8
  store %struct.modlinkage* %0, %struct.modlinkage** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.modlinkage*, %struct.modlinkage** %3, align 8
  %8 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MODREV_1, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @CE_WARN, align 4
  %14 = call i32 @cmn_err(i32 %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.modlinkage*, %struct.modlinkage** %3, align 8
  %18 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to %struct.modlmisc**
  store %struct.modlmisc** %21, %struct.modlmisc*** %5, align 8
  br label %22

22:                                               ; preds = %50, %16
  %23 = load %struct.modlmisc**, %struct.modlmisc*** %5, align 8
  %24 = load %struct.modlmisc*, %struct.modlmisc** %23, align 8
  %25 = icmp ne %struct.modlmisc* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.modlmisc**, %struct.modlmisc*** %5, align 8
  %28 = load %struct.modlmisc*, %struct.modlmisc** %27, align 8
  %29 = load %struct.modlinkage*, %struct.modlinkage** %3, align 8
  %30 = call i32 @MODL_INSTALL(%struct.modlmisc* %28, %struct.modlinkage* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.modlinkage*, %struct.modlinkage** %3, align 8
  %34 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = bitcast i32* %36 to %struct.modlmisc**
  store %struct.modlmisc** %37, %struct.modlmisc*** %6, align 8
  br label %38

38:                                               ; preds = %42, %32
  %39 = load %struct.modlmisc**, %struct.modlmisc*** %6, align 8
  %40 = load %struct.modlmisc**, %struct.modlmisc*** %5, align 8
  %41 = icmp ne %struct.modlmisc** %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.modlmisc**, %struct.modlmisc*** %6, align 8
  %44 = load %struct.modlmisc*, %struct.modlmisc** %43, align 8
  %45 = load %struct.modlinkage*, %struct.modlinkage** %3, align 8
  %46 = call i32 @MODL_REMOVE(%struct.modlmisc* %44, %struct.modlinkage* %45)
  %47 = load %struct.modlmisc**, %struct.modlmisc*** %6, align 8
  %48 = getelementptr inbounds %struct.modlmisc*, %struct.modlmisc** %47, i32 1
  store %struct.modlmisc** %48, %struct.modlmisc*** %6, align 8
  br label %38

49:                                               ; preds = %38
  br label %53

50:                                               ; preds = %26
  %51 = load %struct.modlmisc**, %struct.modlmisc*** %5, align 8
  %52 = getelementptr inbounds %struct.modlmisc*, %struct.modlmisc** %51, i32 1
  store %struct.modlmisc** %52, %struct.modlmisc*** %5, align 8
  br label %22

53:                                               ; preds = %49, %22
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @MODL_INSTALL(%struct.modlmisc*, %struct.modlinkage*) #1

declare dso_local i32 @MODL_REMOVE(%struct.modlmisc*, %struct.modlinkage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
