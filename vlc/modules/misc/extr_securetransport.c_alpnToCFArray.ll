; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_alpnToCFArray.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_alpnToCFArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeArrayCallBacks = common dso_local global i32 0, align 4
@kCFStringEncodingASCII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**)* @alpnToCFArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alpnToCFArray(i8** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i32, i32* @kCFAllocatorDefault, align 4
  %8 = call i32* @CFArrayCreateMutable(i32 %7, i32 0, i32* @kCFTypeArrayCallBacks)
  store i32* %8, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i8**, i8*** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load i32, i32* @kCFAllocatorDefault, align 4
  %17 = load i8**, i8*** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @kCFStringEncodingASCII, align 4
  %22 = call i32* @CFStringCreateWithCString(i32 %16, i8* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @CFRelease(i32* %26)
  store i32* null, i32** %2, align 8
  br label %39

28:                                               ; preds = %15
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @CFArrayAppendValue(i32* %29, i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @CFRelease(i32* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %9

37:                                               ; preds = %9
  %38 = load i32*, i32** %4, align 8
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32* @CFArrayCreateMutable(i32, i32, i32*) #1

declare dso_local i32* @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @CFArrayAppendValue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
