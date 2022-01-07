; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_check_exportfs.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_check_exportfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfs_check_exportfs.nfs_exportfs_tempfile = internal global [21 x i8] c"/tmp/exportfs.XXXXXX\00", align 16
@nfs_exportfs_temp_fd = common dso_local global i32 0, align 4
@SA_SYSTEM_ERR = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SA_CONFIG_ERR = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"/usr/sbin/exportfs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"exportfs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfs_check_exportfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_check_exportfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %9 = call i32 @close(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @mkstemp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @nfs_check_exportfs.nfs_exportfs_tempfile, i64 0, i64 0))
  store i32 %11, i32* @nfs_exportfs_temp_fd, align 4
  %12 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %15, i32* %1, align 4
  br label %80

16:                                               ; preds = %10
  %17 = call i32 @unlink(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @nfs_check_exportfs.nfs_exportfs_tempfile, i64 0, i64 0))
  %18 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %19 = load i32, i32* @F_SETFD, align 4
  %20 = load i32, i32* @FD_CLOEXEC, align 4
  %21 = call i32 @fcntl(i32 %18, i32 %19, i32 %20)
  %22 = call i64 (...) @fork()
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %27 = call i32 @close(i32 %26)
  store i32 -1, i32* @nfs_exportfs_temp_fd, align 4
  %28 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %28, i32* %1, align 4
  br label %80

29:                                               ; preds = %16
  %30 = load i64, i64* %2, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @waitpid(i64 %34, i32* %4, i32 0)
  store i32 %35, i32* %3, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %33

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %49 = call i32 @close(i32 %48)
  store i32 -1, i32* @nfs_exportfs_temp_fd, align 4
  %50 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %50, i32* %1, align 4
  br label %80

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @WIFEXITED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @WEXITSTATUS(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %61 = call i32 @close(i32 %60)
  store i32 -1, i32* @nfs_exportfs_temp_fd, align 4
  %62 = load i32, i32* @SA_CONFIG_ERR, align 4
  store i32 %62, i32* %1, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load i32, i32* @SA_OK, align 4
  store i32 %64, i32* %1, align 4
  br label %80

65:                                               ; preds = %29
  %66 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %67 = load i32, i32* @STDOUT_FILENO, align 4
  %68 = call i64 @dup2(i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %65
  %73 = call i32 @execlp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %72
  %79 = call i32 @exit(i32 0) #3
  unreachable

80:                                               ; preds = %63, %59, %47, %25, %14
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @dup2(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @execlp(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
