; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_stat-util.c_path_is_read_only_fs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_stat-util.c_path_is_read_only_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i32 }

@errno = common dso_local global i32 0, align 4
@ST_RDONLY = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_is_read_only_fs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statvfs, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @assert(i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @statvfs(i8* %7, %struct.statvfs* %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ST_RDONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @W_OK, align 4
  %23 = call i64 @access(i8* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @EROFS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %25, %20
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %19, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @statvfs(i8*, %struct.statvfs*) #1

declare dso_local i64 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
