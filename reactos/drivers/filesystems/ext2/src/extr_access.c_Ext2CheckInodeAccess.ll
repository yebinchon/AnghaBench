; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_access.c_Ext2CheckInodeAccess.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_access.c_Ext2CheckInodeAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i64 }
%struct.inode = type { i64, i64, i32 }

@VCB_USER_EIDS = common dso_local global i32 0, align 4
@Ext2FileCanRead = common dso_local global i32 0, align 4
@Ext2FileCanWrite = common dso_local global i32 0, align 4
@Ext2FileCanExecute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2CheckInodeAccess(%struct.TYPE_3__* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VCB_USER_EIDS, align 4
  %20 = call i32 @IsFlagOn(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %22, %3
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %29
  %39 = load i32, i32* @Ext2FileCanRead, align 4
  %40 = load i32, i32* @Ext2FileCanWrite, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @Ext2FileCanExecute, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %99

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @Ext2IsGroupReadOnly(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @Ext2FileCanRead, align 4
  %58 = load i32, i32* @Ext2FileCanExecute, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %7, align 4
  br label %73

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @Ext2IsGroupWritable(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @Ext2FileCanRead, align 4
  %68 = load i32, i32* @Ext2FileCanWrite, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @Ext2FileCanExecute, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %56
  br label %98

74:                                               ; preds = %44
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @Ext2IsOtherReadOnly(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @Ext2FileCanRead, align 4
  %82 = load i32, i32* @Ext2FileCanExecute, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %97

84:                                               ; preds = %74
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @Ext2IsOtherWritable(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @Ext2FileCanRead, align 4
  %92 = load i32, i32* @Ext2FileCanWrite, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @Ext2FileCanExecute, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %84
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97, %73
  br label %99

99:                                               ; preds = %98, %38
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @IsFlagOn(i32 %100, i32 %101)
  ret i32 %102
}

declare dso_local i32 @IsFlagOn(i32, i32) #1

declare dso_local i64 @Ext2IsGroupReadOnly(i32) #1

declare dso_local i64 @Ext2IsGroupWritable(i32) #1

declare dso_local i64 @Ext2IsOtherReadOnly(i32) #1

declare dso_local i64 @Ext2IsOtherWritable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
