; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve_unix.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64, i32 }
%struct.sockinfo = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sockaddr_un }
%struct.sockaddr_un = type { i8*, i8* }

@NC_UNIX_ADDRSTRLEN = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string*, %struct.sockinfo*)* @nc_resolve_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_resolve_unix(%struct.string* %0, %struct.sockinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string*, align 8
  %5 = alloca %struct.sockinfo*, align 8
  %6 = alloca %struct.sockaddr_un*, align 8
  store %struct.string* %0, %struct.string** %4, align 8
  store %struct.sockinfo* %1, %struct.sockinfo** %5, align 8
  %7 = load %struct.string*, %struct.string** %4, align 8
  %8 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NC_UNIX_ADDRSTRLEN, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.sockinfo*, %struct.sockinfo** %5, align 8
  %15 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.sockaddr_un* %16, %struct.sockaddr_un** %6, align 8
  %17 = load i8*, i8** @AF_UNIX, align 8
  %18 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.string*, %struct.string** %4, align 8
  %24 = getelementptr inbounds %struct.string, %struct.string* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.string*, %struct.string** %4, align 8
  %27 = getelementptr inbounds %struct.string, %struct.string* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nc_memcpy(i8* %22, i32 %25, i64 %28)
  %30 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.string*, %struct.string** %4, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** @AF_UNIX, align 8
  %38 = load %struct.sockinfo*, %struct.sockinfo** %5, align 8
  %39 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.sockinfo*, %struct.sockinfo** %5, align 8
  %41 = getelementptr inbounds %struct.sockinfo, %struct.sockinfo* %40, i32 0, i32 0
  store i32 16, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %13, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @nc_memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
