; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_exec_child.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_exec_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@__const.exec_child.rl = private unnamed_addr constant %struct.rlimit { i32 1024, i32 1024 }, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@ztest_fd_rand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ztest_fd_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ZTEST_FD_DATA\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ztest_dump_core = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"exec failed: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"child exited with code %d\0A\00", align 1
@SIGKILL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"child died with signal %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"something strange happened to child\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*)* @exec_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_child(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8*], align 16
  %14 = alloca [12 x i8], align 1
  %15 = alloca %struct.rlimit, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %12, align 8
  %16 = call i32 (...) @fork()
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = load i32, i32* @UMEM_NOFAIL, align 4
  %22 = call i8* @umem_alloc(i32 %20, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 (...) @getexecname()
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = call i32 @strlcpy(i8* %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %19, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i32, i8*, ...) @fatal(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* null, i8** %39, align 8
  %40 = bitcast %struct.rlimit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.rlimit* @__const.exec_child.rl to i8*), i64 8, i1 false)
  %41 = load i32, i32* @RLIMIT_NOFILE, align 4
  %42 = call i32 @setrlimit(i32 %41, %struct.rlimit* %15)
  %43 = load i32, i32* @ztest_fd_rand, align 4
  %44 = call i32 @close(i32 %43)
  %45 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %46 = load i32, i32* @ztest_fd_data, align 4
  %47 = call i32 @snprintf(i8* %45, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = icmp sge i32 11, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @VERIFY(i32 %49)
  %51 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %52 = call i64 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 1)
  %53 = icmp eq i64 0, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @VERIFY(i32 %54)
  %56 = call i32 @enable_extended_FILE_stdio(i32 -1, i32 -1)
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %36
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 1)
  %62 = icmp eq i64 0, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @VERIFY(i32 %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %68 = call i32 @execv(i8* %66, i8** %67)
  %69 = load i32, i32* @B_FALSE, align 4
  store i32 %69, i32* @ztest_dump_core, align 4
  %70 = load i32, i32* @B_TRUE, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i32, i8*, ...) @fatal(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %65, %33
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* @MAXPATHLEN, align 4
  %79 = call i32 @umem_free(i8* %77, i32 %78)
  store i8* null, i8** %6, align 8
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %86, %80
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @waitpid(i32 %82, i32* %11, i32 0)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %81

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @WIFEXITED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @WEXITSTATUS(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @WEXITSTATUS(i32 %103)
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = call i32 @exit(i32 2) #4
  unreachable

107:                                              ; preds = %97
  %108 = load i32, i32* @B_FALSE, align 4
  store i32 %108, i32* %5, align 4
  br label %134

109:                                              ; preds = %93
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @WIFSIGNALED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @WTERMSIG(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @SIGKILL, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116, %113
  %123 = load i32, i32* @stderr, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @WTERMSIG(i32 %124)
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = call i32 @exit(i32 3) #4
  unreachable

128:                                              ; preds = %116
  %129 = load i32, i32* @B_TRUE, align 4
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %109
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 @exit(i32 4) #4
  unreachable

134:                                              ; preds = %128, %107
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @fork(...) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @getexecname(...) #1

declare dso_local i32 @fatal(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @enable_extended_FILE_stdio(i32, i32) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @umem_free(i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
