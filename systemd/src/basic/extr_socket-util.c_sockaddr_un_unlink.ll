; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_sockaddr_un_unlink.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_sockaddr_un_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64, i64* }

@AF_UNIX = common dso_local global i64 0, align 8
@EPROTOTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_un_unlink(%struct.sockaddr_un* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_un*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %3, align 8
  %6 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %7 = call i32 @assert(%struct.sockaddr_un* %6)
  %8 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_UNIX, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EPROTOTYPE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %18 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = call i8* @memchr(i64* %27, i32 0, i32 8)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = bitcast i64* %34 to i8*
  store i8* %35, i8** %4, align 8
  br label %42

36:                                               ; preds = %24
  %37 = load %struct.sockaddr_un*, %struct.sockaddr_un** %3, align 8
  %38 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = bitcast i64* %39 to i8*
  %41 = call i8* @memdupa_suffix0(i8* %40, i32 8)
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @unlink(i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %23, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.sockaddr_un*) #1

declare dso_local i8* @memchr(i64*, i32, i32) #1

declare dso_local i8* @memdupa_suffix0(i8*, i32) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
