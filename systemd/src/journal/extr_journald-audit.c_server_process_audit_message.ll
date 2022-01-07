; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-audit.c_server_process_audit_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-audit.c_server_process_audit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64 }
%union.sockaddr_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nlmsghdr = type { i64, i64 }

@AF_NETLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Audit netlink message from invalid sender.\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Audit netlink message with invalid credentials.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Audit netlink message truncated.\00", align 1
@NLMSG_NOOP = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@AUDIT_FIRST_USER_MSG = common dso_local global i64 0, align 8
@AUDIT_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_process_audit_message(i8* %0, i8* %1, i64 %2, %struct.ucred* %3, %union.sockaddr_union* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %union.sockaddr_union*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlmsghdr*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %union.sockaddr_union* %4, %union.sockaddr_union** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %15, %struct.nlmsghdr** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @ALIGN(i32 16)
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %98

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load %union.sockaddr_union*, %union.sockaddr_union** %11, align 8
  %26 = icmp ne %union.sockaddr_union* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load %union.sockaddr_union*, %union.sockaddr_union** %11, align 8
  %33 = bitcast %union.sockaddr_union* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_NETLINK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %union.sockaddr_union*, %union.sockaddr_union** %11, align 8
  %40 = bitcast %union.sockaddr_union* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %31, %27, %22
  %45 = call i32 @log_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %98

46:                                               ; preds = %38
  %47 = load %struct.ucred*, %struct.ucred** %10, align 8
  %48 = icmp ne %struct.ucred* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.ucred*, %struct.ucred** %10, align 8
  %51 = getelementptr inbounds %struct.ucred, %struct.ucred* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %46
  %55 = call i32 @log_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %98

56:                                               ; preds = %49
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @NLMSG_OK(%struct.nlmsghdr* %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 @log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %98

63:                                               ; preds = %56
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %65 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @NLMSG_NOOP, align 4
  %68 = load i32, i32* @NLMSG_ERROR, align 4
  %69 = call i64 @IN_SET(i64 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %98

72:                                               ; preds = %63
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %74 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AUDIT_FIRST_USER_MSG, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %80 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUDIT_USER, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %98

85:                                               ; preds = %78, %72
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %88 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %91 = call i32 @NLMSG_DATA(%struct.nlmsghdr* %90)
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %93 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @ALIGN(i32 16)
  %96 = sub i64 %94, %95
  %97 = call i32 @process_audit_string(i8* %86, i64 %89, i32 %91, i64 %96)
  br label %98

98:                                               ; preds = %85, %84, %71, %61, %54, %44, %21
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @ALIGN(i32) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @NLMSG_OK(%struct.nlmsghdr*, i64) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i32 @process_audit_string(i8*, i64, i32, i64) #1

declare dso_local i32 @NLMSG_DATA(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
