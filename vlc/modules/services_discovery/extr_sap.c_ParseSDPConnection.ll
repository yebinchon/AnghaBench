; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseSDPConnection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseSDPConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i8*, i8* }
%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"IN IP%u %59[^/]/%u/%u\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_storage*, i8**, i32*)* @ParseSDPConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSDPConnection(i8* %0, %struct.sockaddr_storage* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [60 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [60 x i8], [60 x i8]* %10, i64 0, i64 0
  %17 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %11, i8* %16, i32* %12, i32* %13)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %45 [
    i32 4, label %23
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** @AF_INET, align 8
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** %8, align 8
  store i8* inttoptr (i64 4 to i8*), i8** %27, align 8
  %28 = load i8*, i8** @AF_INET, align 8
  %29 = getelementptr inbounds [60 x i8], [60 x i8]* %10, i64 0, i64 0
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %31 = bitcast %struct.sockaddr_storage* %30 to %struct.sockaddr_in*
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = call i32 @inet_pton(i8* %28, i8* %29, i32* %32)
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load i32, i32* %14, align 4
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 1, %41 ]
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %46

45:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45, %35, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
