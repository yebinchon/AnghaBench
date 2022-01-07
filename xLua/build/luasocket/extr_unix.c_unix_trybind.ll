; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_unix_trybind.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_unix_trybind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_un = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"path too long\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @unix_trybind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unix_trybind(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = call i32 @memset(%struct.sockaddr_un* %6, i32 0, i32 12)
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcpy(i32 %17, i8* %18)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast %struct.sockaddr_un* %6 to i32*
  %25 = load i64, i64* %7, align 8
  %26 = add i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @socket_bind(i32* %23, i32* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IO_DONE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @socket_destroy(i32* %34)
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @socket_strerror(i32 %37)
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %36, %13
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @socket_bind(i32*, i32*, i32) #1

declare dso_local i32 @socket_destroy(i32*) #1

declare dso_local i8* @socket_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
