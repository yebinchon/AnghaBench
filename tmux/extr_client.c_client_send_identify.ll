; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_send_identify.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_send_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_flags = common dso_local global i32 0, align 4
@client_peer = common dso_local global i32 0, align 4
@MSG_IDENTIFY_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_IDENTIFY_TERM = common dso_local global i32 0, align 4
@MSG_IDENTIFY_TTYNAME = common dso_local global i32 0, align 4
@MSG_IDENTIFY_CWD = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dup failed\00", align 1
@MSG_IDENTIFY_STDIN = common dso_local global i32 0, align 4
@MSG_IDENTIFY_CLIENTPID = common dso_local global i32 0, align 4
@environ = common dso_local global i8** null, align 8
@MAX_IMSGSIZE = common dso_local global i64 0, align 8
@IMSG_HEADER_SIZE = common dso_local global i64 0, align 8
@MSG_IDENTIFY_ENVIRON = common dso_local global i32 0, align 4
@MSG_IDENTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @client_send_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_send_identify(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @client_flags, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @client_peer, align 4
  %13 = load i32, i32* @MSG_IDENTIFY_FLAGS, align 4
  %14 = call i32 (i32, i32, i32, ...) @proc_send(i32 %12, i32 %13, i32 -1, i32* %9, i64 4)
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @client_peer, align 4
  %20 = load i32, i32* @MSG_IDENTIFY_TERM, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  %25 = call i32 (i32, i32, i32, ...) @proc_send(i32 %19, i32 %20, i32 -1, i8* %21, i32 %24)
  %26 = load i32, i32* @client_peer, align 4
  %27 = load i32, i32* @MSG_IDENTIFY_TTYNAME, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = call i32 (i32, i32, i32, ...) @proc_send(i32 %26, i32 %27, i32 -1, i8* %28, i32 %31)
  %33 = load i32, i32* @client_peer, align 4
  %34 = load i32, i32* @MSG_IDENTIFY_CWD, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  %39 = call i32 (i32, i32, i32, ...) @proc_send(i32 %33, i32 %34, i32 -1, i8* %35, i32 %38)
  %40 = load i32, i32* @STDIN_FILENO, align 4
  %41 = call i32 @dup(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %18
  %44 = call i32 @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %18
  %46 = load i32, i32* @client_peer, align 4
  %47 = load i32, i32* @MSG_IDENTIFY_STDIN, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i32, i32, ...) @proc_send(i32 %46, i32 %47, i32 %48, i8* null, i32 0)
  %50 = call signext i8 (...) @getpid()
  store i8 %50, i8* %10, align 1
  %51 = load i32, i32* @client_peer, align 4
  %52 = load i32, i32* @MSG_IDENTIFY_CLIENTPID, align 4
  %53 = call i32 (i32, i32, i32, ...) @proc_send(i32 %51, i32 %52, i32 -1, i8* %10, i64 1)
  %54 = load i8**, i8*** @environ, align 8
  store i8** %54, i8*** %6, align 8
  br label %55

55:                                               ; preds = %78, %45
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MAX_IMSGSIZE, align 8
  %67 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %68 = sub i64 %66, %67
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %78

71:                                               ; preds = %59
  %72 = load i32, i32* @client_peer, align 4
  %73 = load i32, i32* @MSG_IDENTIFY_ENVIRON, align 4
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (i32, i32, i32, ...) @proc_send(i32 %72, i32 %73, i32 -1, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %6, align 8
  br label %55

81:                                               ; preds = %55
  %82 = load i32, i32* @client_peer, align 4
  %83 = load i32, i32* @MSG_IDENTIFY_DONE, align 4
  %84 = call i32 (i32, i32, i32, ...) @proc_send(i32 %82, i32 %83, i32 -1, i8* null, i32 0)
  ret void
}

declare dso_local i32 @proc_send(i32, i32, i32, ...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local signext i8 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
