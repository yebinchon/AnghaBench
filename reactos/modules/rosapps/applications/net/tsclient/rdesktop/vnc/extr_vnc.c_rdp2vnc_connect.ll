; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_rdp2vnc_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_rdp2vnc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.timeval = type { i32, i64 }

@rfb_port = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Listening on VNC port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot listen on port %d\00", align 1
@rfbClientSocket = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Error accepting client (%d: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error connecting to RDP server.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Connection successful.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Disconnecting...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdp2vnc_connect(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 4, i32* %17, align 4
  %20 = load i32, i32* @rfb_port, align 4
  %21 = call i32 @rfbListenOnTCPPort(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @rfb_port, align 4
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %16, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @rfb_port, align 4
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %75

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %30, %46, %61, %74
  %32 = call i32 @FD_ZERO(i32* %14)
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @FD_SET(i32 %33, i32* %14)
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 5, i32* %35, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64 @select(i32 %38, i32* %14, i32* null, i32* null, %struct.timeval* %15)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %31
  %42 = load i32, i32* %16, align 4
  %43 = call i64 @accept(i32 %42, %struct.sockaddr* %13, i32* %17)
  store i64 %43, i64* @rfbClientSocket, align 8
  %44 = load i64, i64* @rfbClientSocket, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @errno, align 4
  %49 = call i8* @strerror(i32 %48)
  %50 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %49)
  br label %31

51:                                               ; preds = %41
  %52 = call i32 (...) @ui_create_window()
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @rdp_connect(i8* %53, i32 %54, i8* %55, i8* %56, i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %31

63:                                               ; preds = %51
  %64 = call i32 (...) @fork()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @rdp_main_loop(i32* %18, i32* %19)
  %69 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 (...) @rdp_disconnect()
  %71 = call i32 (...) @ui_destroy_window()
  %72 = call i32 @exit(i32 0) #3
  unreachable

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %31
  br label %31

75:                                               ; preds = %27
  ret void
}

declare dso_local i32 @rfbListenOnTCPPort(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ui_create_window(...) #1

declare dso_local i32 @rdp_connect(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rdp_main_loop(i32*, i32*) #1

declare dso_local i32 @rdp_disconnect(...) #1

declare dso_local i32 @ui_destroy_window(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
