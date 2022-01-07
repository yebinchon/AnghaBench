; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sds.c_sdsRemoveFreeSpace.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sds.c_sdsRemoveFreeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_8 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sdsRemoveFreeSpace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @SDS_TYPE_MASK, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = call i32 @sdsHdrSize(i8 signext %20)
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @sdslen(i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @sdsavail(i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %4, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** %2, align 8
  br label %105

35:                                               ; preds = %1
  %36 = load i64, i64* %10, align 8
  %37 = call signext i8 @sdsReqType(i64 %36)
  store i8 %37, i8* %6, align 1
  %38 = load i8, i8* %6, align 1
  %39 = call i32 @sdsHdrSize(i8 signext %38)
  store i32 %39, i32* %8, align 4
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @SDS_TYPE_8, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %45, %35
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i8* @s_realloc(i8* %52, i32 %58)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i8* null, i8** %2, align 8
  br label %105

63:                                               ; preds = %51
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %3, align 8
  br label %100

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  %73 = add i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = call i8* @s_malloc(i32 %74)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i8* null, i8** %2, align 8
  br label %105

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  %87 = call i32 @memcpy(i8* %83, i8* %84, i64 %86)
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @s_free(i8* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8* %93, i8** %3, align 8
  %94 = load i8, i8* %6, align 1
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  store i8 %94, i8* %96, align 1
  %97 = load i8*, i8** %3, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @sdssetlen(i8* %97, i64 %98)
  br label %100

100:                                              ; preds = %79, %63
  %101 = load i8*, i8** %3, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @sdssetalloc(i8* %101, i64 %102)
  %104 = load i8*, i8** %3, align 8
  store i8* %104, i8** %2, align 8
  br label %105

105:                                              ; preds = %100, %78, %62, %33
  %106 = load i8*, i8** %2, align 8
  ret i8* %106
}

declare dso_local i32 @sdsHdrSize(i8 signext) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @sdsavail(i8*) #1

declare dso_local signext i8 @sdsReqType(i64) #1

declare dso_local i8* @s_realloc(i8*, i32) #1

declare dso_local i8* @s_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @s_free(i8*) #1

declare dso_local i32 @sdssetlen(i8*, i64) #1

declare dso_local i32 @sdssetalloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
