; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve_inet.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64 }
%struct.sockinfo = type { i64, i32, i32 }
%struct.addrinfo = type { i32*, i64, i32, %struct.addrinfo*, i32, i32*, i64, i32 }

@NC_UINTMAX_MAXLEN = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"address resolution of node '%s' service '%s' failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string*, i32, %struct.sockinfo*)* @nc_resolve_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_resolve_inet(%struct.string* %0, i32 %1, %struct.sockinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.string* %0, %struct.string** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockinfo* %2, %struct.sockinfo** %7, align 8
  %17 = load i32, i32* @NC_UINTMAX_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nc_valid_port(i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 64)
  %25 = load i32, i32* @AI_NUMERICSERV, align 4
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @AF_UNSPEC, align 4
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.string*, %struct.string** %5, align 8
  %36 = icmp ne %struct.string* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.string*, %struct.string** %5, align 8
  %39 = getelementptr inbounds %struct.string, %struct.string* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %12, align 8
  br label %47

42:                                               ; preds = %3
  store i8* null, i8** %12, align 8
  %43 = load i32, i32* @AI_PASSIVE, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @NC_UINTMAX_MAXLEN, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @nc_snprintf(i8* %20, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @getaddrinfo(i8* %51, i8* %20, %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gai_strerror(i32 %57)
  %59 = call i32 @log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %20, i32 %58)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %97

60:                                               ; preds = %47
  %61 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %61, %struct.addrinfo** %10, align 8
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %85, %60
  %63 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %64 = icmp ne %struct.addrinfo* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %70 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %75 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %77 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %76, i32 0, i32 1
  %78 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %82 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @nc_memcpy(i32* %77, i32* %80, i64 %83)
  store i32 1, i32* %15, align 4
  br label %89

85:                                               ; No predecessors!
  %86 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 3
  %88 = load %struct.addrinfo*, %struct.addrinfo** %87, align 8
  store %struct.addrinfo* %88, %struct.addrinfo** %10, align 8
  br label %62

89:                                               ; preds = %65, %62
  %90 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %91 = call i32 @freeaddrinfo(%struct.addrinfo* %90)
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %97

97:                                               ; preds = %89, %55
  %98 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @nc_valid_port(i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @nc_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @log_error(i8*, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @nc_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
