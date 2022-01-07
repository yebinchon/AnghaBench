; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_syscall.c_SqlitetestSyscall_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_syscall.c_SqlitetestSyscall_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyscallCmd = type { i8*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"test_syscall\00", align 1
@test_syscall = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SqlitetestSyscall_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [1 x %struct.SyscallCmd], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.SyscallCmd], [1 x %struct.SyscallCmd]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.SyscallCmd, %struct.SyscallCmd* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %6, align 16
  %7 = getelementptr inbounds %struct.SyscallCmd, %struct.SyscallCmd* %5, i32 0, i32 1
  %8 = load i32, i32* @test_syscall, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1 x %struct.SyscallCmd], [1 x %struct.SyscallCmd]* %3, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.SyscallCmd, %struct.SyscallCmd* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 16
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.SyscallCmd], [1 x %struct.SyscallCmd]* %3, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.SyscallCmd, %struct.SyscallCmd* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @Tcl_CreateObjCommand(i32* %16, i8* %21, i32* %26, i32 0, i32 0)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* @TCL_OK, align 4
  ret i32 %32
}

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
