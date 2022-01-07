; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_opendir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__*, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_INVALID_OBJECT = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@AM_DIR = common dso_local global i32 0, align 4
@FR_NO_PATH = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@FR_TOO_MANY_OPEN_FILES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_opendir(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @FR_INVALID_OBJECT, align 8
  store i64 %12, i64* %3, align 8
  br label %88

13:                                               ; preds = %2
  %14 = call i64 @find_volume(%struct.TYPE_11__** %7, i32** %5, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @FR_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @INIT_BUF(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @follow_path(%struct.TYPE_12__* %24, i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = call i32 (...) @FREE_BUF()
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @FR_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %18
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @DIR_Attr, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AM_DIR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ld_clust(%struct.TYPE_11__* %47, i32* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %56

54:                                               ; preds = %36
  %55 = load i64, i64* @FR_NO_PATH, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %54, %46
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @FR_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i64 @dir_sdi(%struct.TYPE_12__* %67, i32 0)
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69, %18
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @FR_NO_FILE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @FR_NO_PATH, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %13
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @FR_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @LEAVE_FF(%struct.TYPE_11__* %85, i64 %86)
  br label %88

88:                                               ; preds = %84, %11
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i64 @find_volume(%struct.TYPE_11__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i64 @follow_path(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @ld_clust(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
