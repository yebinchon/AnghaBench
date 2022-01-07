; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_getaddrinfo.c_vlc_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_getaddrinfo.c_vlc_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@EAI_SERVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_getaddrinfo(i8* %0, i32 %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [6 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  %16 = load i32, i32* @NI_MAXHOST, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, 65535
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %83

27:                                               ; preds = %22
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snprintf(i8* %28, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  store i8* %31, i8** %13, align 8
  br label %33

32:                                               ; preds = %4
  store i8* null, i8** %13, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 91
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp ule i64 %46, %17
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 93
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load i64, i64* %15, align 8
  %57 = icmp ugt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i64, i64* %15, align 8
  %63 = sub i64 %62, 1
  %64 = call i32 @memcpy(i8* %19, i8* %61, i64 %63)
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %19, i64 %66
  store i8 0, i8* %67, align 1
  store i8* %19, i8** %6, align 8
  br label %68

68:                                               ; preds = %55, %48, %42
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i8* null, i8** %6, align 8
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %81 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %82 = call i32 @getaddrinfo(i8* %78, i8* %79, %struct.addrinfo* %80, %struct.addrinfo** %81)
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %77, %25
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
