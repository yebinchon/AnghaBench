; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_get_address.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_12__, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.addrinfo = type { i64, i64 }
%struct.sockaddr_in = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@NETBIOS_FILESERVER = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to get netbios name of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @get_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_address(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %92

16:                                               ; preds = %1
  %17 = load i64, i64* @AF_INET, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = call i32 @inet_pton(i64 %17, i8* %21, %struct.TYPE_12__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %92, label %26

26:                                               ; preds = %16
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @NETBIOS_FILESERVER, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = call i64 @netbios_ns_resolve(i32 %29, i8* %33, i32 %34, i32* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlcpy(i8* %43, i8* %47, i32 16)
  %49 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %49, i32* %2, align 4
  br label %122

50:                                               ; preds = %26
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @getaddrinfo(i8* %54, i32* null, i32* null, %struct.addrinfo** %5)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_INET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %67, %struct.sockaddr_in** %6, align 8
  %68 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %63, %57
  %76 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AF_INET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %83 = call i32 @freeaddrinfo(%struct.addrinfo* %82)
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %2, align 4
  br label %122

85:                                               ; preds = %75
  %86 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %87 = call i32 @freeaddrinfo(%struct.addrinfo* %86)
  br label %90

88:                                               ; preds = %50
  %89 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %89, i32* %2, align 4
  br label %122

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %16, %1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @netbios_ns_inverse(i32 %95, i32 %99)
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @strlcpy(i8* %106, i8* %107, i32 16)
  br label %120

109:                                              ; preds = %92
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @msg_Warn(%struct.TYPE_10__* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 0, i8* %119, align 1
  br label %120

120:                                              ; preds = %109, %103
  %121 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %88, %81, %40
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @inet_pton(i64, i8*, %struct.TYPE_12__*) #1

declare dso_local i64 @netbios_ns_resolve(i32, i8*, i32, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @netbios_ns_inverse(i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
