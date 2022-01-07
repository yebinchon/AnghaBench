; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"read error: %s\00", align 1
@WSAEMSGSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_Read(i32* noalias %0, i32 %1, i8* noalias %2, i64 %3) #0 {
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

12:                                               ; preds = %70, %4
  %13 = call i64 (...) @vlc_killed()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 (...) @vlc_testcancel()
  %17 = load i64, i64* @EINTR, align 8
  store i64 %17, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %76

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @vlc_recv_i11e(i32 %19, i8* %20, i64 %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EAGAIN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %70

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @vlc_strerror_c(i64 %36)
  %38 = call i32 @msg_Err(i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ -1, %44 ]
  store i32 %46, i32* %5, align 4
  br label %76

47:                                               ; preds = %18
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %73

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %55, %33
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %12, label %73

73:                                               ; preds = %70, %54
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %45, %15
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i32 @vlc_recv_i11e(i32, i8*, i64, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
