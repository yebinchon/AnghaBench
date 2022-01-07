; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_manager_dns_stub_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_manager_dns_stub_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@DNS_STUB_LISTENER_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Not creating stub listener.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Creating stub listener using %s.\00", align 1
@DNS_STUB_LISTENER_UDP = common dso_local global i64 0, align 8
@DNS_STUB_LISTENER_TCP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UDP/TCP\00", align 1
@DNS_STUB_LISTENER_YES = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [101 x i8] c"Another process is already listening on %s socket 127.0.0.53:53.\0ATurning off local DNS stub support.\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"Failed to listen on %s socket 127.0.0.53:53: %m.\0ATurning off local DNS stub support.\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Failed to listen on %s socket 127.0.0.53:53: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_dns_stub_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DNS_STUB_LISTENER_NO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DNS_STUB_LISTENER_UDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DNS_STUB_LISTENER_TCP, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %30

30:                                               ; preds = %22, %21
  %31 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %21 ], [ %29, %22 ]
  %32 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %13
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @DNS_STUB_LISTENER_YES, align 4
  %39 = load i64, i64* @DNS_STUB_LISTENER_UDP, align 8
  %40 = call i64 @IN_SET(i32 %37, i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @manager_dns_stub_udp_fd(%struct.TYPE_7__* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @DNS_STUB_LISTENER_YES, align 4
  %54 = load i64, i64* @DNS_STUB_LISTENER_TCP, align 8
  %55 = call i64 @IN_SET(i32 %52, i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = call i32 @manager_dns_stub_tcp_fd(%struct.TYPE_7__* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %48, %45
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @EADDRINUSE, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i64, i64* @EPERM, align 8
  %65 = sub nsw i64 0, %64
  %66 = call i64 @IN_SET(i32 %61, i32 %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @EADDRINUSE, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @log_warning_errno(i32 %74, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @log_warning_errno(i32 %78, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @manager_dns_stub_stop(%struct.TYPE_7__* %82)
  br label %92

84:                                               ; preds = %60
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @log_error_errno(i32 %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %81
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i64 @IN_SET(i32, i32, i64) #1

declare dso_local i32 @manager_dns_stub_udp_fd(%struct.TYPE_7__*) #1

declare dso_local i32 @manager_dns_stub_tcp_fd(%struct.TYPE_7__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

declare dso_local i32 @manager_dns_stub_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
