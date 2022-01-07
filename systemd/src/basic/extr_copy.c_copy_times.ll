; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_times.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.stat = type { %struct.timespec, %struct.timespec }

@errno = common dso_local global i32 0, align 4
@COPY_CRTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_times(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.timespec], align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @fstat(i32 %19, %struct.stat* %9)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %28 = bitcast %struct.timespec* %26 to i8*
  %29 = bitcast %struct.timespec* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 1
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %32 = bitcast %struct.timespec* %30 to i8*
  %33 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %8, i64 0, i64 0
  %36 = call i64 @futimens(i32 %34, %struct.timespec* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @errno, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @COPY_CRTIME, align 4
  %44 = call i64 @FLAGS_SET(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @fd_getcrtime(i32 %47, i32* %10)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @fd_setcrtime(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %41
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %38, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @futimens(i32, %struct.timespec*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i64 @fd_getcrtime(i32, i32*) #1

declare dso_local i32 @fd_setcrtime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
