; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_commit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SAFETY_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsm_commit(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LSM_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @assert_db_state(%struct.TYPE_7__* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @LSM_MAX(i32 0, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LSM_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @lsmLogCommit(%struct.TYPE_7__* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LSM_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LSM_SAFETY_FULL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lsmFsSyncLog(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %38, %34
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LSM_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @lsmFinishWriteTrans(%struct.TYPE_7__* %50, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @LSM_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %49
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %18
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 @dbReleaseClientSnapshot(%struct.TYPE_7__* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @assert_db_state(%struct.TYPE_7__*) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @lsmLogCommit(%struct.TYPE_7__*) #1

declare dso_local i32 @lsmFsSyncLog(i32) #1

declare dso_local i32 @lsmFinishWriteTrans(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dbReleaseClientSnapshot(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
