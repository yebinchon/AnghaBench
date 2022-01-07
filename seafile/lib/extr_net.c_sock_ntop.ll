; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_sock_ntop.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_sock_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_un = type { i8* }

@sock_ntop.str = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"(no pathname bound)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"sock_ntop: unknown AF_xxx: %d, len %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sock_ntop(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_un*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %38 [
    i32 130, label %11
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %13, %struct.sockaddr_in** %6, align 8
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %16 = call i32* @evutil_inet_ntop(i32 130, i32* %15, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i32 128)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %44

19:                                               ; preds = %11
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i8** %3, align 8
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %22, %struct.sockaddr_un** %7, align 8
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %30
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i8** %3, align 8
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sock_ntop.str, i64 0, i64 0), i8** %3, align 8
  br label %44

44:                                               ; preds = %38, %37, %19, %18
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32* @evutil_inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
