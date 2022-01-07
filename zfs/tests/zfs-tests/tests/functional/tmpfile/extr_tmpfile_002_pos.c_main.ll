; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_002_pos.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_002_pos.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"TESTDIR\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TESTFILE0\00", align 1
@__const.main.penv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Verify O_TMPFILE file can be linked.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"getenv(penv[%d])\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"linkat\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"sudo zpool freeze $TESTPOOL\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"system \22zpool freeze\22\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"zpool freeze exits with %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"sudo zpool export $TESTPOOL\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"system \22zpool export\22\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"zpool export exits with %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"sudo zpool import $TESTPOOL\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"system \22zpool import\22\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"zpool import exits with %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"stat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([2 x i8*]* @__const.main.penv to i8*), i64 16, i1 false)
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @getenv(i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 %27
  store i8* %25, i8** %28, align 8
  %29 = icmp eq i8* %25, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = call i32 @exit(i32 1) #4
  unreachable

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %16
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %41 = load i8*, i8** %40, align 16
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = load i32, i32* @O_TMPFILE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @open(i8* %41, i32 %44, i32 438)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @exit(i32 2) #4
  unreachable

51:                                               ; preds = %39
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %57, i8* %59)
  %61 = load i32, i32* @AT_FDCWD, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %63 = load i32, i32* @AT_FDCWD, align 4
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %65 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %66 = call i64 @linkat(i32 %61, i8* %62, i32 %63, i8* %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @close(i32 %70)
  %72 = call i32 @exit(i32 3) #4
  unreachable

73:                                               ; preds = %51
  %74 = call i32 @system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %86

81:                                               ; preds = %76
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @WEXITSTATUS(i32 %83)
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %79
  %87 = call i32 @exit(i32 4) #4
  unreachable

88:                                               ; preds = %73
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @close(i32 %89)
  %91 = call i32 @system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 %91, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @WEXITSTATUS(i32 %100)
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %96
  %104 = call i32 @exit(i32 4) #4
  unreachable

105:                                              ; preds = %88
  %106 = call i32 @system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 %106, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @stderr, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @WEXITSTATUS(i32 %115)
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %111
  %119 = call i32 @exit(i32 4) #4
  unreachable

120:                                              ; preds = %105
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %122 = call i64 @stat(i8* %121, %struct.stat* %12)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %127 = call i32 @unlink(i8* %126)
  %128 = call i32 @exit(i32 5) #4
  unreachable

129:                                              ; preds = %120
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %131 = call i32 @unlink(i8* %130)
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

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
