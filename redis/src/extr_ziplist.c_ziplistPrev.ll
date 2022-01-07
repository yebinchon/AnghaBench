; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistPrev.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_END = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ziplistPrev(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @ZIP_END, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @ZIPLIST_ENTRY_TAIL(i8* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @ZIP_END, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %28

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i8* [ null, %25 ], [ %27, %26 ]
  store i8* %29, i8** %3, align 8
  br label %50

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @ZIPLIST_ENTRY_HEAD(i8* %32)
  %34 = icmp eq i8* %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %50

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ZIP_DECODE_PREVLEN(i8* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ugt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %36, %35, %28
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i8* @ZIPLIST_ENTRY_TAIL(i8*) #1

declare dso_local i8* @ZIPLIST_ENTRY_HEAD(i8*) #1

declare dso_local i32 @ZIP_DECODE_PREVLEN(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
