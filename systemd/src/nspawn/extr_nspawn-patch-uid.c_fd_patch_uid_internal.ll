; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_fd_patch_uid_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_fd_patch_uid_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UID_BUSY_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@UID_BUSY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fd_patch_uid_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_patch_uid_internal(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 65535
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %95

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @UID_BUSY_BASE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %95

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 65536
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %95

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @fstat(i32 %36, %struct.stat* %10)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %95

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 16
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EBADE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %95

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = xor i32 %55, %56
  %58 = ashr i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %103

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UID_BUSY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @UID_BUSY_BASE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @UID_BUSY_BASE, align 4
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @UID_BUSY_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = or i32 %70, %75
  %77 = load i32, i32* @UID_BUSY_BASE, align 4
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @UID_BUSY_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = or i32 %77, %82
  %84 = call i64 @fchown(i32 %69, i32 %76, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load i32, i32* @errno, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %95

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %61
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @recurse_fd(i32 %91, i32 %92, %struct.stat* %10, i32 %93, i32 1)
  store i32 %94, i32* %5, align 4
  br label %103

95:                                               ; preds = %86, %50, %39, %32, %26, %19
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @safe_close(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %90, %60
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i32 @recurse_fd(i32, i32, %struct.stat*, i32, i32) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
