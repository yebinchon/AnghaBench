; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_003_pos.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_003_pos.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"TESTDIR\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TESTFILE0\00", align 1
@__const.main.penv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Verify O_EXCL tmpfile cannot be linked.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"getenv(penv[%d])\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"linkat returns successfully\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"stat returns successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [2 x i8*], align 16
  %11 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([2 x i8*]* @__const.main.penv to i8*), i64 16, i1 false)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @getenv(i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %26
  store i8* %24, i8** %27, align 8
  %28 = icmp eq i8* %24, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #4
  unreachable

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %40 = load i8*, i8** %39, align 16
  %41 = load i32, i32* @O_RDWR, align 4
  %42 = load i32, i32* @O_TMPFILE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @O_EXCL, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @open(i8* %40, i32 %45, i32 438)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @exit(i32 2) #4
  unreachable

52:                                               ; preds = %38
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %58, i8* %60)
  %62 = load i32, i32* @AT_FDCWD, align 4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %64 = load i32, i32* @AT_FDCWD, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %66 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %67 = call i64 @linkat(i32 %62, i8* %63, i32 %64, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  %74 = call i32 @exit(i32 3) #4
  unreachable

75:                                               ; preds = %52
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %77 = call i64 @stat(i8* %76, %struct.stat* %11)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @close(i32 %82)
  %84 = call i32 @exit(i32 4) #4
  unreachable

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @close(i32 %86)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @getenv(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @linkat(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
