; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modconf.c_mod_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modlinkage = type { i32* }
%struct.modlmisc = type { i32 }

@CE_WARN = common dso_local global i32 0, align 4
@reins_err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_remove(%struct.modlinkage* %0) #0 {
  %2 = alloca %struct.modlinkage*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.modlmisc**, align 8
  %5 = alloca %struct.modlmisc*, align 8
  store %struct.modlinkage* %0, %struct.modlinkage** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.modlinkage*, %struct.modlinkage** %2, align 8
  %7 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = bitcast i32* %9 to %struct.modlmisc**
  store %struct.modlmisc** %10, %struct.modlmisc*** %4, align 8
  br label %11

11:                                               ; preds = %52, %1
  %12 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %13 = load %struct.modlmisc*, %struct.modlmisc** %12, align 8
  %14 = icmp ne %struct.modlmisc* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %17 = load %struct.modlmisc*, %struct.modlmisc** %16, align 8
  %18 = load %struct.modlinkage*, %struct.modlinkage** %2, align 8
  %19 = call i32 @MODL_REMOVE(%struct.modlmisc* %17, %struct.modlinkage* %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %23 = load %struct.modlmisc*, %struct.modlmisc** %22, align 8
  store %struct.modlmisc* %23, %struct.modlmisc** %5, align 8
  %24 = load %struct.modlinkage*, %struct.modlinkage** %2, align 8
  %25 = getelementptr inbounds %struct.modlinkage, %struct.modlinkage* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = bitcast i32* %27 to %struct.modlmisc**
  store %struct.modlmisc** %28, %struct.modlmisc*** %4, align 8
  br label %29

29:                                               ; preds = %48, %21
  %30 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %31 = load %struct.modlmisc*, %struct.modlmisc** %30, align 8
  %32 = load %struct.modlmisc*, %struct.modlmisc** %5, align 8
  %33 = icmp ne %struct.modlmisc* %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %36 = load %struct.modlmisc*, %struct.modlmisc** %35, align 8
  %37 = load %struct.modlinkage*, %struct.modlinkage** %2, align 8
  %38 = call i64 @MODL_INSTALL(%struct.modlmisc* %36, %struct.modlinkage* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @CE_WARN, align 4
  %42 = load i32, i32* @reins_err, align 4
  %43 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %44 = load %struct.modlmisc*, %struct.modlmisc** %43, align 8
  %45 = getelementptr inbounds %struct.modlmisc, %struct.modlmisc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cmn_err(i32 %41, i32 %42, i32 %46)
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %50 = getelementptr inbounds %struct.modlmisc*, %struct.modlmisc** %49, i32 1
  store %struct.modlmisc** %50, %struct.modlmisc*** %4, align 8
  br label %29

51:                                               ; preds = %40, %29
  br label %55

52:                                               ; preds = %15
  %53 = load %struct.modlmisc**, %struct.modlmisc*** %4, align 8
  %54 = getelementptr inbounds %struct.modlmisc*, %struct.modlmisc** %53, i32 1
  store %struct.modlmisc** %54, %struct.modlmisc*** %4, align 8
  br label %11

55:                                               ; preds = %51, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @MODL_REMOVE(%struct.modlmisc*, %struct.modlinkage*) #1

declare dso_local i64 @MODL_INSTALL(%struct.modlmisc*, %struct.modlinkage*) #1

declare dso_local i32 @cmn_err(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
