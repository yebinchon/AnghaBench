; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_close.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i64 }

@EXT2_ET_MAGIC_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_NT_IO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @nt_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* @EXT2_ET_MAGIC_IO_CHANNEL, align 4
  %11 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @EXT2_ET_MAGIC_NT_IO_CHANNEL, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__* %16, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %52

25:                                               ; preds = %8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = call i32 @free(%struct.TYPE_6__* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @CloseHandle(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_6__* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @free(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %44, %25
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %24, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
