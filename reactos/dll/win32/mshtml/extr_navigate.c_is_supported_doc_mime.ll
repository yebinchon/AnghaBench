; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_is_supported_doc_mime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_is_supported_doc_mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Gecko-Content-Viewers\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"@mozilla.org/content/document-loader-factory;1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_supported_doc_mime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_supported_doc_mime(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @heap_strdupWtoA(i32* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @get_nscategory_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @heap_free(i8* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @nsfree(i8* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i8* @heap_strdupWtoA(i32*) #1

declare dso_local i8* @get_nscategory_entry(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @nsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
