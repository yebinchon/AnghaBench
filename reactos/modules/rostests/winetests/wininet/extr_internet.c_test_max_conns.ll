; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_max_conns.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_max_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_OPTION_MAX_CONNS_PER_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Got wrong return value %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"INTERNET_OPTION_MAX_CONNS_PER_SERVER: %d\0A\00", align 1
@INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) failed: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER, 0) succeeded\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"GetLastError() = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) succeeded\0A\00", align 1
@ERROR_INTERNET_BAD_OPTION_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_max_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_max_conns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 4, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %4 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %5 = call i32 @InternetQueryOptionA(i32* null, i32 %4, i32* %2, i32* %1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 4
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i32 4, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %17 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER, align 4
  %18 = call i32 @InternetQueryOptionA(i32* null, i32 %17, i32* %2, i32* %1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i32 3, i32* %2, align 4
  %30 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %31 = call i32 @InternetSetOptionA(i32* null, i32 %30, i32* %2, i32 4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  store i32 4, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %35 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %36 = call i32 @InternetQueryOptionA(i32* null, i32 %35, i32* %2, i32* %1)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 3
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %2, align 4
  %51 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %52 = call i32 @InternetSetOptionA(i32* null, i32 %51, i32* %2, i32 4)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %0
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %0
  %60 = phi i1 [ true, %0 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = call i32 (...) @GetLastError()
  %67 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %59
  store i32 2, i32* %2, align 4
  %73 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %74 = call i32 @InternetSetOptionA(i32* null, i32 %73, i32* %2, i32 3)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  %80 = call i32 (...) @GetLastError()
  %81 = load i32, i32* @ERROR_INTERNET_BAD_OPTION_LENGTH, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (...) @GetLastError()
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  store i32 2, i32* %2, align 4
  %86 = load i32, i32* @INTERNET_OPTION_MAX_CONNS_PER_SERVER, align 4
  %87 = call i32 @InternetSetOptionA(i32* null, i32 %86, i32* %2, i32 5)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  %93 = call i32 (...) @GetLastError()
  %94 = load i32, i32* @ERROR_INTERNET_BAD_OPTION_LENGTH, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  ret void
}

declare dso_local i32 @InternetQueryOptionA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @InternetSetOptionA(i32*, i32, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
