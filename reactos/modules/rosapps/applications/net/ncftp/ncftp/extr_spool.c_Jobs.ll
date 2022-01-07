; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_Jobs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_Jobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ncftpbatch\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not run %s.  Is it in your $PATH?\0A\00", align 1
@BINDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Jobs() #0 {
  %1 = alloca [8 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = call i64 (...) @fork()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %30

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  %16 = load i8*, i8** %15, align 16
  %17 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  %18 = call i32 @execvp(i8* %16, i8** %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  %21 = load i8*, i8** %20, align 16
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  %24 = load i8*, i8** %23, align 16
  %25 = call i32 @perror(i8* %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %8
  %28 = call i32 @wait(i32* null)
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %6
  ret void
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
