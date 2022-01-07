; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/user_ns_exec/extr_user_ns_exec.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/user_ns_exec/extr_user_ns_exec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"\09Usage: %s <commands> ...\0A\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"uid_map\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"gid_map\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %107

24:                                               ; preds = %13
  %25 = load i32, i32* @AF_UNIX, align 4
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %28 = call i64 @socketpair(i32 %25, i32 %26, i32 0, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %107

32:                                               ; preds = %24
  %33 = call i64 (...) @fork()
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %107

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @child_main(i32 %45, i8** %46, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %107

50:                                               ; preds = %38
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  store i32 0, i32* %7, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @read(i32 %55, i8* %6, i32 1)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @SIGKILL, align 4
  %62 = call i32 @kill(i64 %60, i32 %61)
  store i32 1, i32* %7, align 4
  br label %89

63:                                               ; preds = %50
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @set_idmap(i64 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @set_idmap(i64 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %63
  store i32 1, i32* %7, align 4
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* @SIGKILL, align 4
  %74 = call i32 @kill(i64 %72, i32 %73)
  br label %89

75:                                               ; preds = %67
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @SIGKILL, align 4
  %84 = call i32 @kill(i64 %82, i32 %83)
  store i32 1, i32* %7, align 4
  br label %89

85:                                               ; preds = %75
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %85, %80, %71, %58
  br label %90

90:                                               ; preds = %95, %89
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @waitpid(i64 %91, i32* %8, i32 0)
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* @SIGKILL, align 4
  %98 = call i32 @kill(i64 %96, i32 %97)
  br label %90

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @WEXITSTATUS(i32 %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %41, %36, %30, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @child_main(i32, i8**, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @set_idmap(i64, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
