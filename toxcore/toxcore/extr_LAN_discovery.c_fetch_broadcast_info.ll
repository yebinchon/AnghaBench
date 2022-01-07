; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_fetch_broadcast_info.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_fetch_broadcast_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ifconf = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.ifreq = type { i8*, i32, %struct.TYPE_6__ }

@broadcast_count = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@MAX_INTERFACES = common dso_local global i32 0, align 4
@SIOCGIFCONF = common dso_local global i32 0, align 4
@SIOCGIFBRDADDR = common dso_local global i32 0, align 4
@broadcast_ip_port = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fetch_broadcast_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_broadcast_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifconf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @broadcast_count, align 4
  store i32 0, i32* %3, align 4
  %12 = load i64, i64* @AF_INET, align 8
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = call i32 @socket(i64 %12, i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %119

17:                                               ; preds = %1
  %18 = load i32, i32* @MAX_INTERFACES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca %struct.ifreq, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load i32, i32* @MAX_INTERFACES, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 24, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(%struct.ifreq* %21, i32 0, i32 %25)
  %27 = bitcast %struct.ifreq* %21 to i8*
  %28 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = mul nuw i64 24, %19
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SIOCGIFCONF, align 4
  %34 = bitcast %struct.ifconf* %6 to %struct.ifreq*
  %35 = call i64 @ioctl(i32 %32, i32 %33, %struct.ifreq* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @close(i32 %38)
  store i32 1, i32* %7, align 4
  br label %116

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %110, %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SIOCGIFBRDADDR, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i64 %54
  %56 = call i64 @ioctl(i32 %51, i32 %52, %struct.ifreq* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %110

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i64 %61
  %63 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %110

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i64 %71
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 2
  %74 = bitcast %struct.TYPE_6__* %73 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %10, align 8
  %75 = load i32, i32* @broadcast_count, align 4
  %76 = load i32, i32* @MAX_INTERFACES, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @close(i32 %79)
  store i32 1, i32* %7, align 4
  br label %116

81:                                               ; preds = %69
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @broadcast_ip_port, align 8
  %83 = load i32, i32* @broadcast_count, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %11, align 8
  %86 = load i64, i64* @AF_INET, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %81
  br label %110

104:                                              ; preds = %81
  %105 = load i32, i32* %2, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @broadcast_count, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @broadcast_count, align 4
  br label %110

110:                                              ; preds = %104, %103, %68, %58
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %46

113:                                              ; preds = %46
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @close(i32 %114)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %78, %37
  %117 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %7, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %16, %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

declare dso_local i32 @socket(i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
