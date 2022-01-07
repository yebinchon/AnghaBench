; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_xorshift128init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_xorshift128init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @xorshift128init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xorshift128init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  store i64 8, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @fstat(i32 %15, %struct.stat* %7)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISCHR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @read(i32 %24, i32* %25, i64 8)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %23, %18, %14
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %66

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %1
  store i32 -1831433054, i32* %4, align 4
  %35 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %62, %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 13
  %48 = xor i32 %45, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 17
  %52 = xor i32 %49, %51
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 5
  %56 = xor i32 %53, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65, %32
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
