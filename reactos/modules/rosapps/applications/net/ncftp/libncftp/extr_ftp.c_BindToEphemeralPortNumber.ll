; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_BindToEphemeralPortNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_BindToEphemeralPortNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@gCopyright = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_in*, i32, i32)* @BindToEphemeralPortNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BindToEphemeralPortNumber(i32 %0, %struct.sockaddr_in* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  store i16 0, i16* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %27 = bitcast %struct.sockaddr_in* %26 to %struct.sockaddr*
  %28 = call i32 @bind(i32 %25, %struct.sockaddr* %27, i32 8)
  store i32 %28, i32* %10, align 4
  br label %69

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %65, %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = call i64 (...) @rand()
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %11, align 4
  %40 = srem i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %12, align 2
  %44 = load i16, i16* %12, align 2
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  store i16 %44, i16* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %49 = bitcast %struct.sockaddr_in* %48 to %struct.sockaddr*
  %50 = call i32 @bind(i32 %47, %struct.sockaddr* %49, i32 8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %68

54:                                               ; preds = %36
  %55 = load i32, i32* @errno, align 4
  %56 = icmp ne i32 %55, 999
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @gCopyright, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %33

68:                                               ; preds = %63, %53, %33
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
