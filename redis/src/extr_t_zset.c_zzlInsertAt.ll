; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlInsertAt.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlInsertAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPLIST_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlInsertAt(i8* %0, i8* %1, i64 %2, double %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store double %3, double* %8, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %14 = load double, double* %8, align 8
  %15 = call i32 @d2string(i8* %13, i32 128, double %14)
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @sdslen(i64 %22)
  %24 = load i32, i32* @ZIPLIST_TAIL, align 4
  %25 = call i8* @ziplistPush(i8* %19, i8* %21, i32 %23, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ZIPLIST_TAIL, align 4
  %30 = call i8* @ziplistPush(i8* %26, i8* %27, i32 %28, i32 %29)
  store i8* %30, i8** %5, align 8
  br label %58

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @sdslen(i64 %41)
  %43 = call i8* @ziplistInsert(i8* %37, i8* %38, i8* %40, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @ziplistNext(i8* %47, i8* %48)
  store i8* %49, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @serverAssert(i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @ziplistInsert(i8* %53, i8* %54, i8* %55, i32 %56)
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %31, %18
  %59 = load i8*, i8** %5, align 8
  ret i8* %59
}

declare dso_local i32 @d2string(i8*, i32, double) #1

declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
