; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_sha1sum_file.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_sha1sum_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sha1sum_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1sum_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca [10240 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = call i32 @SHA1Init(i32* %7)
  br label %18

18:                                               ; preds = %26, %16
  %19 = getelementptr inbounds [10240 x i8], [10240 x i8]* %9, i64 0, i64 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @fread(i8* %19, i32 1, i32 10240, i32* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds [10240 x i8], [10240 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @SHA1Update(i32* %7, i8* %27, i32 %28)
  br label %18

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %34 = call i32 @SHA1Final(i8* %33, i32* %7)
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @DigestToBase16(i8* %35, i8* %36, i32 20)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @DigestToBase16(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
