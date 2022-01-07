; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_DecodeDirectoryURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_DecodeDirectoryURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeDirectoryURL(i32 %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  %19 = load i8*, i8** %13, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i8*, i8** %13, align 8
  %26 = call i32* @strchr(i8* %25, i8 signext 46)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @STRNCPY(i8* %29, i8* %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %33 = call i32 @STRNCAT(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %28, %24, %18, %5
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @FTPDecodeURL(i32 %36, i8* %37, i32 %38, i8* %39, i64 %40, i32* null, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @FTPDecodeURL(i32, i8*, i32, i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
