; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Write.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"write error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_Write(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %71, %4
  %13 = call i64 (...) @vlc_killed()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 (...) @vlc_testcancel()
  %17 = load i64, i64* @EINTR, align 8
  store i64 %17, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %77

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @MSG_NOSIGNAL, align 4
  %23 = call i32 @vlc_send_i11e(i32 %19, i8* %20, i64 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINTR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EAGAIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  br label %71

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @errno, align 8
  %38 = call i32 @vlc_strerror_c(i64 %37)
  %39 = call i32 @msg_Err(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ -1, %45 ]
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %18
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %52, %34
  %72 = load i64, i64* %9, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %12, label %74

74:                                               ; preds = %71, %51
  %75 = load i64, i64* %10, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %46, %15
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i32 @vlc_send_i11e(i32, i8*, i64, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
