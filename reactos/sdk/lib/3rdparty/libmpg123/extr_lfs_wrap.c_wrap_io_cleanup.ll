; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_lfs_wrap.c_wrap_io_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_lfs_wrap.c_wrap_io_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrap_data = type { i64, i32, i32*, i32 (i32*)* }

@IO_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wrap_io_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_io_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wrap_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.wrap_data*
  store %struct.wrap_data* %5, %struct.wrap_data** %3, align 8
  %6 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %7 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IO_HANDLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %13 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %12, i32 0, i32 3
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = icmp ne i32 (i32*)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %18 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %23 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %22, i32 0, i32 3
  %24 = load i32 (i32*)*, i32 (i32*)** %23, align 8
  %25 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %26 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 %24(i32* %27)
  br label %29

29:                                               ; preds = %21, %16, %11
  %30 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %31 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %34 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %39 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.wrap_data*, %struct.wrap_data** %3, align 8
  %43 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
