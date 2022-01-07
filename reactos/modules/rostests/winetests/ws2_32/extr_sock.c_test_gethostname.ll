; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"gethostname() returned %d\0A\00", align 1
@WSAEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"gethostname with null buffer failed with %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gethostname() call failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gethostbyname(\22%s\22) failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"name changed unexpected!\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"gethostname with insufficient length failed with %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gethostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gethostname() #0 {
  %1 = alloca %struct.hostent*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @WSASetLastError(i32 -559038737)
  %6 = call i32 @gethostname(i8* null, i32 256)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i8* (...) @WSAGetLastError()
  %13 = load i8*, i8** @WSAEFAULT, align 8
  %14 = icmp eq i8* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i8* (...) @WSAGetLastError()
  %17 = load i8*, i8** @WSAEFAULT, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %20 = call i32 @gethostname(i8* %19, i32 256)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i8* (...) @WSAGetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %27 = call %struct.hostent* @gethostbyname(i8* %26)
  store %struct.hostent* %27, %struct.hostent** %1, align 8
  %28 = load %struct.hostent*, %struct.hostent** %1, align 8
  %29 = icmp ne %struct.hostent* %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %32 = call i8* (...) @WSAGetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %31, i8* %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %4, align 4
  %36 = call i32 @WSASetLastError(i32 -559038737)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @gethostname(i8* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %53 = call i8* (...) @WSAGetLastError()
  %54 = load i8*, i8** @WSAEFAULT, align 8
  %55 = icmp eq i8* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i8* (...) @WSAGetLastError()
  %58 = load i8*, i8** @WSAEFAULT, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i8* %57, i8* %58)
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @gethostname(i8* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i8* (...) @WSAGetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %71 = call %struct.hostent* @gethostbyname(i8* %70)
  store %struct.hostent* %71, %struct.hostent** %1, align 8
  %72 = load %struct.hostent*, %struct.hostent** %1, align 8
  %73 = icmp ne %struct.hostent* %72, null
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %76 = call i8* (...) @WSAGetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  ret void
}

declare dso_local i32 @WSASetLastError(i32) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @WSAGetLastError(...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
