; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_libzfs_run_process_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_libzfs_run_process_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@STDOUT_VERBOSE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_VERBOSE = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@NO_DEFAULT_PATH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32, i8***, i32*)* @libzfs_run_process_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libzfs_run_process_impl(i8* %0, i8** %1, i8** %2, i32 %3, i8*** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8***, i8**** %12, align 8
  %20 = icmp ne i8*** %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %23 = call i32 @pipe(i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %150

28:                                               ; preds = %21, %6
  %29 = call i64 (...) @vfork()
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %28
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @_exit(i32 -1) #3
  unreachable

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @STDOUT_VERBOSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load i8***, i8**** %12, align 8
  %46 = icmp eq i8*** %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @STDOUT_FILENO, align 4
  %50 = call i32 @dup2(i32 %48, i32 %49)
  br label %66

51:                                               ; preds = %44, %39
  %52 = load i8***, i8**** %12, align 8
  %53 = icmp ne i8*** %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @STDOUT_FILENO, align 4
  %58 = call i32 @dup2(i32 %56, i32 %57)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %54, %51
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @STDERR_VERBOSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @STDERR_FILENO, align 4
  %74 = call i32 @dup2(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @NO_DEFAULT_PATH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i8**, i8*** %10, align 8
  %84 = icmp eq i8** %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %8, align 8
  %87 = load i8**, i8*** %9, align 8
  %88 = call i32 @execv(i8* %86, i8** %87)
  br label %94

89:                                               ; preds = %82
  %90 = load i8*, i8** %8, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = load i8**, i8*** %10, align 8
  %93 = call i32 @execve(i8* %90, i8** %91, i8** %92)
  br label %94

94:                                               ; preds = %89, %85
  br label %108

95:                                               ; preds = %75
  %96 = load i8**, i8*** %10, align 8
  %97 = icmp eq i8** %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %8, align 8
  %100 = load i8**, i8*** %9, align 8
  %101 = call i32 @execvp(i8* %99, i8** %100)
  br label %107

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i8**, i8*** %10, align 8
  %106 = call i32 @execvpe(i8* %103, i8** %104, i8** %105)
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %94
  %109 = call i32 @_exit(i32 -1) #3
  unreachable

110:                                              ; preds = %28
  %111 = load i64, i64* %14, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %124, %113
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @waitpid(i64 %115, i32* %18, i32 0)
  store i32 %116, i32* %15, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i1 [ false, %114 ], [ %121, %118 ]
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %114

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @WIFEXITED(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128, %125
  store i32 -1, i32* %7, align 4
  br label %150

133:                                              ; preds = %128
  %134 = load i8***, i8**** %12, align 8
  %135 = icmp ne i8*** %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @close(i32 %138)
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8***, i8**** %12, align 8
  %143 = call i32 @libzfs_read_stdout_from_fd(i32 %141, i8*** %142)
  %144 = load i32*, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %136, %133
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @WEXITSTATUS(i32 %146)
  store i32 %147, i32* %7, align 4
  br label %150

148:                                              ; preds = %110
  br label %149

149:                                              ; preds = %148
  store i32 -1, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %145, %132, %25
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i64 @vfork(...) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @execve(i8*, i8**, i8**) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @execvpe(i8*, i8**, i8**) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @libzfs_read_stdout_from_fd(i32, i8***) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
