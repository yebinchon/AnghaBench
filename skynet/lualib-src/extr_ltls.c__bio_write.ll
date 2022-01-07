; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__bio_write.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__bio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"BIO_write error:%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid BIO_write:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tls_context*, i8*, i64)* @_bio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bio_write(i32* %0, %struct.tls_context* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tls_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.tls_context* %1, %struct.tls_context** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i64, i64* %10, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %19 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @BIO_write(i32 %20, i8* %21, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %49

30:                                               ; preds = %17
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %10, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %48

44:                                               ; preds = %30
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  br label %49

49:                                               ; preds = %48, %26
  br label %14

50:                                               ; preds = %14
  ret void
}

declare dso_local i32 @BIO_write(i32, i8*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
