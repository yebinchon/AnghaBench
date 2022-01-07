; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_RetrieveFileData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_RetrieveFileData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DATA_PACKET_SIZE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Data transfer complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @FTP_RetrieveFileData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTP_RetrieveFileData(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32* @heap_alloc_zero(i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* null, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %21 = call i32 @INTERNET_SetLastError(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %31 = call i32 @sock_recv(i32 %28, i32* %29, i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @WriteFile(i32 %39, i32* %40, i32 %41, i32* %8, i32* null)
  br label %43

43:                                               ; preds = %38, %27
  br label %24

44:                                               ; preds = %24
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @heap_free(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @INTERNET_SetLastError(i32) #1

declare dso_local i32 @sock_recv(i32, i32*, i32, i32) #1

declare dso_local i32 @WriteFile(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
