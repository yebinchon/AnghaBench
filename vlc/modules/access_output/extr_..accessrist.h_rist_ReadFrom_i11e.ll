; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_rist_ReadFrom_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_rist_ReadFrom_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.sockaddr*, i32*)* @rist_ReadFrom_i11e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rist_ReadFrom_i11e(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %12, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %14 = icmp eq %struct.sockaddr* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @vlc_recv_i11e(i32 %16, i8* %17, i64 %18, i32 0)
  store i32 %19, i32* %12, align 4
  br label %27

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @vlc_recvfrom_i11e(i32 %21, i8* %22, i64 %23, i32 0, %struct.sockaddr* %24, i32* %25)
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load i32, i32* @errno, align 4
  switch i32 %31, label %53 [
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %30, %30
  %33 = call i32 (...) @vlc_killed()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %57

37:                                               ; preds = %32
  %38 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %39 = icmp eq %struct.sockaddr* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @vlc_recv_i11e(i32 %41, i8* %42, i64 %43, i32 0)
  store i32 %44, i32* %12, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @vlc_recvfrom_i11e(i32 %46, i8* %47, i64 %48, i32 0, %struct.sockaddr* %49, i32* %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %40
  br label %53

53:                                               ; preds = %30, %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %35
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @vlc_recv_i11e(i32, i8*, i64, i32) #1

declare dso_local i32 @vlc_recvfrom_i11e(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @vlc_killed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
