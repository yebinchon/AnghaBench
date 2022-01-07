; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistIndex.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_END = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ziplistIndex(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @ZIPLIST_ENTRY_TAIL(i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @ZIP_END, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %10
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ZIP_DECODE_PREVLEN(i8* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %37, %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = icmp ne i32 %32, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = zext i32 %38 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ZIP_DECODE_PREVLEN(i8* %43, i32 %44, i32 %45)
  br label %28

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %10
  br label %73

49:                                               ; preds = %2
  %50 = load i8*, i8** %3, align 8
  %51 = call i8* @ZIPLIST_ENTRY_HEAD(i8* %50)
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %66, %49
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @ZIP_END, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %4, align 4
  %63 = icmp ne i32 %61, 0
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi i1 [ false, %52 ], [ %63, %60 ]
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @zipRawEntryLength(i8* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %5, align 8
  br label %52

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @ZIP_END, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %73
  br label %87

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i8* [ null, %84 ], [ %86, %85 ]
  ret i8* %88
}

declare dso_local i8* @ZIPLIST_ENTRY_TAIL(i8*) #1

declare dso_local i32 @ZIP_DECODE_PREVLEN(i8*, i32, i32) #1

declare dso_local i8* @ZIPLIST_ENTRY_HEAD(i8*) #1

declare dso_local i32 @zipRawEntryLength(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
