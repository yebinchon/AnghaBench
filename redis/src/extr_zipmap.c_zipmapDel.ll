; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapDel.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPMAP_BIGLEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zipmapDel(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @zipmapLookupRaw(i8* %12, i8* %13, i32 %14, i32* %9)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @zipmapRawEntryLength(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = add nsw i64 %35, 1
  %37 = sub nsw i64 %27, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memmove(i8* %21, i8* %25, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %41, %42
  %44 = call i8* @zipmapResize(i8* %40, i32 %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @ZIPMAP_BIGLEN, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %18
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = add i8 %55, -1
  store i8 %56, i8* %54, align 1
  br label %57

57:                                               ; preds = %52, %18
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  br label %69

63:                                               ; preds = %4
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) #1

declare dso_local i32 @zipmapRawEntryLength(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i8* @zipmapResize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
