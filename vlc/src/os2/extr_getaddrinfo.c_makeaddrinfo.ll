; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_makeaddrinfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_makeaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i64, i32*, i32*, i32*, i64 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32, i32, i32, %struct.sockaddr*, i64, i8*)* @makeaddrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @makeaddrinfo(i32 %0, i32 %1, i32 %2, %struct.sockaddr* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = call i32* @malloc(i64 56)
  %16 = bitcast i32* %15 to %struct.addrinfo*
  store %struct.addrinfo* %16, %struct.addrinfo** %14, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %18 = icmp ne %struct.addrinfo* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %6
  %20 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32* @malloc(i64 %34)
  %36 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %19
  %47 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @memcpy(i32* %49, %struct.sockaddr* %50, i64 %51)
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load i8*, i8** %13, align 8
  %57 = call i32* @strdup(i8* %56)
  %58 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %65, %struct.addrinfo** %7, align 8
  br label %74

66:                                               ; preds = %55
  br label %69

67:                                               ; preds = %46
  %68 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %68, %struct.addrinfo** %7, align 8
  br label %74

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %19
  br label %71

71:                                               ; preds = %70, %6
  %72 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %73 = call i32 @freeaddrinfo(%struct.addrinfo* %72)
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  br label %74

74:                                               ; preds = %71, %67, %64
  %75 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  ret %struct.addrinfo* %75
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
