; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SendData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SendData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DATA_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed reading from file\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"%d bytes of %d bytes (%d%%) in %d min %d sec estimated remaining time %d sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"%d bytes of %d bytes (%d%%) in %d sec estimated remaining time %d sec\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"file transfer complete!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32)* @FTP_SendData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FTP_SendData(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 1, i32* %13, align 4
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @heap_alloc_zero(i32 %22)
  store i32* %23, i32** %17, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GetFileInformationByHandle(i32 %24, %struct.TYPE_3__* %7)
  %26 = call i32 @time(i32* %14)
  br label %27

27:                                               ; preds = %127, %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %37 = call i32 @ReadFile(i32 %34, i32* %35, i32 %36, i64* %8, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %11, align 8
  br label %47

46:                                               ; preds = %41
  br label %130

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @DATA_PACKET_SIZE, align 4
  %55 = sext i32 %54 to i64
  br label %58

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  store i64 %59, i64* %12, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @sock_send(i32 %60, i32* %61, i64 %62, i32 0)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %66, %58
  %76 = call i32 @time(i32* %15)
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sdiv i32 %80, 60
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %75
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = mul nsw i64 %87, 100
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sdiv i64 %88, %90
  %92 = load i32, i32* %16, align 4
  %93 = sdiv i32 %92, 60
  %94 = load i32, i32* %16, align 4
  %95 = srem i32 %94, 60
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %99, %101
  %103 = load i64, i64* %10, align 8
  %104 = sdiv i64 %102, %103
  %105 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %84, i64 %86, i64 %91, i32 %93, i32 %95, i64 %104)
  br label %126

106:                                              ; preds = %75
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = mul nsw i64 %110, 100
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sdiv i64 %111, %113
  %115 = load i32, i32* %16, align 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %119, %121
  %123 = load i64, i64* %10, align 8
  %124 = sdiv i64 %122, %123
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %107, i64 %109, i64 %114, i32 %115, i64 %124)
  br label %126

126:                                              ; preds = %106, %83
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %27, label %130

130:                                              ; preds = %127, %46
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32*, i32** %17, align 8
  %133 = call i32 @heap_free(i32* %132)
  %134 = load i64, i64* %10, align 8
  ret i64 %134
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @GetFileInformationByHandle(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ReadFile(i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @sock_send(i32, i32*, i64, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
