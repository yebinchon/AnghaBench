; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_read_stdin.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_read_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@used = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@avail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"realloc stdin buffer\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ov_pipe = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"read stdin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_stdin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %91, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @used, align 4
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ true, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %108

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %77, %13
  %15 = load i8*, i8** @buf, align 8
  %16 = load i32, i32* @used, align 4
  %17 = call i8* @memchr(i8* %15, i8 signext 10, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %81

20:                                               ; preds = %14
  %21 = load i32, i32* @used, align 4
  %22 = load i32, i32* @avail, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* @avail, align 4
  %26 = add nsw i32 %25, 20
  store i32 %26, i32* @avail, align 4
  %27 = load i32, i32* @avail, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* @avail, align 4
  %29 = load i8*, i8** @buf, align 8
  %30 = load i32, i32* @avail, align 4
  %31 = call i8* @realloc(i8* %29, i32 %30)
  store i8* %31, i8** @buf, align 8
  %32 = load i8*, i8** @buf, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @sysfail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %37, %20
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i8*, i8** @buf, align 8
  %41 = load i32, i32* @used, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @avail, align 4
  %45 = load i32, i32* @used, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @read(i32 0, i8* %43, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EINTR, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %39, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* @used, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** @buf, align 8
  %65 = load i32, i32* @used, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @used, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 10, i8* %68, align 1
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %60
  store i64 0, i64* @ov_pipe, align 8
  br label %108

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %2, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = call i32 @sysfail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @used, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @used, align 4
  br label %14

81:                                               ; preds = %14
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  store i8 0, i8* %82, align 1
  %84 = load i8*, i8** @buf, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 32)
  store i8* %85, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  store i8 0, i8* %89, align 1
  br label %91

91:                                               ; preds = %88, %81
  %92 = load i8*, i8** @buf, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @process_optarg(i8* %92, i32 0, i8* %93)
  %95 = load i8*, i8** %3, align 8
  %96 = load i8*, i8** @buf, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* @used, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @used, align 4
  %104 = load i8*, i8** @buf, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* @used, align 4
  %107 = call i32 @memmove(i8* %104, i8* %105, i32 %106)
  store i32 1, i32* %1, align 4
  br label %5

108:                                              ; preds = %69, %11
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @sysfail(i8*, i64) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @process_optarg(i8*, i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
