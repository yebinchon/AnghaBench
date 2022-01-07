; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_daemonize.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"fork() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NC_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"setsid() failed: %s\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"signal(SIGHUP, SIG_IGN) failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"chdir(\22/\22) failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"open(\22/dev/null\22) failed: %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"dup2(%d, STDIN) failed: %s\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"dup2(%d, STDOUT) failed: %s\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"dup2(%d, STDERR) failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"close(%d) failed: %s\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @nc_daemonize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nc_daemonize(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 -1, label %10
    i32 0, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @strerror(i32 %11)
  %13 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* @NC_ERROR, align 8
  store i64 %14, i64* %2, align 8
  br label %133

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @_exit(i32 0) #3
  unreachable

18:                                               ; preds = %15
  %19 = call i32 (...) @setsid()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* @NC_ERROR, align 8
  store i64 %26, i64* %2, align 8
  br label %133

27:                                               ; preds = %18
  %28 = load i32, i32* @SIGHUP, align 4
  %29 = load i32, i32* @SIG_IGN, align 4
  %30 = call i64 @signal(i32 %28, i32 %29)
  %31 = load i64, i64* @SIG_ERR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @NC_ERROR, align 8
  store i64 %37, i64* %2, align 8
  br label %133

38:                                               ; preds = %27
  %39 = call i32 (...) @fork()
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %47 [
    i32 -1, label %41
    i32 0, label %46
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @NC_ERROR, align 8
  store i64 %45, i64* %2, align 8
  br label %133

46:                                               ; preds = %38
  br label %49

47:                                               ; preds = %38
  %48 = call i32 @_exit(i32 0) #3
  unreachable

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* @NC_ERROR, align 8
  store i64 %60, i64* %2, align 8
  br label %133

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %49
  %63 = call i32 @umask(i32 0)
  %64 = load i32, i32* @O_RDWR, align 4
  %65 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* @NC_ERROR, align 8
  store i64 %72, i64* %2, align 8
  br label %133

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @STDIN_FILENO, align 4
  %76 = call i64 @dup2(i32 %74, i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @strerror(i32 %81)
  %83 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %80, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @close(i32 %84)
  %86 = load i64, i64* @NC_ERROR, align 8
  store i64 %86, i64* %2, align 8
  br label %133

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @STDOUT_FILENO, align 4
  %90 = call i64 @dup2(i32 %88, i32 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @strerror(i32 %95)
  %97 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @close(i32 %98)
  %100 = load i64, i64* @NC_ERROR, align 8
  store i64 %100, i64* %2, align 8
  br label %133

101:                                              ; preds = %87
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @STDERR_FILENO, align 4
  %104 = call i64 @dup2(i32 %102, i32 %103)
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* %4, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @strerror(i32 %109)
  %111 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @close(i32 %112)
  %114 = load i64, i64* @NC_ERROR, align 8
  store i64 %114, i64* %2, align 8
  br label %133

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @STDERR_FILENO, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @close(i32 %120)
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 @strerror(i32 %126)
  %128 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load i64, i64* @NC_ERROR, align 8
  store i64 %129, i64* %2, align 8
  br label %133

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %115
  %132 = load i64, i64* @NC_OK, align 8
  store i64 %132, i64* %2, align 8
  br label %133

133:                                              ; preds = %131, %124, %107, %93, %79, %68, %56, %41, %33, %22, %10
  %134 = load i64, i64* %2, align 8
  ret i64 %134
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @log_error(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
