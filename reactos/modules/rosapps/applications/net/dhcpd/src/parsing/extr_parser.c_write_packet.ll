; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/parsing/extr_parser.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/parsing/extr_parser.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.in_addr, i32, i8*, i8* }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64 }
%struct.sockaddr = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"write_packet [begin]\0A\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Unknown host %s \0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"IP a buscar: %s \0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"sent %d bytes to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"write_packet [end]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_packet(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load i8*, i8** @AF_INET, align 8
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = call i32 @socket(i8* %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #4
  unreachable

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SOL_SOCKET, align 4
  %27 = load i32, i32* @SO_BROADCAST, align 4
  %28 = call i32 @setsockopt(i32 %25, i32 %26, i32 %27, i32* %10, i32 4)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #4
  unreachable

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.hostent* @gethostbyname(i8* %38)
  store %struct.hostent* %39, %struct.hostent** %8, align 8
  %40 = icmp eq %struct.hostent* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @stdout, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %3, align 4
  br label %90

46:                                               ; preds = %37
  %47 = load i8*, i8** @AF_INET, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = call i8* @htons(i32 68)
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %52 = load %struct.hostent*, %struct.hostent** %8, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.in_addr*
  %56 = bitcast %struct.in_addr* %51 to i8*
  %57 = bitcast %struct.in_addr* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 %57, i64 4, i1 false)
  br label %65

58:                                               ; preds = %33
  %59 = load i8*, i8** @AF_INET, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i8* %59, i8** %60, align 8
  %61 = call i8* @htons(i32 68)
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %46
  %66 = load i32, i32* @stdout, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %70 = call i32 @memset(i32* %69, i8 signext 0, i32 8)
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %74 = call i32 @sendto(i32 %71, i32* %72, i32 4, i32 0, %struct.sockaddr* %73, i32 4)
  store i32 %74, i32* %9, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @exit(i32 1) #4
  unreachable

79:                                               ; preds = %65
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @inet_ntoa(i32 %83)
  %85 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %80, i8* %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i32, i32* @stdout, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %79, %41, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i8* @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
