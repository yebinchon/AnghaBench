; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_createSentinelAddr.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_createSentinelAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @createSentinelAddr(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @NET_IP_STR_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = trunc i64 %11 to i32
  %24 = call i64 @anetResolve(i32* null, i8* %22, i8* %13, i32 %23)
  %25 = load i64, i64* @ANET_ERR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

29:                                               ; preds = %21
  %30 = call %struct.TYPE_4__* @zmalloc(i32 8)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %8, align 8
  %31 = call i32 @sdsnew(i8* %13)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %29, %27, %19
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @anetResolve(i32*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_4__* @zmalloc(i32) #2

declare dso_local i32 @sdsnew(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
