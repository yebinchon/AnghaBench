; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_connect.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i8*, i32, i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SPRO_EDITOR_SOCKET\00", align 1
@AF_UNIX = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@sd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"workshop_connect\00", align 1
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@XtInputReadMask = common dso_local global i64 0, align 8
@messageFromEserve = common dso_local global i32 0, align 4
@inputHandler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"connected %s %s %s\0A\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@dummy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ack 1\0A\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@dfd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_un, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @NOCATGETS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @getenv(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %87

11:                                               ; preds = %1
  %12 = load i8*, i8** @AF_UNIX, align 8
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = call i32 @socket(i8* %12, i32 %13, i32 0)
  store i32 %14, i32* @sd, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = call i32 @NOCATGETS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @PERROR(i32 %17)
  br label %87

19:                                               ; preds = %11
  %20 = load i8*, i8** @AF_UNIX, align 8
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcpy(i32 %23, i8* %24)
  %26 = load i32, i32* @sd, align 4
  %27 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %28 = call i64 @connect(i32 %26, %struct.sockaddr* %27, i32 32)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %19
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ECONNREFUSED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32, i32* @sd, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i8*, i8** @AF_UNIX, align 8
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = call i32 @socket(i8* %37, i32 %38, i32 0)
  store i32 %39, i32* @sd, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @NOCATGETS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @PERROR(i32 %42)
  br label %87

44:                                               ; preds = %34
  %45 = load i32, i32* @sd, align 4
  %46 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %47 = call i64 @connect(i32 %45, %struct.sockaddr* %46, i32 32)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = call i32 @NOCATGETS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @PERROR(i32 %50)
  br label %87

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %30
  %54 = call i32 @NOCATGETS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @PERROR(i32 %54)
  br label %87

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @sd, align 4
  %60 = load i64, i64* @XtInputReadMask, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @messageFromEserve, align 4
  %63 = call i32 @XtAppAddInput(i32 %58, i32 %59, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* @inputHandler, align 4
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %65 = call i32 @NOCATGETS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (...) @workshop_get_editor_name()
  %69 = load i32, i32* @PROTOCOL_VERSION, align 4
  %70 = call i32 (...) @workshop_get_editor_version()
  %71 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %64, i32 32, i8* %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @sd, align 4
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @write(i32 %72, i8* %73, i32 %75)
  store i32 %76, i32* @dummy, align 4
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %78 = call i32 @NOCATGETS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %77, i32 32, i8* %80)
  %82 = load i32, i32* @sd, align 4
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %85 = call i32 @strlen(i8* %84)
  %86 = call i32 @write(i32 %82, i8* %83, i32 %85)
  store i32 %86, i32* @dummy, align 4
  br label %87

87:                                               ; preds = %57, %53, %49, %41, %16, %10
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @NOCATGETS(i8*) #1

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @PERROR(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XtAppAddInput(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @workshop_get_editor_name(...) #1

declare dso_local i32 @workshop_get_editor_version(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
