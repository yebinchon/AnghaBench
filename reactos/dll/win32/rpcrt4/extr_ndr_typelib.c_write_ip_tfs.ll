; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_ip_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_ip_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_IP = common dso_local global i8 0, align 1
@FC_CONSTANT_IID = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*, i32*)* @write_ip_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_ip_tfs(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i8, i8* @FC_IP, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 %13, i8* %17, align 1
  %18 = load i8, i8* @FC_CONSTANT_IID, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %18, i8* %23, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @memcpy(i8* %28, i32* %29, i32 4)
  br label %31

31:                                               ; preds = %12, %3
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 6
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %7, align 8
  ret i64 %35
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
