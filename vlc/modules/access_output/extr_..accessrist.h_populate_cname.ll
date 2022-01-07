; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_populate_cname.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_populate_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@MAX_CNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"UnknownHost\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s@%s:%u\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @populate_cname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_cname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i32, i32* @MAX_CNAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @MAX_CNAME, align 4
  %22 = call i32 @gethostname(i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @MAX_CNAME, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %3, align 4
  %30 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %31 = call i32 @getsockname(i32 %29, %struct.sockaddr* %30, i32* %9)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %28
  %35 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %12, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %43 = bitcast %struct.sockaddr* %42 to i8*
  %44 = bitcast i8* %43 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %44, %struct.sockaddr_in** %13, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @MAX_CNAME, align 4
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @inet_ntoa(i32 %49)
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %50, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MAX_CNAME, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %41
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @MAX_CNAME, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %59, %41
  br label %105

66:                                               ; preds = %34
  %67 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %74 = bitcast %struct.sockaddr* %73 to i8*
  %75 = bitcast i8* %74 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %75, %struct.sockaddr_in6** %14, align 8
  %76 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %77 = zext i32 %76 to i64
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %15, align 8
  %79 = alloca i8, i64 %77, align 16
  store i64 %77, i64* %16, align 8
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 1
  %85 = call i32 @inet_ntop(i32 %82, i32* %84, i8* %79, i32 4)
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* @MAX_CNAME, align 4
  %88 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %79, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MAX_CNAME, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %72
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* @MAX_CNAME, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %96, %72
  %103 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %102, %66
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %28
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* @MAX_CNAME, align 4
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @MAX_CNAME, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i8*, i8** %4, align 8
  %118 = load i32, i32* @MAX_CNAME, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %116, %109
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %124)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
