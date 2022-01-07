; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_list_to_string.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_list_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_to_string.buf = internal global [4096 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @list_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @list_to_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @list_to_string.buf, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @list_to_string.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @list_to_string.buf, i64 0, i64 0), i8** %2, align 8
  br label %51

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @IXMLDOMNodeList_get_length(i32* %14, i32* %5)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %46, %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i8 32, i8* %30, align 1
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @IXMLDOMNodeList_nextNode(i32* %33, i32** %8)
  %35 = call i32 @ole_check(i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @node_to_string(i32* %36, i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %4, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @IXMLDOMNode_Release(i32* %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i8*, i8** %4, align 8
  store i8 0, i8* %50, align 1
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @list_to_string.buf, i64 0, i64 0), i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %11
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @ole_check(i32) #1

declare dso_local i32 @IXMLDOMNodeList_nextNode(i32*, i32**) #1

declare dso_local i32 @node_to_string(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
