; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_sha3sum_file.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_sha3sum_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @sha3sum_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha3sum_file(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10240 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @SHA3Init(i32* %9, i32 %18)
  br label %20

20:                                               ; preds = %28, %17
  %21 = getelementptr inbounds [10240 x i8], [10240 x i8]* %10, i64 0, i64 0
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @fread(i8* %21, i32 1, i32 10240, i32* %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds [10240 x i8], [10240 x i8]* %10, i64 0, i64 0
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @SHA3Update(i32* %9, i8* %29, i32 %30)
  br label %20

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = call i32 @SHA3Final(i32* %9)
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 8
  %39 = call i32 @DigestToBase16(i32 %35, i8* %36, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @SHA3Init(i32*, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @SHA3Update(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DigestToBase16(i32, i8*, i32) #1

declare dso_local i32 @SHA3Final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
