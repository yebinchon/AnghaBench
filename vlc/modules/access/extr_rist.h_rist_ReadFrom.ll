; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.h_rist_ReadFrom.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.h_rist_ReadFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.sockaddr*, i32*)* @rist_ReadFrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rist_ReadFrom(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %13 = icmp eq %struct.sockaddr* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @recv(i32 %15, i8* %16, i64 %17, i32 0)
  store i32 %18, i32* %11, align 4
  br label %26

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @recvfrom(i32 %20, i8* %21, i64 %22, i32 0, %struct.sockaddr* %23, i32* %24)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* @errno, align 4
  switch i32 %30, label %47 [
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %29, %29
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = icmp eq %struct.sockaddr* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @recv(i32 %35, i8* %36, i64 %37, i32 0)
  store i32 %38, i32* %11, align 4
  br label %46

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @recvfrom(i32 %40, i8* %41, i64 %42, i32 0, %struct.sockaddr* %43, i32* %44)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %29, %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
