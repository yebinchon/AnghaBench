; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_getBitfieldTypeFromArgument.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_getBitfieldTypeFromArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [93 x i8] c"Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is.\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getBitfieldTypeFromArgument(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 105
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  store i32 1, i32* %22, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 117
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  store i32 0, i32* %30, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @addReplyError(i32* %32, i8* %33)
  %35 = load i32, i32* @C_ERR, align 4
  store i32 %35, i32* %5, align 4
  br label %72

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i32 @strlen(i8* %41)
  %43 = call i64 @string2ll(i8* %39, i32 %42, i64* %12)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %46, 1
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = icmp sgt i64 %53, 64
  br i1 %54, label %62, label %55

55:                                               ; preds = %52, %48
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = icmp sgt i64 %60, 63
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %52, %45, %37
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @addReplyError(i32* %63, i8* %64)
  %66 = load i32, i32* @C_ERR, align 4
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %59, %55
  %68 = load i64, i64* %12, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @C_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %62, %31
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @addReplyError(i32*, i8*) #1

declare dso_local i64 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
