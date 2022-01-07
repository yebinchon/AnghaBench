; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetClusterSizes.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetClusterSizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@hClusterSize = common dso_local global i32 0, align 4
@FS_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MSG_030 = common dso_local global i32 0, align 4
@ClusterSizeLabel = common dso_local global i8** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetClusterSizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetClusterSizes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @hClusterSize, align 4
  %10 = call i32 @ComboBox_ResetContent(i32 %9)
  %11 = call i32 @IGNORE_RETVAL(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FS_MAX, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %20
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %98

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 256, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %87, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 268435456
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %43, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load i32, i32* @MSG_030, align 4
  %63 = load i8**, i8*** @ClusterSizeLabel, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @lmprintf(i32 %62, i8* %67)
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %7, align 4
  br label %76

70:                                               ; preds = %52
  %71 = load i8**, i8*** @ClusterSizeLabel, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %70, %61
  %77 = load i32, i32* @hClusterSize, align 4
  %78 = load i32, i32* @hClusterSize, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @ComboBox_AddStringU(i32 %78, i8* %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ComboBox_SetItemData(i32 %77, i32 %80, i32 %81)
  %83 = call i32 @IGNORE_RETVAL(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %76, %42
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %39

92:                                               ; preds = %39
  %93 = load i32, i32* @hClusterSize, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ComboBox_SetCurSel(i32 %93, i32 %94)
  %96 = call i32 @IGNORE_RETVAL(i32 %95)
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %36, %18
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @ComboBox_ResetContent(i32) #1

declare dso_local i8* @lmprintf(i32, i8*) #1

declare dso_local i32 @ComboBox_SetItemData(i32, i32, i32) #1

declare dso_local i32 @ComboBox_AddStringU(i32, i8*) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
