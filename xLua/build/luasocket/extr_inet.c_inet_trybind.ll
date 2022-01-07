; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_trybind.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_trybind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i32, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SOCKET_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_trybind(i64* %0, i8* %1, i8* %2, %struct.addrinfo* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %7, align 8
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %28 = call i32 @getaddrinfo(i8* %25, i8* %26, %struct.addrinfo* %27, %struct.addrinfo** %11)
  %29 = call i8* @socket_gaistrerror(i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %34 = icmp ne %struct.addrinfo* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %37 = call i32 @freeaddrinfo(%struct.addrinfo* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %5, align 8
  br label %102

40:                                               ; preds = %24
  %41 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %41, %struct.addrinfo** %10, align 8
  br label %42

42:                                               ; preds = %92, %40
  %43 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @SOCKET_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @socket_create(i64* %13, i32 %52, i32 %55, i32 %58)
  %60 = call i8* @socket_strerror(i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %92

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @socket_bind(i64* %13, i32* %69, i32 %73)
  %75 = call i8* @socket_strerror(i32 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load i64, i64* %13, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @socket_destroy(i64* %13)
  br label %85

85:                                               ; preds = %83, %78
  br label %91

86:                                               ; preds = %65
  %87 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %88 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %89 = bitcast %struct.addrinfo* %87 to i8*
  %90 = bitcast %struct.addrinfo* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 40, i1 false)
  br label %96

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 5
  %95 = load %struct.addrinfo*, %struct.addrinfo** %94, align 8
  store %struct.addrinfo* %95, %struct.addrinfo** %10, align 8
  br label %42

96:                                               ; preds = %86, %42
  %97 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %98 = call i32 @freeaddrinfo(%struct.addrinfo* %97)
  %99 = load i64, i64* %13, align 8
  %100 = load i64*, i64** %6, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i8*, i8** %12, align 8
  store i8* %101, i8** %5, align 8
  br label %102

102:                                              ; preds = %96, %38
  %103 = load i8*, i8** %5, align 8
  ret i8* %103
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @socket_gaistrerror(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @socket_strerror(i32) #1

declare dso_local i32 @socket_create(i64*, i32, i32, i32) #1

declare dso_local i32 @socket_bind(i64*, i32*, i32) #1

declare dso_local i32 @socket_destroy(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
