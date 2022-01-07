; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_srltest.c_ServeOneClient.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_srltest.c_ServeOneClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"subserver[%d]: started, connected to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<%h:%p>\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"subserver[%d]: InitSReadlineInfo error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@kTimeoutErr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"subserver[%d]: idle\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"subserver[%d]: read error: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"subserver[%d]: write error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"subserver[%d]: done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr_in*)* @ServeOneClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServeOneClient(i32 %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [320 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %4, align 8
  %12 = call i64 (...) @getpid()
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %16 = call i8* @AddrToAddrStr(i8* %14, i32 64, %struct.sockaddr_in* %15, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %16)
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [320 x i8], [320 x i8]* %7, i64 0, i64 0
  %20 = call i64 @InitSReadlineInfo(i32* %11, i32 %18, i8* %19, i32 320, i32 5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i64 (...) @getpid()
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @errno, align 4
  %27 = call i8* @strerror(i32 %26)
  %28 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %96, %41, %30
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %33 = call i32 @SReadline(i32* %11, i8* %32, i32 80)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %97

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @kTimeoutErr, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i64 (...) @getpid()
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %31

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i64 (...) @getpid()
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %51, i8* %53)
  br label %97

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @islower(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call signext i8 @toupper(i8 signext %73)
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %76
  store i8 %74, i8* %77, align 1
  br label %78

78:                                               ; preds = %69, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load i32, i32* %3, align 4
  %84 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @SWrite(i32 %83, i8* %84, i32 %85, i32 15)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* @stderr, align 4
  %91 = call i64 (...) @getpid()
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @strerror(i32 %93)
  %95 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %92, i8* %94)
  br label %97

96:                                               ; preds = %82
  br label %31

97:                                               ; preds = %89, %48, %36
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @SClose(i32 %98, i32 10)
  %100 = call i64 (...) @getpid()
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i8* @AddrToAddrStr(i8*, i32, %struct.sockaddr_in*, i32, i8*) #1

declare dso_local i64 @InitSReadlineInfo(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SReadline(i32*, i8*, i32) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @SWrite(i32, i8*, i32, i32) #1

declare dso_local i32 @SClose(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
