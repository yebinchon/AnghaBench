; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_write_from_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_write_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32* }

@cd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @write_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_from_file(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 4), align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = call i32 @fseek(i32* %10, i32 0, i32 %11)
  br label %13

13:                                               ; preds = %46, %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load i64, i64* @BUFFER_SIZE, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 0), align 8
  %19 = sub nsw i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 0), align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fread(i64 %29, i32 %30, i32 1, i32* %31)
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 0), align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 0), align 8
  %42 = load i64, i64* @BUFFER_SIZE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @flush_buffer()
  br label %46

46:                                               ; preds = %44, %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SECTOR_SIZE, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 2), align 8
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 2), align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SECTOR_SIZE, align 4
  %54 = srem i32 %52, %53
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 3), align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 3), align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %13

60:                                               ; preds = %13
  br label %72

61:                                               ; preds = %2
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SECTOR_SIZE, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 2), align 8
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 2), align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SECTOR_SIZE, align 4
  %69 = srem i32 %67, %68
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 3), align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cd, i32 0, i32 3), align 4
  br label %72

72:                                               ; preds = %61, %60
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i64, i32, i32, i32*) #1

declare dso_local i32 @flush_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
