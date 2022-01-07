; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__bio_read.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__bio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"BIO_read error:%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid BIO_read:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tls_context*)* @_bio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bio_read(i32* %0, %struct.tls_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.tls_context* %1, %struct.tls_context** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %11 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIO_ctrl_pending(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_buffinit(i32* %17, i32* %9)
  br label %19

19:                                               ; preds = %50, %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %24 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %27 = call i32 @BIO_read(i32 %25, i8* %26, i32 4096)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %50

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ule i64 %36, 4096
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @luaL_addlstring(i32* %9, i8* %42, i32 %43)
  br label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @luaL_error(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %52 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BIO_ctrl_pending(i32 %53)
  store i32 %54, i32* %8, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @luaL_pushresult(i32* %9)
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @BIO_ctrl_pending(i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @BIO_read(i32, i8*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
