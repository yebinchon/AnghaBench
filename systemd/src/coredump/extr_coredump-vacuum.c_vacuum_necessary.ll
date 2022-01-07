; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump-vacuum.c_vacuum_necessary.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump-vacuum.c_vacuum_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i32, i32, i32 }

@DEFAULT_MAX_USE_UPPER = common dso_local global i32 0, align 4
@DEFAULT_MAX_USE_LOWER = common dso_local global i32 0, align 4
@DEFAULT_KEEP_FREE_UPPER = common dso_local global i32 0, align 4
@DEFAULT_KEEP_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vacuum_necessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacuum_necessary(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.statvfs, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @fstatvfs(i32 %17, %struct.statvfs* %12)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %12, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %12, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %12, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %27, %29
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %20, %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %38, 10
  %40 = call i32 @PAGE_ALIGN(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DEFAULT_MAX_USE_UPPER, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @DEFAULT_MAX_USE_UPPER, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DEFAULT_MAX_USE_LOWER, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @DEFAULT_MAX_USE_LOWER, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @DEFAULT_MAX_USE_LOWER, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %52
  br label %59

56:                                               ; preds = %31
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @PAGE_ALIGN(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %99

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %74, 3
  %76 = sdiv i32 %75, 20
  %77 = call i32 @PAGE_ALIGN(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @DEFAULT_KEEP_FREE_UPPER, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @DEFAULT_KEEP_FREE_UPPER, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %73
  br label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @DEFAULT_KEEP_FREE, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %83
  br label %90

87:                                               ; preds = %67
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @PAGE_ALIGN(i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %5, align 4
  br label %99

98:                                               ; preds = %93, %90
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %97, %66
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstatvfs(i32, %struct.statvfs*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
