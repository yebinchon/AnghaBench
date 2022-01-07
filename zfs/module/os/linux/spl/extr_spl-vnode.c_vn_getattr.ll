; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_getattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.file* }
%struct.TYPE_2__ = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@STATX_BASIC_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_getattr(%struct.file* %0, %struct.file* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.kstat, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = call i32 @ASSERT(%struct.file* %15)
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 16
  %19 = load %struct.file*, %struct.file** %18, align 8
  %20 = call i32 @ASSERT(%struct.file* %19)
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = call i32 @ASSERT(%struct.file* %21)
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 16
  %25 = load %struct.file*, %struct.file** %24, align 8
  store %struct.file* %25, %struct.file** %12, align 8
  %26 = load %struct.file*, %struct.file** %12, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  %32 = load %struct.file*, %struct.file** %12, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.kstat*
  %37 = call i32 (%struct.TYPE_2__*, %struct.kstat*, ...) @vfs_getattr(%struct.TYPE_2__* %31, %struct.kstat* %36, %struct.kstat* %13)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %101

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vn_mode_to_vtype(i32 %45)
  %47 = load %struct.file*, %struct.file** %8, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.file*, %struct.file** %8, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @KUID_TO_SUID(i32 %54)
  %56 = load %struct.file*, %struct.file** %8, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @KGID_TO_SGID(i32 %59)
  %61 = load %struct.file*, %struct.file** %8, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load %struct.file*, %struct.file** %8, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 9
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.file*, %struct.file** %8, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.file*, %struct.file** %8, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.file*, %struct.file** %8, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.file*, %struct.file** %8, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.file*, %struct.file** %8, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.file*, %struct.file** %8, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.file*, %struct.file** %8, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.file*, %struct.file** %8, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.file*, %struct.file** %8, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %43, %40
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @ASSERT(%struct.file*) #1

declare dso_local i32 @vfs_getattr(%struct.TYPE_2__*, %struct.kstat*, ...) #1

declare dso_local i32 @vn_mode_to_vtype(i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local i32 @KGID_TO_SGID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
