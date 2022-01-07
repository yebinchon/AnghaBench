; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_getaddrinfo.c_vlc_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_getaddrinfo.c_vlc_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@NI_NUMERICSERV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_getnameinfo(%struct.sockaddr* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @NI_NUMERICSERV, align 4
  %18 = load i32, i32* %12, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  store i8* %23, i8** %14, align 8
  store i32 6, i32* %15, align 4
  br label %25

24:                                               ; preds = %6
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @getnameinfo(%struct.sockaddr* %26, i32 %27, i8* %28, i32 %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @atoi(i8* %37)
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i32, i32* %16, align 4
  ret i32 %41
}

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
