; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2TruncateFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2TruncateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MCB_ZONE_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2TruncateFile(i32 %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %10 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = call i64 @INODE_HAS_EXTENT(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = call i32 @Ext2TruncateExtent(i32 %16, i32 %17, %struct.TYPE_10__* %18, %struct.TYPE_9__* %19)
  store i32 %20, i32* %9, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i32 @Ext2TruncateIndirect(i32 %22, i32 %23, %struct.TYPE_10__* %24, %struct.TYPE_9__* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = call i64 @Ext2ListExtents(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @DbgBreak()
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = call i32 @Ext2ClearAllExtents(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i64 @Ext2ListExtents(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @DbgBreak()
  br label %49

49:                                               ; preds = %47, %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = call i32 @Ext2ClearAllExtents(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MCB_ZONE_INITED, align 4
  %57 = call i32 @ClearLongFlag(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %27
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i64 @INODE_HAS_EXTENT(i32*) #1

declare dso_local i32 @Ext2TruncateExtent(i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @Ext2TruncateIndirect(i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i64 @Ext2ListExtents(i32*) #1

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i32 @Ext2ClearAllExtents(i32*) #1

declare dso_local i32 @ClearLongFlag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
