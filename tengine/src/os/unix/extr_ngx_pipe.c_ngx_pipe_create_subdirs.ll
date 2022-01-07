; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_create_subdirs.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_create_subdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"stat [%s] failed\00", align 1
@NGX_PIPE_DIR_ACCESS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"mkdir [%s] failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @ngx_pipe_create_subdirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_pipe_create_subdirs(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %71, %2
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %71

18:                                               ; preds = %13
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ngx_memcpy(i8* %19, i8* %20, i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = call i64 @ngx_file_info(i8* %34, i32* %5)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %18
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOENT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* @NGX_LOG_EMERG, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 @exit(i32 2) #3
  unreachable

50:                                               ; preds = %37
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %52 = load i32, i32* @NGX_PIPE_DIR_ACCESS, align 4
  %53 = call i64 @ngx_create_dir(i8* %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EEXIST, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* @NGX_LOG_EMERG, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ngx_errno, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %66 = call i32 @ngx_log_error(i32 %60, i32 %63, i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = call i32 @exit(i32 2) #3
  unreachable

68:                                               ; preds = %55, %50
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %18
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ngx_file_info(i8*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ngx_create_dir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
