; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_ShellCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_ShellCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@gShell = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShellCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @SIGINT, align 4
  %14 = load i64, i64* @SIG_IGN, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @NcSignal(i32 %13, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @gUnusedArg, align 4
  %18 = call i32 @ARGSUSED(i32 %17)
  %19 = call i64 (...) @fork()
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %78

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load i8*, i8** @gShell, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** @gShell, align 8
  store i8* %33, i8** %9, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @gShell, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @execl(i8* %41, i8* %42, i32* null)
  %44 = load i8*, i8** @gShell, align 8
  %45 = call i32 @perror(i8* %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %37
  %48 = load i8**, i8*** %6, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = call i32 @execvp(i8* %50, i8** %52)
  %54 = load i8*, i8** @gShell, align 8
  %55 = call i32 @perror(i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %75, %57
  %59 = call i64 @wait(i32* %11)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EINTR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %76

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @WIFEXITED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @WIFSIGNALED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %66
  br label %76

75:                                               ; preds = %70
  br label %58

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %22
  %79 = load i32, i32* @SIGINT, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @NcSignal(i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @NcSignal(i32, i32) #1

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @execl(i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i64 @wait(i32*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
