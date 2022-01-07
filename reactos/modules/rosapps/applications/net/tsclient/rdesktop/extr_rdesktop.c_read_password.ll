; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_read_password.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_read_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@False = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@ECHO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @read_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_password(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.termios, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @False, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @STDIN_FILENO, align 4
  %11 = call i64 @tcgetattr(i32 %10, %struct.termios* %5)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ECHO, align 4
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @STDIN_FILENO, align 4
  %22 = load i32, i32* @TCSANOW, align 4
  %23 = call i32 @tcsetattr(i32 %21, i32 %22, %struct.termios* %5)
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @stdin, align 4
  %28 = call i32* @fgets(i8* %25, i32 %26, i32 %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @True, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 10)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* @ECHO, align 4
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = load i32, i32* @TCSANOW, align 4
  %49 = call i32 @tcsetattr(i32 %47, i32 %48, %struct.termios* %5)
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
