; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_subprocess.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_subprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error executing child\00", align 1
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subprocess(i32* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %12, align 4
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %16 = call i64 @pipe(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @False, align 4
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = call i64 (...) @fork()
  store i64 %22, i64* %10, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @False, align 4
  store i32 %26, i32* %5, align 4
  br label %71

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dup2(i32 %35, i32 1)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dup2(i32 %38, i32 2)
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = call i32 @execvp(i8* %42, i8** %43)
  %45 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @_exit(i32 128) #3
  unreachable

47:                                               ; preds = %27
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %54, %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %58 = call i32 @read(i32 %56, i8* %57, i32 255)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @str_handle_lines(i32* %62, i8* %63, i8** %14, i32 %64, i8* %65)
  br label %51

67:                                               ; preds = %51
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @xfree(i8* %68)
  %70 = load i32, i32* @True, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %24, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @str_handle_lines(i32*, i8*, i8**, i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
