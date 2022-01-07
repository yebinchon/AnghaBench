; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_utime.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@_FS_RPATH = common dso_local global i64 0, align 8
@NSFLAG = common dso_local global i64 0, align 8
@NS_DOT = common dso_local global i32 0, align 4
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@DIR_WrtTime = common dso_local global i32 0, align 4
@DIR_WrtDate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_utime(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %11 = call i64 @find_volume(%struct.TYPE_11__** %10, i32** %4, i32 1)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @FR_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %2
  %16 = call i32 @INIT_BUF(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %7)
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @follow_path(%struct.TYPE_10__* %7, i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = call i32 (...) @FREE_BUF()
  %20 = load i64, i64* @_FS_RPATH, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @NSFLAG, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NS_DOT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %26, %22, %15
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @FR_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %47, i64* %6, align 8
  br label %71

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @DIR_WrtTime, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ST_WORD(i32* %52, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @DIR_WrtDate, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ST_WORD(i32* %60, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i64 @sync_fs(%struct.TYPE_11__* %69)
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %48, %46
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @LEAVE_FF(%struct.TYPE_11__* %75, i64 %76)
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

declare dso_local i64 @find_volume(%struct.TYPE_11__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i64 @follow_path(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @ST_WORD(i32*, i32) #1

declare dso_local i64 @sync_fs(%struct.TYPE_11__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
