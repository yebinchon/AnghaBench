; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_errno.c_ngx_strerror_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_errno.c_ngx_strerror_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@NGX_SYS_NERR = common dso_local global i32 0, align 4
@ngx_sys_errlist = common dso_local global %struct.TYPE_2__* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"malloc(%uz) failed (%d: %s)\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_strerror_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @NGX_SYS_NERR, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @malloc(i64 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** @ngx_sys_errlist, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ngx_sys_errlist, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %53

15:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NGX_SYS_NERR, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @strerror(i32 %21)
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @ngx_strlen(i8* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @malloc(i64 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %53

31:                                               ; preds = %20
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ngx_memcpy(i32* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ngx_sys_errlist, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ngx_sys_errlist, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32* %42, i32** %47, align 8
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load i32, i32* @NGX_OK, align 4
  store i32 %52, i32* %1, align 4
  br label %61

53:                                               ; preds = %30, %14
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @strerror(i32 %57)
  %59 = call i32 @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %56, i8* %58)
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %53, %51
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @ngx_log_stderr(i32, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
