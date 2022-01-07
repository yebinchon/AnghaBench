; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_GetHostEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_GetHostEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i32* }
%struct.in_addr = type { i64 }

@INADDR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (i8*, %struct.in_addr*)* @GetHostEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @GetHostEntry(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.in_addr* %1, %struct.in_addr** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @inet_addr(i8* %7)
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INADDR_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.hostent* null, %struct.hostent** %6, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.hostent* @gethostbyname(i8* %16)
  store %struct.hostent* %17, %struct.hostent** %6, align 8
  %18 = load %struct.hostent*, %struct.hostent** %6, align 8
  %19 = icmp ne %struct.hostent* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %22 = load %struct.hostent*, %struct.hostent** %6, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hostent*, %struct.hostent** %6, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcpy(i64* %21, i32 %26, i64 %29)
  br label %31

31:                                               ; preds = %20, %15
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %34 = icmp ne %struct.in_addr* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %37 = bitcast %struct.in_addr* %36 to i8*
  %38 = bitcast %struct.in_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.hostent*, %struct.hostent** %6, align 8
  ret %struct.hostent* %40
}

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
