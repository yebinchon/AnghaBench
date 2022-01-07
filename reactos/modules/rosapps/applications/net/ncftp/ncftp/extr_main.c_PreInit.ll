; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_PreInit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_PreInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gIsTTY = common dso_local global i32 0, align 4
@gIsTTYr = common dso_local global i32 0, align 4
@gLib = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ncftp: init library error %d (%s).\0A\00", align 1
@gStartupURLCdList = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@wsaData = common dso_local global i32 0, align 4
@wsaInit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PreInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PreInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @isatty(i32 2)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 (...) @getppid()
  %6 = icmp sgt i32 %5, 1
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  store i32 %10, i32* @gIsTTY, align 4
  %11 = call i64 @isatty(i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = call i32 (...) @getppid()
  %15 = icmp sgt i32 %14, 1
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ false, %7 ], [ %15, %13 ]
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* @gIsTTYr, align 4
  %20 = call i32 (...) @InitUserInfo()
  %21 = call i32 @FTPInitLibrary(i32* @gLib)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i8* @FTPStrError(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %16
  %32 = call i64 (...) @getpid()
  %33 = trunc i64 %32 to i32
  %34 = call i32 @srand(i32 %33)
  %35 = call i32 @InitLineList(i32* @gStartupURLCdList)
  %36 = call i32 (...) @CheckForNewV3User()
  %37 = call i32 (...) @InitLog()
  %38 = call i32 (...) @InitPrefs()
  %39 = call i32 @LoadFirewallPrefs(i32 0)
  %40 = call i32 (...) @LoadPrefs()
  %41 = call i32 (...) @InitConnectionInfo()
  %42 = call i32 (...) @InitCommandList()
  %43 = call i32 (...) @InitLs()
  %44 = call i32 (...) @TruncBatchLog()
  %45 = call i32 (...) @GetoptReset()
  %46 = call i32 (...) @GetScreenColumns()
  ret void
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @InitUserInfo(...) #1

declare dso_local i32 @FTPInitLibrary(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @FTPStrError(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @InitLineList(i32*) #1

declare dso_local i32 @CheckForNewV3User(...) #1

declare dso_local i32 @InitLog(...) #1

declare dso_local i32 @InitPrefs(...) #1

declare dso_local i32 @LoadFirewallPrefs(i32) #1

declare dso_local i32 @LoadPrefs(...) #1

declare dso_local i32 @InitConnectionInfo(...) #1

declare dso_local i32 @InitCommandList(...) #1

declare dso_local i32 @InitLs(...) #1

declare dso_local i32 @TruncBatchLog(...) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @GetScreenColumns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
