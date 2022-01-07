; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_block.c_block_File.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_block.c_block_File.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.stat = type { i64, i32 }

@EISDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @block_File(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @fstat(i32 %11, %struct.stat* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %77

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EISDIR, align 4
  store i32 %21, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %77

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @S_ISREG(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ESPIPE, align 4
  store i32 %28, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %77

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SIZE_MAX, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %77

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call %struct.TYPE_7__* @block_Alloc(i64 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %77

45:                                               ; preds = %36
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = call i32 @block_cleanup_push(%struct.TYPE_7__* %46)
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %69, %45
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @pread(i32 %53, i64 %58, i64 %61, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = call i32 @block_Release(%struct.TYPE_7__* %67)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %74

69:                                               ; preds = %52
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %48

74:                                               ; preds = %66, %48
  %75 = call i32 (...) @vlc_cleanup_pop()
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %3, align 8
  br label %77

77:                                               ; preds = %74, %44, %34, %27, %20, %14
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %78
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i64) #1

declare dso_local i32 @block_cleanup_push(%struct.TYPE_7__*) #1

declare dso_local i32 @pread(i32, i64, i64, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
