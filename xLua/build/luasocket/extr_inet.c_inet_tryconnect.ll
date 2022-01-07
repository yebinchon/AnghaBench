; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_tryconnect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_tryconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i64, i32, i32, %struct.addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_tryconnect(i32 %0, i32* %1, i8* %2, i8* %3, i32 %4, %struct.addrinfo* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.addrinfo* %5, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %15, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %20 = call i32 @getaddrinfo(i8* %17, i8* %18, %struct.addrinfo* %19, %struct.addrinfo** %15)
  %21 = call i8* @socket_gaistrerror(i32 %20)
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %26 = icmp ne %struct.addrinfo* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %29 = call i32 @freeaddrinfo(%struct.addrinfo* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %16, align 8
  store i8* %31, i8** %7, align 8
  br label %99

32:                                               ; preds = %6
  %33 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %33, %struct.addrinfo** %14, align 8
  br label %34

34:                                               ; preds = %91, %32
  %35 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %36 = icmp ne %struct.addrinfo* %35, null
  br i1 %36, label %37, label %95

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @timeout_markstart(i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @socket_destroy(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @socket_create(i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = call i8* @socket_strerror(i32 %59)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %65 = call i32 @freeaddrinfo(%struct.addrinfo* %64)
  %66 = load i8*, i8** %16, align 8
  store i8* %66, i8** %7, align 8
  br label %99

67:                                               ; preds = %46
  %68 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @socket_setnonblocking(i32 %72)
  br label %74

74:                                               ; preds = %67, %37
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @socket_connect(i32 %75, i32* %79, i32 %83, i32 %84)
  %86 = call i8* @socket_strerror(i32 %85)
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %95

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 5
  %94 = load %struct.addrinfo*, %struct.addrinfo** %93, align 8
  store %struct.addrinfo* %94, %struct.addrinfo** %14, align 8
  br label %34

95:                                               ; preds = %89, %34
  %96 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %97 = call i32 @freeaddrinfo(%struct.addrinfo* %96)
  %98 = load i8*, i8** %16, align 8
  store i8* %98, i8** %7, align 8
  br label %99

99:                                               ; preds = %95, %63, %30
  %100 = load i8*, i8** %7, align 8
  ret i8* %100
}

declare dso_local i8* @socket_gaistrerror(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @timeout_markstart(i32) #1

declare dso_local i32 @socket_destroy(i32) #1

declare dso_local i8* @socket_strerror(i32) #1

declare dso_local i32 @socket_create(i32, i32, i32, i32) #1

declare dso_local i32 @socket_setnonblocking(i32) #1

declare dso_local i32 @socket_connect(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
