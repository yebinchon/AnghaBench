; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_url.c_test_long_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_url.c_test_long_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@INTERNET_SCHEME_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"www.winehq.org\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"/path/\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"http://www.winehq.org\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"http://www.winehq.org/path/\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"InternetCrackUrlA returned %x with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_long_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_long_url() #0 {
  %1 = alloca [6000 x i8], align 16
  %2 = alloca [7000 x i8], align 16
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %8 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %12 = load i32, i32* @INTERNET_SCHEME_HTTP, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 7, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i32 14, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i32 80, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 8
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 9
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 10
  store i32 -1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 11
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 12
  store i8* inttoptr (i64 21 to i8*), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 13
  store i8* inttoptr (i64 5999 to i8*), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 14
  store i8* inttoptr (i64 -1 to i8*), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 15
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 18
  store i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 19
  store i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 20
  %30 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 21
  store i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %34 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 4, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %38 = load i32, i32* @INTERNET_SCHEME_HTTP, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 7, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  store i32 14, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  store i32 -1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  store i32 80, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  store i32 -1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 9
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 10
  store i32 -1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 11
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 12
  store i8* inttoptr (i64 21 to i8*), i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 13
  store i8* inttoptr (i64 6 to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 14
  store i8* inttoptr (i64 27 to i8*), i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 15
  store i8* inttoptr (i64 5999 to i8*), i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 18
  store i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 19
  store i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 20
  store i32 ptrtoint ([7 x i8]* @.str.3 to i32), i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 21
  %57 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %56, align 4
  %59 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %60 = call i32 @memset(i8* %59, i8 signext 120, i32 6000)
  %61 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  store i8 47, i8* %61, align 16
  %62 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 5999
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %64 = call i32 @strcpy(i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %65 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %66 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %67 = call i32 @strcat(i8* %65, i8* %66)
  %68 = call i32 @test_crack_url(%struct.TYPE_6__* %3)
  %69 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %71 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  store i8 35, i8* %71, align 16
  %72 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %73 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %74 = call i32 @strcat(i8* %72, i8* %73)
  %75 = call i32 @test_crack_url(%struct.TYPE_6__* %4)
  %76 = call i32 @zero_compsA(%struct.TYPE_7__* %5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 100)
  %77 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %80 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  %82 = call i64 @InternetCrackUrlA(i8* %79, i32 %81, i32 0, %struct.TYPE_7__* %5)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %0
  %86 = call i64 (...) @GetLastError()
  %87 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %85, %0
  %90 = phi i1 [ false, %0 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %6, align 8
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %92, i64 %93)
  %95 = call i32 @zero_compsA(%struct.TYPE_7__* %5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0)
  %96 = getelementptr inbounds [6000 x i8], [6000 x i8]* %1, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %99 = getelementptr inbounds [7000 x i8], [7000 x i8]* %2, i64 0, i64 0
  %100 = call i32 @strlen(i8* %99)
  %101 = call i64 @InternetCrackUrlA(i8* %98, i32 %100, i32 0, %struct.TYPE_7__* %5)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %89
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %89
  %109 = phi i1 [ false, %89 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %6, align 8
  %112 = call i64 (...) @GetLastError()
  %113 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %111, i64 %112)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @test_crack_url(%struct.TYPE_6__*) #1

declare dso_local i32 @zero_compsA(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @InternetCrackUrlA(i8*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
