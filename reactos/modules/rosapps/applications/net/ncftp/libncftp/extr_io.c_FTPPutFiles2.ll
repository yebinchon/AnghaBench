; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPPutFiles2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPPutFiles2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kResumeNo = common dso_local global i32 0, align 4
@kDeleteNo = common dso_local global i32 0, align 4
@NoConfirmResumeUploadProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPPutFiles2(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i8*, i8** %17, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = load i32, i32* @kResumeNo, align 4
  %29 = load i32, i32* @kDeleteNo, align 4
  %30 = load i32, i32* @NoConfirmResumeUploadProc, align 4
  %31 = call i32 @FTPPutFiles3(i32 %19, i8* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25, i8* %26, i8* %27, i32 %28, i32 %29, i32 %30, i32 0)
  ret i32 %31
}

declare dso_local i32 @FTPPutFiles3(i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
