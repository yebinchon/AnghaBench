; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_rand.c_vlc_rand_init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_rand.c_vlc_rand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@okey = common dso_local global i32* null, align 8
@ikey = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vlc_rand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_rand_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @BLOCK_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @vlc_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %64

17:                                               ; preds = %0
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i64, i64* %5, align 8
  %20 = mul nuw i64 4, %9
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %11, i64 %24
  %26 = mul nuw i64 4, %9
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @read(i32 %23, i32* %25, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %22
  br label %18

38:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i64, i64* %7, align 8
  %41 = mul nuw i64 4, %9
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %11, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, 92
  %48 = load i32*, i32** @okey, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %11, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 54
  %55 = load i32*, i32** @ikey, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %39

61:                                               ; preds = %39
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @vlc_close(i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %16
  %65 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vlc_open(i8*, i32) #2

declare dso_local i64 @read(i32, i32*, i32) #2

declare dso_local i32 @vlc_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
