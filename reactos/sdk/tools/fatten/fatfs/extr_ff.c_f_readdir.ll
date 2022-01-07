; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_readdir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_readdir(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i64 @validate(%struct.TYPE_9__* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @FR_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i64 @dir_sdi(%struct.TYPE_9__* %17, i32 0)
  store i64 %18, i64* %6, align 8
  br label %56

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = bitcast %struct.TYPE_9__* %20 to { i32, i64 }*
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @INIT_BUF(i32 %23, i64 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i64 @dir_read(%struct.TYPE_9__* %27, i32 0)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @FR_NO_FILE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* @FR_OK, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @FR_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @get_fileinfo(%struct.TYPE_9__* %41, i32* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i64 @dir_next(%struct.TYPE_9__* %44, i32 0)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @FR_NO_FILE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @FR_OK, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %49, %40
  br label %54

54:                                               ; preds = %53, %36
  %55 = call i32 (...) @FREE_BUF()
  br label %56

56:                                               ; preds = %54, %16
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @LEAVE_FF(i32 %60, i64 %61)
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @validate(%struct.TYPE_9__*) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @INIT_BUF(i32, i64) #1

declare dso_local i64 @dir_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_fileinfo(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @dir_next(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @LEAVE_FF(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
