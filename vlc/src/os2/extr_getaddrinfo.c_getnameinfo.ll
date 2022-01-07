; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@_NI_MASK = common dso_local global i32 0, align 4
@EAI_BADFLAGS = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@EAI_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnameinfo(%struct.sockaddr* %0, i64 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %7
  %27 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %27, i32* %8, align 4
  br label %98

28:                                               ; preds = %20
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @_NI_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EAI_BADFLAGS, align 4
  store i32 %35, i32* %8, align 4
  br label %98

36:                                               ; preds = %28
  %37 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %16, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @NI_NUMERICHOST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @NI_NAMEREQD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @EAI_NONAME, align 4
  store i32 %52, i32* %8, align 4
  br label %98

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %17, align 4
  %63 = ashr i32 %62, 24
  %64 = load i32, i32* %17, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load i32, i32* %17, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load i32, i32* %17, align 4
  %71 = and i32 %70, 255
  %72 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %54
  %76 = load i32, i32* @EAI_OVERFLOW, align 4
  store i32 %76, i32* %8, align 4
  br label %98

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @ntohs(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* @EAI_OVERFLOW, align 4
  store i32 %93, i32* %8, align 4
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %92, %75, %51, %34, %26
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
