; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/libzfs/extr_many_fds.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/libzfs/extr_many_fds.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"many_fds: setrlimit() failed with errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"open failed with errno=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"many_fds: libzfs_init() failed with errno=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  store i32 65535, i32* %10, align 4
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  store i32 65535, i32* %11, align 4
  %12 = load i32, i32* @RLIMIT_NOFILE, align 4
  %13 = call i64 @setrlimit(i32 %12, %struct.rlimit* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 255
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 1, i32* %3, align 4
  br label %45

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  %36 = call i32* (...) @libzfs_init()
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @libzfs_fini(i32* %40)
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39, %28
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @libzfs_init(...) #1

declare dso_local i32 @libzfs_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
